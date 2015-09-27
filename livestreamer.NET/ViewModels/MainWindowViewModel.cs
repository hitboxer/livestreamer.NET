namespace livestreamer.NET.ViewModels
{

    using System;
    using System.Collections.Generic;
    using System.Collections.ObjectModel;
    using System.Diagnostics;
    using System.IO;
    using System.Text;
    using System.Windows.Input;
    using Commands;
    using Configuration;

    internal class MainWindowViewModel : ViewModelBase
    {
        public MainWindowViewModel()
        {
            if (!File.Exists(ConfigHelper.ConfigPath))
            {
                ConfigHelper.SaveConfig<Config>(new Config
                    {
                        SelectedChatOption = false,
                        SelectedStreamQualityOption = "source"
                    });
                Configuration = ConfigHelper.LoadConfig<Config>();
            }
            else
            {
                Configuration = ConfigHelper.LoadConfig<Config>();
            }
            QualityOptions = new List<string> {"source", "high", "medium", "low", "mobile", "audio"};
            _selectedQualityOption = Configuration.SelectedStreamQualityOption;
            _openChat = Configuration.SelectedChatOption;
            History = Configuration.History;
            Watch = new RelayCommand(OnWatch, canExecute => !String.IsNullOrWhiteSpace(Stream));
            ClearHistory = new RelayCommand(OnClearHistory, canExecute => true);
        }

        private Config Configuration { get; set; }

        public List<String> QualityOptions { get; private set; }

        private String _selectedQualityOption;

        public String SelectedQualityOption
        {
            get { return _selectedQualityOption; }
            set
            {
                _selectedQualityOption = value;
                Configuration.SelectedStreamQualityOption = _selectedQualityOption;
                ConfigHelper.SaveConfig<Config>(Configuration);
            }
        }

        private bool _openChat;

        public bool OpenChat
        {
            get { return _openChat; }
            set
            {
                _openChat = value;
                Configuration.SelectedChatOption = _openChat;
                ConfigHelper.SaveConfig<Config>(Configuration);
            }
        }

        private ObservableCollection<string> _history;

        public ObservableCollection<String> History
        {
            get { return _history; }
            set
            {
                _history = value;
                OnPropertyChanged("History");
            }
        }

        private String _console;

        public String Console
        {
            get { return _console; }
            set
            {
                _console = value;
                OnPropertyChanged("Console");
            }
        }

        public String Stream { get; set; }

        public ICommand Watch { get; private set; }

        public ICommand ClearHistory { get; private set; }


        private void OnWatch(object parameter)
        {
            var cmd = new Process
                {
                    StartInfo =
                        new ProcessStartInfo("cmd.exe",
                                             "/c livestreamer" + " twitch.tv/" + Stream + " " + SelectedQualityOption)
                            {
                                RedirectStandardOutput = true,
                                CreateNoWindow = true,
                                UseShellExecute = false
                            }
                };
            var output = new StringBuilder();
            cmd.OutputDataReceived += (sender, args) =>
                {
                    output.AppendLine(args.Data);
                    Console = output.ToString();
                };
            cmd.Start();
            cmd.BeginOutputReadLine();
            if (OpenChat)
            {
                new Process
                    {
                        StartInfo =
                            new ProcessStartInfo("http://www.twitch.tv/chat/embed?channel=" + Stream +
                                                 "&popout_chat=true")
                    }.Start();
            }
            if (History.Contains(Stream)) return;
            History.Add(Stream);
            Configuration.History = History;
            ConfigHelper.SaveConfig<Config>(Configuration);
            cmd.WaitForExit();
        }

        private void OnClearHistory(object parameter)
        {
            History.Clear();
            Configuration.History = History;
            ConfigHelper.SaveConfig<Config>(Configuration);
        }
    }
}