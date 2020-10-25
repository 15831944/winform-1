﻿namespace JCodes.Framework.AddIn.Proj
{
    partial class FrmEditItemName
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
            this.lblChineseName = new System.Windows.Forms.Label();
            this.txtChineseName = new System.Windows.Forms.TextBox();
            this.txtGUID = new System.Windows.Forms.TextBox();
            this.lblGUID = new System.Windows.Forms.Label();
            this.txtFunctionId = new System.Windows.Forms.TextBox();
            this.lblFunctionId = new System.Windows.Forms.Label();
            this.txtTableName = new System.Windows.Forms.TextBox();
            this.lblTableName = new System.Windows.Forms.Label();
            this.lblTypeGuid = new System.Windows.Forms.Label();
            this.cbbTypeGuid = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.picPrint)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbTypeGuid.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(315, 215);
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(400, 215);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(237, 215);
            // 
            // dataNavigator1
            // 
            this.dataNavigator1.Location = new System.Drawing.Point(12, 210);
            // 
            // picPrint
            // 
            this.picPrint.Location = new System.Drawing.Point(209, 210);
            // 
            // lblChineseName
            // 
            this.lblChineseName.AutoSize = true;
            this.lblChineseName.Location = new System.Drawing.Point(23, 138);
            this.lblChineseName.Name = "lblChineseName";
            this.lblChineseName.Size = new System.Drawing.Size(82, 22);
            this.lblChineseName.TabIndex = 52;
            this.lblChineseName.Text = "表中文名";
            // 
            // txtChineseName
            // 
            this.txtChineseName.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtChineseName.Location = new System.Drawing.Point(82, 135);
            this.txtChineseName.Name = "txtChineseName";
            this.txtChineseName.Size = new System.Drawing.Size(391, 29);
            this.txtChineseName.TabIndex = 3;
            // 
            // txtGUID
            // 
            this.txtGUID.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtGUID.Enabled = false;
            this.txtGUID.Location = new System.Drawing.Point(82, 31);
            this.txtGUID.Name = "txtGUID";
            this.txtGUID.ReadOnly = true;
            this.txtGUID.Size = new System.Drawing.Size(186, 29);
            this.txtGUID.TabIndex = 1;
            // 
            // lblGUID
            // 
            this.lblGUID.AutoSize = true;
            this.lblGUID.Location = new System.Drawing.Point(23, 34);
            this.lblGUID.Name = "lblGUID";
            this.lblGUID.Size = new System.Drawing.Size(53, 22);
            this.lblGUID.TabIndex = 52;
            this.lblGUID.Text = "GUID";
            // 
            // txtFunctionId
            // 
            this.txtFunctionId.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtFunctionId.Location = new System.Drawing.Point(84, 66);
            this.txtFunctionId.Name = "txtFunctionId";
            this.txtFunctionId.Size = new System.Drawing.Size(391, 29);
            this.txtFunctionId.TabIndex = 4;
            // 
            // lblFunctionId
            // 
            this.lblFunctionId.AutoSize = true;
            this.lblFunctionId.Location = new System.Drawing.Point(25, 69);
            this.lblFunctionId.Name = "lblFunctionId";
            this.lblFunctionId.Size = new System.Drawing.Size(64, 22);
            this.lblFunctionId.TabIndex = 52;
            this.lblFunctionId.Text = "功能号";
            // 
            // txtTableName
            // 
            this.txtTableName.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtTableName.Location = new System.Drawing.Point(82, 101);
            this.txtTableName.Name = "txtTableName";
            this.txtTableName.Size = new System.Drawing.Size(391, 29);
            this.txtTableName.TabIndex = 2;
            // 
            // lblTableName
            // 
            this.lblTableName.AutoSize = true;
            this.lblTableName.Location = new System.Drawing.Point(22, 104);
            this.lblTableName.Name = "lblTableName";
            this.lblTableName.Size = new System.Drawing.Size(46, 22);
            this.lblTableName.TabIndex = 52;
            this.lblTableName.Text = "表名";
            // 
            // lblTypeGuid
            // 
            this.lblTypeGuid.AutoSize = true;
            this.lblTypeGuid.Location = new System.Drawing.Point(25, 171);
            this.lblTypeGuid.Name = "lblTypeGuid";
            this.lblTypeGuid.Size = new System.Drawing.Size(82, 22);
            this.lblTypeGuid.TabIndex = 52;
            this.lblTypeGuid.Text = "菜单分组";
            // 
            // cbbTypeGuid
            // 
            this.cbbTypeGuid.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.cbbTypeGuid.Location = new System.Drawing.Point(84, 168);
            this.cbbTypeGuid.Name = "cbbTypeGuid";
            this.cbbTypeGuid.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbTypeGuid.Size = new System.Drawing.Size(391, 28);
            this.cbbTypeGuid.TabIndex = 5;
            // 
            // FrmEditItemName
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 22F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(487, 255);
            this.Controls.Add(this.cbbTypeGuid);
            this.Controls.Add(this.lblGUID);
            this.Controls.Add(this.lblTableName);
            this.Controls.Add(this.lblTypeGuid);
            this.Controls.Add(this.lblFunctionId);
            this.Controls.Add(this.lblChineseName);
            this.Controls.Add(this.txtGUID);
            this.Controls.Add(this.txtTableName);
            this.Controls.Add(this.txtFunctionId);
            this.Controls.Add(this.txtChineseName);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmEditItemName";
            this.Text = "表信息";
            this.Controls.SetChildIndex(this.txtChineseName, 0);
            this.Controls.SetChildIndex(this.txtFunctionId, 0);
            this.Controls.SetChildIndex(this.txtTableName, 0);
            this.Controls.SetChildIndex(this.txtGUID, 0);
            this.Controls.SetChildIndex(this.lblChineseName, 0);
            this.Controls.SetChildIndex(this.lblFunctionId, 0);
            this.Controls.SetChildIndex(this.lblTypeGuid, 0);
            this.Controls.SetChildIndex(this.lblTableName, 0);
            this.Controls.SetChildIndex(this.lblGUID, 0);
            this.Controls.SetChildIndex(this.btnCancel, 0);
            this.Controls.SetChildIndex(this.btnOK, 0);
            this.Controls.SetChildIndex(this.btnAdd, 0);
            this.Controls.SetChildIndex(this.dataNavigator1, 0);
            this.Controls.SetChildIndex(this.picPrint, 0);
            this.Controls.SetChildIndex(this.cbbTypeGuid, 0);
            ((System.ComponentModel.ISupportInitialize)(this.picPrint)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbTypeGuid.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblChineseName;
        public System.Windows.Forms.TextBox txtChineseName;
        public System.Windows.Forms.TextBox txtGUID;
        private System.Windows.Forms.Label lblGUID;
        public System.Windows.Forms.TextBox txtFunctionId;
        private System.Windows.Forms.Label lblFunctionId;
        public System.Windows.Forms.TextBox txtTableName;
        private System.Windows.Forms.Label lblTableName;
        private System.Windows.Forms.Label lblTypeGuid;
        private DevExpress.XtraEditors.ComboBoxEdit cbbTypeGuid;
    }
}