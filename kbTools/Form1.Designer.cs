
namespace kbTools
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.cmdExit = new System.Windows.Forms.Button();
            this.folderBrowserDialog = new System.Windows.Forms.FolderBrowserDialog();
            this.statusStrip = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripProgressBar = new System.Windows.Forms.ToolStripProgressBar();
            this.panel5 = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.chkLogCRC32 = new System.Windows.Forms.CheckBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.archivosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.idiomasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.españolToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.inglesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripSeparator();
            this.salirToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.btnEmptyRecycleBin = new System.Windows.Forms.Button();
            this.chkRecursive = new System.Windows.Forms.CheckBox();
            this.statusStrip.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // cmdExit
            // 
            this.cmdExit.Location = new System.Drawing.Point(821, 141);
            this.cmdExit.Name = "cmdExit";
            this.cmdExit.Size = new System.Drawing.Size(75, 23);
            this.cmdExit.TabIndex = 4;
            this.cmdExit.Text = "Exit";
            this.cmdExit.UseVisualStyleBackColor = true;
            this.cmdExit.Click += new System.EventHandler(this.cmdExit_Click);
            // 
            // statusStrip
            // 
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel,
            this.toolStripProgressBar});
            this.statusStrip.Location = new System.Drawing.Point(0, 192);
            this.statusStrip.Name = "statusStrip";
            this.statusStrip.Size = new System.Drawing.Size(913, 22);
            this.statusStrip.TabIndex = 6;
            this.statusStrip.Text = "statusStrip1";
            // 
            // toolStripStatusLabel
            // 
            this.toolStripStatusLabel.Name = "toolStripStatusLabel";
            this.toolStripStatusLabel.Size = new System.Drawing.Size(39, 17);
            this.toolStripStatusLabel.Text = "Ready";
            // 
            // toolStripProgressBar
            // 
            this.toolStripProgressBar.Name = "toolStripProgressBar";
            this.toolStripProgressBar.Size = new System.Drawing.Size(100, 16);
            this.toolStripProgressBar.Visible = false;
            // 
            // panel5
            // 
            this.panel5.AllowDrop = true;
            this.panel5.BackgroundImage = global::kbTools.Properties.Resources.crc32_400;
            this.panel5.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel5.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel5.Location = new System.Drawing.Point(668, 37);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(128, 128);
            this.panel5.TabIndex = 7;
            this.panel5.DragDrop += new System.Windows.Forms.DragEventHandler(this.panel5_DragDrop);
            this.panel5.DragEnter += new System.Windows.Forms.DragEventHandler(this.panel5_DragEnter);
            // 
            // panel4
            // 
            this.panel4.AllowDrop = true;
            this.panel4.BackgroundImage = global::kbTools.Properties.Resources.images;
            this.panel4.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel4.Location = new System.Drawing.Point(512, 36);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(128, 128);
            this.panel4.TabIndex = 3;
            this.panel4.DragDrop += new System.Windows.Forms.DragEventHandler(this.panel4_DragDrop);
            this.panel4.DragEnter += new System.Windows.Forms.DragEventHandler(this.panel4_DragEnter);
            // 
            // panel3
            // 
            this.panel3.AllowDrop = true;
            this.panel3.BackgroundImage = global::kbTools.Properties.Resources._1987997;
            this.panel3.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel3.Location = new System.Drawing.Point(353, 36);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(128, 128);
            this.panel3.TabIndex = 2;
            this.panel3.DragDrop += new System.Windows.Forms.DragEventHandler(this.panel3_DragDrop);
            this.panel3.DragEnter += new System.Windows.Forms.DragEventHandler(this.panel3_DragEnter);
            // 
            // panel2
            // 
            this.panel2.AllowDrop = true;
            this.panel2.BackgroundImage = global::kbTools.Properties.Resources.transparent_date_icon_png_vector_600nw_2262658791;
            this.panel2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel2.Location = new System.Drawing.Point(190, 36);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(128, 128);
            this.panel2.TabIndex = 1;
            this.panel2.DragDrop += new System.Windows.Forms.DragEventHandler(this.panel2_DragDrop);
            this.panel2.DragEnter += new System.Windows.Forms.DragEventHandler(this.panel2_DragEnter);
            // 
            // panel1
            // 
            this.panel1.AllowDrop = true;
            this.panel1.BackgroundImage = global::kbTools.Properties.Resources._1c729738384b3b439156b2de65158513_icono_de_escoba_de_limpieza;
            this.panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Location = new System.Drawing.Point(27, 36);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(128, 128);
            this.panel1.TabIndex = 0;
            this.panel1.DragDrop += new System.Windows.Forms.DragEventHandler(this.panel1_DragDrop);
            this.panel1.DragEnter += new System.Windows.Forms.DragEventHandler(this.panel1_DragEnter);
            // 
            // chkLogCRC32
            // 
            this.chkLogCRC32.AutoSize = true;
            this.chkLogCRC32.Location = new System.Drawing.Point(816, 37);
            this.chkLogCRC32.Name = "chkLogCRC32";
            this.chkLogCRC32.Size = new System.Drawing.Size(81, 17);
            this.chkLogCRC32.TabIndex = 9;
            this.chkLogCRC32.Text = "Log CRC32";
            this.chkLogCRC32.UseVisualStyleBackColor = true;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.archivosToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(913, 24);
            this.menuStrip1.TabIndex = 10;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // archivosToolStripMenuItem
            // 
            this.archivosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.idiomasToolStripMenuItem,
            this.toolStripMenuItem1,
            this.salirToolStripMenuItem});
            this.archivosToolStripMenuItem.Name = "archivosToolStripMenuItem";
            this.archivosToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.archivosToolStripMenuItem.Text = "Archivos";
            // 
            // idiomasToolStripMenuItem
            // 
            this.idiomasToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.españolToolStripMenuItem,
            this.inglesToolStripMenuItem});
            this.idiomasToolStripMenuItem.Name = "idiomasToolStripMenuItem";
            this.idiomasToolStripMenuItem.Size = new System.Drawing.Size(116, 22);
            this.idiomasToolStripMenuItem.Text = "Idiomas";
            // 
            // españolToolStripMenuItem
            // 
            this.españolToolStripMenuItem.Name = "españolToolStripMenuItem";
            this.españolToolStripMenuItem.Size = new System.Drawing.Size(115, 22);
            this.españolToolStripMenuItem.Text = "Español";
            this.españolToolStripMenuItem.Click += new System.EventHandler(this.EspañolToolStripMenuItem_Click);
            // 
            // inglesToolStripMenuItem
            // 
            this.inglesToolStripMenuItem.Name = "inglesToolStripMenuItem";
            this.inglesToolStripMenuItem.Size = new System.Drawing.Size(115, 22);
            this.inglesToolStripMenuItem.Text = "Ingles";
            this.inglesToolStripMenuItem.Click += new System.EventHandler(this.InglesToolStripMenuItem_Click);
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(113, 6);
            // 
            // salirToolStripMenuItem
            // 
            this.salirToolStripMenuItem.Name = "salirToolStripMenuItem";
            this.salirToolStripMenuItem.Size = new System.Drawing.Size(116, 22);
            this.salirToolStripMenuItem.Text = "Salir";
            this.salirToolStripMenuItem.Click += new System.EventHandler(this.SalirToolStripMenuItem_Click);
            // 
            // btnEmptyRecycleBin
            // 
            this.btnEmptyRecycleBin.Location = new System.Drawing.Point(821, 112);
            this.btnEmptyRecycleBin.Name = "btnEmptyRecycleBin";
            this.btnEmptyRecycleBin.Size = new System.Drawing.Size(75, 23);
            this.btnEmptyRecycleBin.TabIndex = 11;
            this.btnEmptyRecycleBin.Text = "Empty Bin";
            this.btnEmptyRecycleBin.UseVisualStyleBackColor = true;
            this.btnEmptyRecycleBin.Click += new System.EventHandler(this.BtnEmptyRecycleBin_Click);
            // 
            // chkRecursive
            // 
            this.chkRecursive.AutoSize = true;
            this.chkRecursive.Location = new System.Drawing.Point(49, 170);
            this.chkRecursive.Name = "chkRecursive";
            this.chkRecursive.Size = new System.Drawing.Size(74, 17);
            this.chkRecursive.TabIndex = 12;
            this.chkRecursive.Text = "Recursive";
            this.chkRecursive.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AllowDrop = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(913, 214);
            this.Controls.Add(this.chkRecursive);
            this.Controls.Add(this.btnEmptyRecycleBin);
            this.Controls.Add(this.chkLogCRC32);
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.statusStrip);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.cmdExit);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form1";
            this.Text = "kbTools";
            this.DragEnter += new System.Windows.Forms.DragEventHandler(this.Form1_DragEnter);
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Button cmdExit;
        private System.Windows.Forms.FolderBrowserDialog folderBrowserDialog;
        private System.Windows.Forms.StatusStrip statusStrip;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.CheckBox chkLogCRC32;
        private System.Windows.Forms.ToolStripProgressBar toolStripProgressBar;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem archivosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem idiomasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem españolToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem inglesToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem salirToolStripMenuItem;
        private System.Windows.Forms.Button btnEmptyRecycleBin;
        private System.Windows.Forms.CheckBox chkRecursive;
    }
}

