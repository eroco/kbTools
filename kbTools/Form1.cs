using System;
using System.Collections.Generic;
using System.Windows.Forms;
using System.Text.Json;
using System.IO;
using System.IO.Hashing;
using log4net.Config;
using log4net;
using System.Reflection;

namespace kbTools
{
    public partial class Form1 : Form
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(Form));

        public Form1()
        {
            InitializeComponent();

            var logRepository = LogManager.GetRepository(Assembly.GetEntryAssembly());
            XmlConfigurator.Configure(logRepository, new FileInfo("log4net.config"));

        }

        private void Form1_DragEnter(object sender, DragEventArgs e)
        {
            log.Info("OnDragEnter Form");

            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                e.Effect = DragDropEffects.Copy;
            else
                e.Effect = DragDropEffects.None;
        }

        private void panel1_DragEnter(object sender, DragEventArgs e)
        {
            log.Info("OnDragEnter Panel1");

            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                e.Effect = DragDropEffects.Copy;
            else
                e.Effect = DragDropEffects.None;
        }

        private void panel1_DragDrop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                string[] filePaths = e.Data.GetData(DataFormats.FileDrop) as string[];
                if (filePaths != null && filePaths.Length > 0)
                {
                    foreach (string filePath in filePaths)
                    {
                        log.Info("Clean Filename:" + filePath);
                        CleanName(filePath);
                    }
                }
            }
        }

        private void panel2_DragEnter(object sender, DragEventArgs e)
        {
            log.Info("OnDragEnter Panel2");

            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                e.Effect = DragDropEffects.Copy;
            else
                e.Effect = DragDropEffects.None;

        }

        private void panel2_DragDrop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                string[] filePaths = e.Data.GetData(DataFormats.FileDrop) as string[];
                if (filePaths != null && filePaths.Length > 0)
                {
                    foreach (string filePath in filePaths)
                    {
                        RenameMonth(filePath);
                    }
                        
                }
            }

        }

        private void panel3_DragEnter(object sender, DragEventArgs e)
        {
            log.Info("OnDragEnter Panel3");

            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                e.Effect = DragDropEffects.Copy;
            else
                e.Effect = DragDropEffects.None;

        }

        private void panel3_DragDrop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                string[] filePaths = e.Data.GetData(DataFormats.FileDrop) as string[];
                if (filePaths != null && filePaths.Length > 0)
                {
                    foreach (string filePath in filePaths)
                    {
                        log.Info("File to Addm Music extension:" + filePath);
                        AddMusicExtension(filePath);
                    }
                        
                }
            }
        }


        private void panel4_DragEnter(object sender, DragEventArgs e)
        {
            log.Info("OnDragEnter Panel4");

            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                e.Effect = DragDropEffects.Copy;
            else
                e.Effect = DragDropEffects.None;
        }

        private void panel4_DragDrop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                string[] filePaths = e.Data.GetData(DataFormats.FileDrop) as string[];
                if (filePaths != null && filePaths.Length > 0)
                {
                    foreach (string filePath in filePaths)
                    {
                        log.Info("Folder to renumering files:" + filePath);
                        ReNumbering(filePath);
                    }

                }
            }
        }

        private void cmdExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void CleanName(string Filename)
        {
            RESTClient rClient = new RESTClient();

            rClient.endPoint = "http://api_kbtools/tags.php";

            string strJSON = string.Empty;

            strJSON = rClient.makeRequest();
            List<tag> tags = JsonSerializer.Deserialize<List<tag>>(strJSON);

            string oldName = Filename.Substring(Filename.LastIndexOf("\\") + 1, Filename.Length - Filename.LastIndexOf("\\") - 1);
            string origName = oldName;
            string oldPath = Filename.Substring(0, Filename.LastIndexOf("\\"));

            foreach (tag mytag in tags)
            {
                if (oldName.Contains(mytag.input_tag))
                {
                    oldName = oldName.Replace(mytag.input_tag, mytag.output_tag);
                }

            }
            if (!oldName.Equals(origName))
            {
                if (File.Exists(Filename))
                {
                    File.Move(Filename, oldPath + "\\" + oldName);
                }
                else
                {
                    Directory.Move(Filename, oldPath + "\\" + oldName);
                }
            }

        }

        private void RenameMonth(string Filename)
        {
            RESTClient rClient = new RESTClient();

            rClient.endPoint = "http://api_kbtools/month.php";

            string strJSON = string.Empty;

            strJSON = rClient.makeRequest();
            List<month> months = JsonSerializer.Deserialize<List<month>>(strJSON);

            string newName = Filename.Substring(Filename.LastIndexOf("\\") + 1, Filename.Length - Filename.LastIndexOf("\\") - 1);
            string origName = newName;
            string origPath = Filename.Substring(0, Filename.LastIndexOf("\\") + 1);

            foreach (month mymonth in months)
            {
                if (newName.Contains(mymonth.name_month))
                {
                    newName = newName.Replace(mymonth.name_month + " ", "");
                    string sExtension = "-" + mymonth.pos_month + newName.Substring(newName.LastIndexOf("."), Filename.Length - Filename.LastIndexOf("."));
                    newName = newName.Replace(newName.Substring(newName.LastIndexOf("."), Filename.Length - Filename.LastIndexOf(".")), sExtension);
                    File.Move(Filename, origPath + newName);
                }
            }
        }

        private void AddMusicExtension(string FilePath)
        {
            RESTClient rClient = new RESTClient();

            rClient.endPoint = "http://api_kbtools/music.php";

            string sJSON = string.Empty;

            sJSON = rClient.makeRequest();

            List<musicExt> musicEXts = JsonSerializer.Deserialize<List<musicExt>>(sJSON);

            DirectoryInfo folder = new DirectoryInfo(FilePath);

            FileInfo[] Files = folder.GetFiles("*.*");
            string strExtToAssign = string.Empty;

            foreach (FileInfo file in Files)
            {
                string sExt = file.Extension.Substring(1, file.Extension.Length - 1);
                foreach (musicExt mExt in musicEXts)
                {
                    if (sExt.Contains(mExt.ext_music.ToLower()))
                    {
                        strExtToAssign = "[" + mExt.ext_music + "]";
                    }
                }
            }
            if (strExtToAssign.Length > 0)
            {
                Directory.Move(FilePath, FilePath + " " + strExtToAssign);
            }
        }

        private void ReNumbering(string FilePath)
        {
            int iPos = 0;
            int iMaxNumber = 0;
            int iLength = 0;

            string[] files = Directory.GetFiles(FilePath, "*.*");
            string newFile = string.Empty;
            
            foreach(string file in files)
            {
                newFile = file.Substring(file.LastIndexOf("\\")+1, file.Length - file.LastIndexOf("\\")-1);
                iPos = newFile.IndexOf(" ");
                int iNumber = int.Parse(newFile.Substring(0, iPos));
                if (iNumber > iMaxNumber) iMaxNumber = iNumber;
            }

            iLength = iMaxNumber.ToString().Length;

            foreach(string file in files)
            {
                string NewName = file.Substring(file.LastIndexOf("\\") + 1, file.Length - file.LastIndexOf("\\") - 1);
                iPos = NewName.IndexOf(" ");
                string iNumber = NewName.Substring(0, iPos);
                while (iLength > iNumber.ToString().Length)
                {
                    NewName = "0" + NewName;
                    iPos = NewName.IndexOf(" ");
                    iNumber = NewName.Substring(0, iPos);
                }
                File.Move(file, FilePath + "\\" + NewName);
            }
        }

        private static uint CalculateFileCrc32(string filePath)
        {
            // Asegúrate de que el archivo existe
            if (!File.Exists(filePath))
            {
                throw new FileNotFoundException($"El archivo no se encontró: {filePath}");
            }

            // Crea una instancia de Crc32
            Crc32 crc32 = new Crc32();

            // Abre el archivo para lectura
            using (FileStream stream = File.OpenRead(filePath))
            {
                // Calcula el hash (CRC) del flujo de datos
                // Para versiones más antiguas de .NET, puede que necesites usar un buffer
                // o una implementación personalizada como la de Stack Overflow [13].
                crc32.Append(stream);

                return crc32.GetCurrentHashAsUInt32();
                //Span<byte> hash = crc32.GetHashAndReset();

                // Convierte los bytes del hash a un entero sin signo (uint)
                // Asegúrate del orden de bytes (Little Endian es común para CRC32) [10].
                //return BitConverter.ToInt64(hash);
            }
        }

        private void btnCRC_Click(object sender, EventArgs e)
        {
            RESTClient rClient = new RESTClient();

            rClient.endPoint = "http://api_kbtools/hexa.php";

            string sJSON = string.Empty;

            sJSON = rClient.makeRequest();

            List<Hexa> ListhexaValues = JsonSerializer.Deserialize<List<Hexa>>(sJSON);

            folderBrowserDialog.Description = "Select folder to Clean Trash";
            folderBrowserDialog.ShowNewFolderButton = false;

            DialogResult result = folderBrowserDialog.ShowDialog();

            if (result == DialogResult.OK)
            {
                string FilePath = folderBrowserDialog.SelectedPath;
                CleanPath(FilePath, ListhexaValues);
            }


        }

        private void CleanPath(string FilePath, List<Hexa> ListHexaValues)
        {
            string[] files = Directory.GetFiles(FilePath, "*.*");

            foreach (string file in files)
            {
                uint iCRC = CalculateFileCrc32(file);
                foreach (Hexa hexa in ListHexaValues)
                {
                    if (iCRC.ToString("X") == hexa.valueHexa)
                    {
                        log.Info("File to Erase:" + file);
                        try
                        {
                            File.Delete(file);
                        }
                        catch (Exception ex)
                        {
                            log.Fatal("Error Deleteing File:" + file + " (" + ex.Message + ")");
                        }
                        
                        break;
                    }
                }
            }

            string[] folders = Directory.GetDirectories(FilePath);
            foreach (string folder in folders)
            {
                CleanPath(folder, ListHexaValues);
            }
        }
    }

    public class tag
    {
        public string id_tag { get; set; }
        public string input_tag { get; set; }
        public string output_tag { get; set; }
    }

    public class month
    {
        public string id_month { get; set; }
        public string pos_month { get; set; }
        public string name_month { get; set; }
    }

    public class musicExt
    {
        public string id_music { get; set; }
        public string ext_music { get; set; }
    }

    public class Hexa
    {
        public string idhexa { get; set; }
        public string valueHexa { get; set; }
    }
}
