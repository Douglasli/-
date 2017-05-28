using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class input : System.Web.UI.Page
{

    private void Page_Load(object sender, System.EventArgs e)
    {
        // Put user code to initialize the page here
    }

    #region Web Form Designer generated code
    override protected void OnInit(EventArgs e)
    {
        // 
        // CODEGEN: This call is required by the ASP.NET Web Form Designer.
        // 
        InitializeComponent();
        base.OnInit(e);
    }

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
        this.Submit1.ServerClick += new System.EventHandler(this.Submit1_ServerClick);
        this.Load += new System.EventHandler(this.Page_Load);

    }
    #endregion

    private void Submit1_ServerClick(object sender, System.EventArgs e)
    {
        if ((File1.PostedFile != null) && (File1.PostedFile.ContentLength > 0))
        {
            string fn = System.IO.Path.GetFileName(File1.PostedFile.FileName);
            object filename = "C:\\Users\\a8112\\OneDrive\\Documents\\Visual Studio 2017\\WebSites\\WebSite1\\DATA\\" + fn;
            string SaveLocation = Server.MapPath("Data") + "\\" + fn;
            try
            {
                File1.PostedFile.SaveAs(SaveLocation);

                Microsoft.Office.Interop.Word.ApplicationClass AC = new Microsoft.Office.Interop.Word.ApplicationClass();
                Microsoft.Office.Interop.Word.Document doc = new Microsoft.Office.Interop.Word.Document();
                object readOnly = false;
                object isVisible = true;
                object missing = System.Reflection.Missing.Value;
                doc = AC.Documents.Open(ref filename, ref missing, ref readOnly, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref isVisible, ref isVisible, ref missing, ref missing, ref missing);
                WordFileText.Text = doc.Content.Text;
                Response.Write("O arquivo foi carregado.");
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
                //Note: Exception.Message returns a detailed message that describes the current exception. 
                //For security reasons, we do not recommend that you return Exception.Message to end users in 
                //production environments. It would be better to return a generic error message. 
            }
        }
        else
        {
            Response.Write("Selecione um arquivo para fazer o upload.");
        }
    }
}