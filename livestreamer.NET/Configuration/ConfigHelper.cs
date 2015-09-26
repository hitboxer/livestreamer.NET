namespace livestreamer.NET.Configuration
{
    using System;
    using System.IO;
    using System.Xml.Serialization;

    public sealed class ConfigHelper
    {
        public static string ConfigPath
        {
            get { return Path.Combine(Environment.CurrentDirectory, "Config.xml"); }
        }

        public static void SaveConfig<T>(object t)
        {
            var serializer = new XmlSerializer(typeof (T));
            using (var writer = new StreamWriter(ConfigPath))
                serializer.Serialize(writer, t);
        }

        public static T LoadConfig<T>()
        {
            if (!new FileInfo(ConfigPath).Exists) throw new FileNotFoundException(ConfigPath);
            var serializer = new XmlSerializer(typeof (T));
            using (var reader = new StreamReader(ConfigPath))
                return (T) serializer.Deserialize(reader);
        }
    }
}