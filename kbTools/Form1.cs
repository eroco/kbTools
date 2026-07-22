using System;
using System.Collections.Generic;
using System.Configuration;
using System.Windows.Forms;
using System.Text.Json;
using System.IO;
using System.IO.Hashing;
using log4net.Config;
using log4net;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Threading;
using System.Globalization;
using System.Linq;

namespace kbTools
{
    public partial class Form1 : Form
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(Form));
        private int progessbar = 0;
        string Language = ConfigurationManager.AppSettings["Language"];

        [Flags]
        public enum RecycleFlags : uint
        {
            SHERB_NOCONFIRMATION = 0x00000001,
            SHERB_NOPROGRESSUI = 0x00000002,
            SHERB_NOSOUND = 0x00000004
        }

        [DllImport("Shell32.dll", CharSet = CharSet.Unicode)]
        public static extern uint SHEmptyRecycleBin(IntPtr hwnd, string pszRootPath, RecycleFlags dwFlags);


        public Form1()
        {
            InitializeComponent();

            var logRepository = LogManager.GetRepository(Assembly.GetEntryAssembly());
            XmlConfigurator.Configure(logRepository, new FileInfo("log4net.config"));

            Thread.CurrentThread.CurrentCulture = new CultureInfo(Language);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(Language);
            SetLanguage();

        }

        public delegate void updatebar();

        private void Form1_DragEnter(object sender, DragEventArgs e)
        {
            log.Info("OnDragEnter Form");

            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                e.Effect = DragDropEffects.Copy;
            else
                e.Effect = DragDropEffects.None;
        }

        #region Clean filenames - Drag & Drop Panels

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
                if (e.Data.GetData(DataFormats.FileDrop) is string[] filePaths && filePaths.Length > 0)
                {
                    SetStatusBarText(Idiomas.Limpieza);
                    
                    foreach (string filePath in filePaths)
                    {
                        log.Info("Clean Filename:" + filePath);
                        FileAttributes attr = File.GetAttributes(filePath);
                        if (chkRecursive.Checked & ((attr & FileAttributes.Directory) == FileAttributes.Directory))
                        {
                            string[] files = Directory.GetFiles(filePath, "*.*");
                            foreach (string file in files)
                            {
                                CleanName(file);
                            }
                        }
                        CleanName(filePath);

                    }
                }
                SetStatusBarText(Idiomas.Listo);
            }
        }

        #endregion

        #region Change Month Name - Drag & Drop Panels

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
                if (e.Data.GetData(DataFormats.FileDrop) is string[] filePaths && filePaths.Length > 0)
                {
                    SetStatusBarText(Idiomas.CorrigiendoMeses);
                    foreach (string filePath in filePaths)
                    {
                        RenameMonth(filePath);
                    }

                }
                SetStatusBarText(Idiomas.Listo);
            }

        }

        #endregion

        #region Append Filetype to Folder name - Drag & Drop Panels

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
                if (e.Data.GetData(DataFormats.FileDrop) is string[] filePaths && filePaths.Length > 0)
                {
                    SetStatusBarText(Idiomas.ExtensionMusica);
                    foreach (string filePath in filePaths)
                    {
                        log.Info("File to Add Music extension:" + filePath);
                        AddMusicExtension(filePath);
                    }

                }
                SetStatusBarText(Idiomas.Listo);
            }
        }

        #endregion

        #region Renumering filenames in folder - Drag & Drop Panels

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
                if (e.Data.GetData(DataFormats.FileDrop) is string[] filePaths && filePaths.Length > 0)
                {
                    SetStatusBarText(Idiomas.Renumeracion);
                    foreach (string filePath in filePaths)
                    {
                        log.Info("Folder to renumering files:" + filePath);
                        ReNumbering(filePath);
                    }

                }
                SetStatusBarText(Idiomas.Listo);
            }
        }

        #endregion

        #region Delete files acording to CRC - Drag & Drop Panel

        private void panel5_DragEnter(object sender, DragEventArgs e)
        {
            log.Info("OnDragEnter CRC");

            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                e.Effect = DragDropEffects.Copy;
            else
                e.Effect = DragDropEffects.None;
        }

        private void panel5_DragDrop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                if (e.Data.GetData(DataFormats.FileDrop) is string[] filePaths && filePaths.Length > 0)
                {
                    SetStatusBarText(Idiomas.LimpiezaCarpetas);
                    foreach (string filePath in filePaths)
                    {
                        log.Info("Folder to clean:" + filePath);

                        RESTClient rClient = new RESTClient
                        {
                            endPoint = "http://api_kbtools/hexa.php"
                        };

                        string sJSON = string.Empty;

                        sJSON = rClient.makeRequest();

                        List<Hexa> ListhexaValues = JsonSerializer.Deserialize<List<Hexa>>(sJSON);

                        ProgressBarVisble(true);
                        CleanPath(filePath, ListhexaValues);
                        if (CheckEmptinessFolder(filePath))
                        {
                            Directory.Delete(filePath);
                        }
                        ProgressBarVisble(false);

                    }

                }
                SetStatusBarText(Idiomas.Listo);

            }
        }

        #endregion


        private void cmdExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void CleanName(string Filename)
        {
            RESTClient rClient = new RESTClient
            {
                endPoint = "http://api_kbtools/tags.php"
            };

            string strJSON = string.Empty;

            strJSON = rClient.makeRequest();
            List<Tag> tags = JsonSerializer.Deserialize<List<Tag>>(strJSON);

            string oldName = Filename.Substring(Filename.LastIndexOf("\\") + 1, Filename.Length - Filename.LastIndexOf("\\") - 1);
            string origName = oldName;
            string oldPath = Filename.Substring(0, Filename.LastIndexOf("\\"));

            foreach (Tag mytag in tags)
            {
                if (oldName.Contains(mytag.Input_Tag))
                {
                    oldName = oldName.Replace(mytag.Input_Tag, mytag.Output_Tag);
                }

            }
            if (!oldName.Equals(origName))
            {
                try
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
                catch (Exception ex)
                {
                    SetStatusBarText("Error: " + ex.Message, 2300);
                }
            }

        }

        private void RenameMonth(string Filename)
        {
            RESTClient rClient = new RESTClient
            {
                endPoint = "http://api_kbtools/month.php"
            };

            string strJSON = string.Empty;

            strJSON = rClient.makeRequest();
            List<Month> months = JsonSerializer.Deserialize<List<Month>>(strJSON);

            string newName = Filename.Substring(Filename.LastIndexOf("\\") + 1, Filename.Length - Filename.LastIndexOf("\\") - 1);
            string origName = newName;
            string origPath = Filename.Substring(0, Filename.LastIndexOf("\\") + 1);

            foreach (Month mymonth in months)
            {
                if (newName.Contains(mymonth.Name_Month))
                {
                    newName = newName.Replace(mymonth.Name_Month + " ", "");
                    string sExtension = "-" + mymonth.Pos_Month + newName.Substring(newName.LastIndexOf("."), Filename.Length - Filename.LastIndexOf("."));
                    newName = newName.Replace(newName.Substring(newName.LastIndexOf("."), Filename.Length - Filename.LastIndexOf(".")), sExtension);
                    File.Move(Filename, origPath + newName);
                }
            }
        }

        private void AddMusicExtension(string FilePath)
        {
            RESTClient rClient = new RESTClient
            {
                endPoint = "http://api_kbtools/music.php"
            };

            string sJSON = string.Empty;

            sJSON = rClient.makeRequest();

            List<MusicExt> musicEXts = JsonSerializer.Deserialize<List<MusicExt>>(sJSON);

            DirectoryInfo folder = new DirectoryInfo(FilePath);

            FileInfo[] Files = folder.GetFiles("*.*");
            string strExtToAssign = string.Empty;
            string strExt = string.Empty;

            foreach (FileInfo file in Files)
            {
                string sExt = file.Extension.Substring(1, file.Extension.Length - 1);
                foreach (MusicExt mExt in musicEXts)
                {
                    if (sExt.Contains(mExt.Ext_Music.ToLower()))
                    {
                        strExtToAssign = "[" + mExt.Ext_Music + "]";
                        strExt = mExt.Ext_Music;
                    }
                }
            }
            if (strExtToAssign.Length > 0)
            {
                if (FilePath.Contains(strExt) & !FilePath.Contains(strExtToAssign))
                {
                    string strTemp = FilePath.Substring(0, FilePath.IndexOf(strExt)-1) + " " + strExtToAssign;
                    Directory.Move(FilePath, strTemp);
                }
                else if(!FilePath.Contains(strExtToAssign))
                {
                    Directory.Move(FilePath, FilePath + " " + strExtToAssign);
                }
                
            }
        }

        private void ReNumbering(string FilePath)
        {
            ReNumberingFiles(FilePath);

            ReNumberingFolders(FilePath);
        }

        private void ReNumberingFiles(string FilePath)
        {
            int iPos = 0;
            int iMaxNumber = 0;
            int iLength = 0;

            string[] files = Directory.GetFiles(FilePath, "*.*");
            string newFile = string.Empty;

            try
            {
                foreach (char sep in string.Concat(".", " "))
                {
                    foreach (string file in files)
                    {
                        newFile = file.Substring(file.LastIndexOf("\\") + 1, file.Length - file.LastIndexOf("\\") - 1);
                        iPos = newFile.IndexOf(sep);
                        if (iPos >= 0)
                        {
                            int iNumber = int.Parse(newFile.Substring(0, iPos));
                            if (iNumber > iMaxNumber) iMaxNumber = iNumber;
                        }
                    }

                    iLength = iMaxNumber.ToString().Length;

                    foreach (string file in files)
                    {
                        string NewName = file.Substring(file.LastIndexOf("\\") + 1, file.Length - file.LastIndexOf("\\") - 1);
                        iPos = NewName.IndexOf(sep);
                        if (iPos >= 0)
                        {
                            string iNumber = NewName.Substring(0, iPos);
                            while (iLength > iNumber.ToString().Length)
                            {
                                NewName = "0" + NewName;
                                iPos = NewName.IndexOf(sep);
                                iNumber = NewName.Substring(0, iPos);
                            }
                            if (file != FilePath + "\\" + NewName)
                                File.Move(file, FilePath + "\\" + NewName);
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                SetStatusBarText(Idiomas.Error + ": " + ex.Message);
                SetStatusBarText(Idiomas.Listo);
            }

            
        }

        private void ReNumberingFolders(string FilePath)
        {
            int iPos = 0;
            int iMaxNumber = 0;
            int iLength = 0;

            string[] files = Directory.GetDirectories(FilePath, "*.*");
            string newFile = string.Empty;

            try
            {
                foreach (string file in files)
                {
                    newFile = file.Substring(file.LastIndexOf("\\") + 1, file.Length - file.LastIndexOf("\\") - 1);
                    iPos = newFile.IndexOf(" ");
                    int iNumber = int.Parse(newFile.Substring(0, iPos));
                    if (iNumber > iMaxNumber) iMaxNumber = iNumber;
                }

                iLength = iMaxNumber.ToString().Length;

                foreach (string file in files)
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
                    if (file != FilePath + "\\" + NewName)
                        Directory.Move(file, FilePath + "\\" + NewName);
                }

            }
            catch (Exception ex)
            {
                SetStatusBarText(Idiomas.Error + ": " + ex.Message,3000);
                SetStatusBarText(Idiomas.Listo);
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
  
        private void CleanPath(string FilePath, List<Hexa> ListHexaValues)
        {
            string[] files = Directory.GetFiles(FilePath, "*.*");

            foreach (string file in files)
            {
                ProgressBarSet();
                uint iCRC = CalculateFileCrc32(file);
                if (chkLogCRC32.Checked)
                {
                    log.Debug("File:" + file);
                    log.Debug("http://api_kbtools/addHexa.php?hexa='" + iCRC.ToString("X"));
                }

                foreach (Hexa hexa in ListHexaValues)
                {
                    if (iCRC.ToString("X") == hexa.ValueHexa)
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
                if (CheckEmptinessFolder(folder))
                {
                    Directory.Delete(folder);
                }
            }
        }

        private bool CheckEmptinessFolder(string FilePath)
        {
            var dInfo = new DirectoryInfo(FilePath);

            long sizeFolder = dInfo.EnumerateFiles("*", SearchOption.AllDirectories).Sum(fi => fi.Length);        

            if (sizeFolder == 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private void SetStatusBarText(string strText)
        {
            SetStatusBarText(strText, 1150);
        }

        private void SetStatusBarText(string strText, int milliSecond)
        {
            if (InvokeRequired)
            {
                this.Invoke((MethodInvoker)delegate {
                    SetStatusBarText(strText);
                    statusStrip.Refresh();
                    Thread.Sleep(milliSecond);
                });
            }
            else
            {
                toolStripStatusLabel.Text = strText;
                statusStrip.Refresh();
                Thread.Sleep(milliSecond);
            }

        }

        private void ProgressBarVisble(bool bVisible)
        {
            toolStripProgressBar.Visible = bVisible;
            toolStripProgressBar.Value = 50;
            statusStrip.Refresh();
        }

        private void ProgressBarSet()
        {
            progessbar += 10;
            toolStripProgressBar.Value = progessbar;
            statusStrip.Refresh();
            if (progessbar % 100 == 0) progessbar = 0;
            Thread.Sleep(100);
        }
        
        private void SetLanguage()
        {
            archivosToolStripMenuItem.Text = Idiomas.MenuArchivo;
            idiomasToolStripMenuItem.Text = Idiomas.MenuIdioma;
            españolToolStripMenuItem.Text = Idiomas.MenuEspañol;
            inglesToolStripMenuItem.Text = Idiomas.MenuIngles;
            salirToolStripMenuItem.Text = Idiomas.MenuSalir;
            cmdExit.Text = Idiomas.MenuSalir;
            switch (Language)
            {
                case "sp-CL":
                    españolToolStripMenuItem.Text = Idiomas.MenuEspañol + " \u2611" ;
                    break;
                case "en-US":
                    inglesToolStripMenuItem.Text = Idiomas.MenuIngles + " \u2611";
                    break;
            }
            chkRecursive.Text = Idiomas.Recursivo;
            cmdExit.Text = Idiomas.MenuSalir;
            btnEmptyRecycleBin.Text = Idiomas.Vaciar;
            SetStatusBarText(Idiomas.Listo);
        }

        private void EspañolToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo("sp-CL");
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("sp-CL");
            Language = "sp-CL";

            SetLanguage();
        }

        private void InglesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo("en-US");
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
            Language = "en-US";
            SetLanguage();
        }

        private void SalirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }

        private static void EmptyRecycleBin(IntPtr hwnd )
        {
            // Null pszRootPath empties all drives
            SHEmptyRecycleBin(hwnd, null, RecycleFlags.SHERB_NOCONFIRMATION |
                                          RecycleFlags.SHERB_NOPROGRESSUI |
                                          RecycleFlags.SHERB_NOSOUND);
        }

        private void BtnEmptyRecycleBin_Click(object sender, EventArgs e)
        {
            EmptyRecycleBin(this.Handle);
        }
    }

    #region Classes

    public class Tag
    {
        public string Id_Tag { get; set; }
        public string Input_Tag { get; set; }
        public string Output_Tag { get; set; }
    }

    public class Month
    {
        public string Id_Month { get; set; }
        public string Pos_Month { get; set; }
        public string Name_Month { get; set; }
    }

    public class MusicExt
    {
        public string Id_Music { get; set; }
        public string Ext_Music { get; set; }
    }

    public class Hexa
    {
        public string IdHexa { get; set; }
        public string ValueHexa { get; set; }
    }

    #endregion
}
