﻿namespace JCodes.Framework.AddIn.Test
{
    partial class FrmdelegateSetUI
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btnStart = new DevExpress.XtraEditors.SimpleButton();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.richText = new DevExpress.XtraRichEdit.RichEditControl();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.Controls.Add(this.btnStart);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(922, 47);
            this.panelControl1.TabIndex = 0;
            // 
            // btnStart
            // 
            this.btnStart.Location = new System.Drawing.Point(23, 12);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(82, 29);
            this.btnStart.TabIndex = 0;
            this.btnStart.Text = "开始";
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // panelControl2
            // 
            this.panelControl2.Controls.Add(this.richText);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl2.Location = new System.Drawing.Point(0, 47);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(922, 654);
            this.panelControl2.TabIndex = 1;
            // 
            // richText
            // 
            this.richText.ActiveViewType = DevExpress.XtraRichEdit.RichEditViewType.Draft;
            this.richText.Dock = System.Windows.Forms.DockStyle.Fill;
            this.richText.EnableToolTips = true;
            this.richText.Location = new System.Drawing.Point(2, 2);
            this.richText.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.richText.Name = "richEditControl";
            this.richText.Options.AutoCorrect.DetectUrls = false;
            this.richText.Options.AutoCorrect.ReplaceTextAsYouType = false;
            this.richText.Options.Behavior.PasteLineBreakSubstitution = DevExpress.XtraRichEdit.LineBreakSubstitute.Paragraph;
            this.richText.Options.CopyPaste.MaintainDocumentSectionSettings = false;
            this.richText.Options.DocumentCapabilities.Bookmarks = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.CharacterStyle = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.HeadersFooters = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.Hyperlinks = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.InlinePictures = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.Numbering.Bulleted = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.Numbering.MultiLevel = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.Numbering.Simple = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.ParagraphFormatting = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.Paragraphs = DevExpress.XtraRichEdit.DocumentCapability.Enabled;
            this.richText.Options.DocumentCapabilities.ParagraphStyle = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.Sections = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.Tables = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.DocumentCapabilities.TableStyle = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            this.richText.Options.Fields.UseCurrentCultureDateTimeFormat = false;
            this.richText.Options.HorizontalRuler.Visibility = DevExpress.XtraRichEdit.RichEditRulerVisibility.Hidden;
            this.richText.Options.MailMerge.KeepLastParagraph = false;
            this.richText.Size = new System.Drawing.Size(1111, 627);
            this.richText.TabIndex = 1;
            this.richText.Text = "richEditControl1";
            this.richText.Views.DraftView.AllowDisplayLineNumbers = true;
            this.richText.Views.DraftView.Padding = new System.Windows.Forms.Padding(80, 4, 0, 0);
            this.richText.InitializeDocument += new System.EventHandler(this.richEditControl_InitializeDocument);
            // 
            // FrmdelegateSetUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 22F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(922, 701);
            this.Controls.Add(this.panelControl2);
            this.Controls.Add(this.panelControl1);
            this.Name = "FrmdelegateSetUI";
            this.Text = "委托方式";
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraEditors.SimpleButton btnStart;
        private DevExpress.XtraRichEdit.RichEditControl richText;

    }
}

