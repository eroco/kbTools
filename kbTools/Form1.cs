using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.Json;
using System.IO;

namespace kbTools
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }        

        private void Form1_DragEnter(object sender, DragEventArgs e)
        {
            Console.WriteLine("OnDragEnter Form");

            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                e.Effect = DragDropEffects.Copy;
            else
                e.Effect = DragDropEffects.None;
        }

        private void panel1_DragEnter(object sender, DragEventArgs e)
        {
            Console.WriteLine("OnDragEnter Panel1");

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
                        Console.WriteLine(filePath);
                        CleanName(filePath);
                    }
                }
            }
        }

        private void panel2_DragEnter(object sender, DragEventArgs e)
        {
            Console.WriteLine("OnDragEnter Panel2");

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
                        Console.WriteLine(filePath);
                        RenameMonth(filePath);
                    }
                        
                }
            }

        }

        private void panel3_DragEnter(object sender, DragEventArgs e)
        {
            Console.WriteLine("OnDragEnter Panel3");

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
                        AddMusicExtension(filePath);
                        Console.WriteLine(filePath); 
                    }
                        
                }
            }
        }


        private void panel4_DragEnter(object sender, DragEventArgs e)
        {
            Console.WriteLine("OnDragEnter Panel4");

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
                        Console.WriteLine(filePath);
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
                //Console.WriteLine(mytag.id_tag + " <" + mytag.input_tag + "> <" + mytag.output_tag + ">");
                if (oldName.Contains(mytag.input_tag))
                {
                    oldName = oldName.Replace(mytag.input_tag, mytag.output_tag);
                    Console.WriteLine(mytag.id_tag + " <" + mytag.input_tag + "> <" + mytag.output_tag + ">" + " --> " + oldName);
                }

            }
            if (!oldName.Equals(origName))
            {
                Console.WriteLine(Filename + " --> " + oldPath + "\\" + oldName);
                if (File.Exists(Filename))
                {
                    File.Move(Filename, oldPath + "\\" + oldName);
                    Console.WriteLine("rename file");
                }
                else
                {
                    Directory.Move(Filename, oldPath + "\\" + oldName);
                    Console.WriteLine("Rename Folder");
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
                    Console.WriteLine(Filename + " --> " + origPath + newName);
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
}
