namespace JCodes.Framework.AddIn.Proj
{
    partial class FrmClassEntity
    {
        protected override void Dispose(bool disposing) {
            if(disposing) {
                if(components != null) {
                    components.Dispose();
                }
            }
            base.Dispose(disposing);
        }

        #region Designer generated code
        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmClassEntity));
            this.barAndDockingController = new DevExpress.XtraBars.BarAndDockingController(this.components);
            this.dockManager = new DevExpress.XtraBars.Docking.DockManager(this.components);
            this.hideContainerLeft = new DevExpress.XtraBars.Docking.AutoHideContainer();
            this.dockPanel6 = new DevExpress.XtraBars.Docking.DockPanel();
            this.dockPanel6_Container = new DevExpress.XtraBars.Docking.ControlContainer();
            this.ucToolbox1 = new System.Windows.Forms.UserControl();
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.bbiAddItem = new DevExpress.XtraBars.BarButtonItem();
            this.bbiModItem = new DevExpress.XtraBars.BarButtonItem();
            this.bbiDelItem = new DevExpress.XtraBars.BarButtonItem();
            this.documentManager = new DevExpress.XtraBars.Docking2010.DocumentManager(this.components);
            this.tabbedView = new DevExpress.XtraBars.Docking2010.Views.Tabbed.TabbedView(this.components);
            this.pmGroup = new DevExpress.XtraBars.PopupMenu(this.components);
            this.pmItem = new DevExpress.XtraBars.PopupMenu(this.components);
            this.contextMenuStripFields = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.toolStripMenuItem_AddField = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem_DelField = new System.Windows.Forms.ToolStripMenuItem();
            this.contextMenuStripIndex = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.toolStripMenuItem_AddIndex = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem_DelIndex = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.barAndDockingController)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dockManager)).BeginInit();
            this.hideContainerLeft.SuspendLayout();
            this.dockPanel6.SuspendLayout();
            this.dockPanel6_Container.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.documentManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tabbedView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pmGroup)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pmItem)).BeginInit();
            this.contextMenuStripFields.SuspendLayout();
            this.contextMenuStripIndex.SuspendLayout();
            this.SuspendLayout();
            // 
            // barAndDockingController
            // 
            this.barAndDockingController.PaintStyleName = "Skin";
            this.barAndDockingController.PropertiesBar.AllowLinkLighting = false;
            this.barAndDockingController.PropertiesBar.DefaultGlyphSize = new System.Drawing.Size(16, 16);
            this.barAndDockingController.PropertiesBar.DefaultLargeGlyphSize = new System.Drawing.Size(32, 32);
            // 
            // dockManager
            // 
            this.dockManager.AutoHideContainers.AddRange(new DevExpress.XtraBars.Docking.AutoHideContainer[] {
            this.hideContainerLeft});
            this.dockManager.Controller = this.barAndDockingController;
            this.dockManager.Form = this;
            this.dockManager.MenuManager = this.barManager1;
            this.dockManager.TopZIndexControls.AddRange(new string[] {
            "DevExpress.XtraBars.BarDockControl",
            "System.Windows.Forms.StatusBar"});
            // 
            // hideContainerLeft
            // 
            this.hideContainerLeft.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(236)))), ((int)(((byte)(239)))));
            this.hideContainerLeft.Controls.Add(this.dockPanel6);
            this.hideContainerLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.hideContainerLeft.Location = new System.Drawing.Point(0, 0);
            this.hideContainerLeft.Name = "hideContainerLeft";
            this.hideContainerLeft.Size = new System.Drawing.Size(28, 662);
            // 
            // dockPanel6
            // 
            this.dockPanel6.Controls.Add(this.dockPanel6_Container);
            this.dockPanel6.Dock = DevExpress.XtraBars.Docking.DockingStyle.Left;
            this.dockPanel6.FloatSize = new System.Drawing.Size(146, 428);
            this.dockPanel6.ID = new System.Guid("24977e30-0ea6-44aa-8fa4-9abaeb178b5e");
            this.dockPanel6.ImageIndex = 25;
            this.dockPanel6.Location = new System.Drawing.Point(0, 0);
            this.dockPanel6.Name = "dockPanel6";
            this.dockPanel6.OriginalSize = new System.Drawing.Size(228, 200);
            this.dockPanel6.SavedDock = DevExpress.XtraBars.Docking.DockingStyle.Left;
            this.dockPanel6.SavedIndex = 0;
            this.dockPanel6.Size = new System.Drawing.Size(228, 662);
            this.dockPanel6.Text = "ʵ����";
            this.dockPanel6.Visibility = DevExpress.XtraBars.Docking.DockVisibility.AutoHide;
            // 
            // dockPanel6_Container
            // 
            this.dockPanel6_Container.Controls.Add(this.ucToolbox1);
            this.dockPanel6_Container.Location = new System.Drawing.Point(4, 30);
            this.dockPanel6_Container.Name = "dockPanel6_Container";
            this.dockPanel6_Container.Size = new System.Drawing.Size(220, 628);
            this.dockPanel6_Container.TabIndex = 0;
            // 
            // ucToolbox1
            // 
            this.ucToolbox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ucToolbox1.Location = new System.Drawing.Point(0, 0);
            this.ucToolbox1.Margin = new System.Windows.Forms.Padding(2);
            this.ucToolbox1.Name = "ucToolbox1";
            this.ucToolbox1.Size = new System.Drawing.Size(220, 628);
            this.ucToolbox1.TabIndex = 0;
            // 
            // barManager1
            // 
            this.barManager1.Controller = this.barAndDockingController;
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.DockManager = this.dockManager;
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.bbiAddItem,
            this.bbiModItem,
            this.bbiDelItem});
            this.barManager1.MaxItemId = 7;
            // 
            // barDockControlTop
            // 
            this.barDockControlTop.CausesValidation = false;
            this.barDockControlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.barDockControlTop.Location = new System.Drawing.Point(0, 0);
            this.barDockControlTop.Size = new System.Drawing.Size(1133, 0);
            // 
            // barDockControlBottom
            // 
            this.barDockControlBottom.CausesValidation = false;
            this.barDockControlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.barDockControlBottom.Location = new System.Drawing.Point(0, 662);
            this.barDockControlBottom.Size = new System.Drawing.Size(1133, 0);
            // 
            // barDockControlLeft
            // 
            this.barDockControlLeft.CausesValidation = false;
            this.barDockControlLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.barDockControlLeft.Location = new System.Drawing.Point(0, 0);
            this.barDockControlLeft.Size = new System.Drawing.Size(0, 662);
            // 
            // barDockControlRight
            // 
            this.barDockControlRight.CausesValidation = false;
            this.barDockControlRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.barDockControlRight.Location = new System.Drawing.Point(1133, 0);
            this.barDockControlRight.Size = new System.Drawing.Size(0, 662);
            // 
            // bbiAddItem
            // 
            this.bbiAddItem.Caption = "������";
            this.bbiAddItem.Id = 6;
            this.bbiAddItem.Name = "bbiAddItem";
            this.bbiAddItem.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bbiAddItem_ItemClick);
            // 
            // bbiModItem
            // 
            this.bbiModItem.Caption = "�޸���";
            this.bbiModItem.Id = 4;
            this.bbiModItem.Name = "bbiModItem";
            this.bbiModItem.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bbiModItem_ItemClick);
            // 
            // bbiDelItem
            // 
            this.bbiDelItem.Caption = "ɾ����";
            this.bbiDelItem.Id = 5;
            this.bbiDelItem.Name = "bbiDelItem";
            this.bbiDelItem.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bbiDelItem_ItemClick);
            // 
            // documentManager
            // 
            this.documentManager.BarAndDockingController = this.barAndDockingController;
            this.documentManager.ContainerControl = this;
            this.documentManager.MenuManager = this.barManager1;
            this.documentManager.RibbonAndBarsMergeStyle = DevExpress.XtraBars.Docking2010.Views.RibbonAndBarsMergeStyle.Always;
            this.documentManager.ShowToolTips = DevExpress.Utils.DefaultBoolean.True;
            this.documentManager.View = this.tabbedView;
            this.documentManager.ViewCollection.AddRange(new DevExpress.XtraBars.Docking2010.Views.BaseView[] {
            this.tabbedView});
            // 
            // tabbedView
            // 
            this.tabbedView.DocumentProperties.AllowPin = true;
            this.tabbedView.DocumentSelectorProperties.AllowHtmlDraw = DevExpress.Utils.DefaultBoolean.True;
            this.tabbedView.DocumentSelectorProperties.DocumentFooterFormat = "{0}\\{1}";
            this.tabbedView.DocumentSelectorProperties.DocumentHeaderFormat = "{0}<br>Source file";
            this.tabbedView.DocumentSelectorProperties.PanelFooterFormat = "";
            this.tabbedView.FloatingDocumentContainer = DevExpress.XtraBars.Docking2010.Views.FloatingDocumentContainer.DocumentsHost;
            // 
            // pmGroup
            // 
            this.pmGroup.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.bbiAddItem)});
            this.pmGroup.Manager = this.barManager1;
            this.pmGroup.Name = "pmGroup";
            // 
            // pmItem
            // 
            this.pmItem.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.bbiModItem),
            new DevExpress.XtraBars.LinkPersistInfo(this.bbiDelItem)});
            this.pmItem.Manager = this.barManager1;
            this.pmItem.Name = "pmItem";
            // 
            // contextMenuStripFields
            // 
            this.contextMenuStripFields.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.contextMenuStripFields.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem_AddField,
            this.toolStripMenuItem_DelField});
            this.contextMenuStripFields.Name = "contextMenuStripFields";
            this.contextMenuStripFields.Size = new System.Drawing.Size(153, 60);
            // 
            // toolStripMenuItem_AddField
            // 
            this.toolStripMenuItem_AddField.Name = "toolStripMenuItem_AddField";
            this.toolStripMenuItem_AddField.Size = new System.Drawing.Size(152, 28);
            this.toolStripMenuItem_AddField.Text = "�����ֶ�";
            this.toolStripMenuItem_AddField.Click += toolStripMenuItem_AddField_Click;
            // 
            // toolStripMenuItem_DelField
            // 
            this.toolStripMenuItem_DelField.Name = "toolStripMenuItem_DelField";
            this.toolStripMenuItem_DelField.Size = new System.Drawing.Size(152, 28);
            this.toolStripMenuItem_DelField.Text = "ɾ���ֶ�";
            this.toolStripMenuItem_DelField.Click += toolStripMenuItem_DelField_Click;
            // 
            // contextMenuStripIndex
            // 
            this.contextMenuStripIndex.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.contextMenuStripIndex.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem_AddIndex,
            this.toolStripMenuItem_DelIndex});
            this.contextMenuStripIndex.Name = "contextMenuStripIndex";
            this.contextMenuStripIndex.Size = new System.Drawing.Size(153, 60);
            // 
            // toolStripMenuItem_AddIndex
            // 
            this.toolStripMenuItem_AddIndex.Name = "toolStripMenuItem_AddIndex";
            this.toolStripMenuItem_AddIndex.Size = new System.Drawing.Size(152, 28);
            this.toolStripMenuItem_AddIndex.Text = "�����Զ����ֶ�";
            this.toolStripMenuItem_AddIndex.Click += toolStripMenuItem_AddIndex_Click;
            // 
            // toolStripMenuItem_DelIndex
            // 
            this.toolStripMenuItem_DelIndex.Name = "toolStripMenuItem_DelIndex";
            this.toolStripMenuItem_DelIndex.Size = new System.Drawing.Size(152, 28);
            this.toolStripMenuItem_DelIndex.Text = "ɾ���Զ����ֶ�";
            this.toolStripMenuItem_DelIndex.Click += toolStripMenuItem_DelIndex_Click;
            // 
            // FrmClassEntity
            // 
            this.ClientSize = new System.Drawing.Size(1133, 662);
            this.Controls.Add(this.hideContainerLeft);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmClassEntity";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ʵ����";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmMain_Load);
            ((System.ComponentModel.ISupportInitialize)(this.barAndDockingController)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dockManager)).EndInit();
            this.hideContainerLeft.ResumeLayout(false);
            this.dockPanel6.ResumeLayout(false);
            this.dockPanel6_Container.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.documentManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tabbedView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pmGroup)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pmItem)).EndInit();
            this.contextMenuStripFields.ResumeLayout(false);
            this.contextMenuStripIndex.ResumeLayout(false);
            this.ResumeLayout(false);

        }


        #endregion
        private DevExpress.XtraBars.Docking.DockManager dockManager;
        private DevExpress.XtraBars.BarAndDockingController barAndDockingController;
        private DevExpress.XtraBars.Docking.DockPanel dockPanel6;
        private DevExpress.XtraBars.Docking.ControlContainer dockPanel6_Container;
        private System.ComponentModel.IContainer components;
        private DevExpress.XtraBars.Docking2010.DocumentManager documentManager;
        private DevExpress.XtraBars.Docking2010.Views.Tabbed.TabbedView tabbedView;
        private System.Windows.Forms.UserControl ucToolbox1;
        private DevExpress.XtraBars.PopupMenu pmGroup;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.PopupMenu pmItem;
        private DevExpress.XtraBars.BarButtonItem bbiAddItem;
        private DevExpress.XtraBars.BarButtonItem bbiModItem;
        private DevExpress.XtraBars.BarButtonItem bbiDelItem;
        private DevExpress.XtraBars.Docking.AutoHideContainer hideContainerLeft;
        private System.Windows.Forms.ContextMenuStrip contextMenuStripFields;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem_AddField;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem_DelField;
        private System.Windows.Forms.ContextMenuStrip contextMenuStripIndex;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem_AddIndex;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem_DelIndex;
    }
}
