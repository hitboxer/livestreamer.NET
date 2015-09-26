namespace livestreamer.NET.Configuration
{
    using System;
    using System.Collections.ObjectModel;

    public class Config
    {
        public string SelectedStreamQualityOption { get; set; }

        public bool SelectedChatOption { get; set; }

        public ObservableCollection<String> History { get; set; }
    }
}