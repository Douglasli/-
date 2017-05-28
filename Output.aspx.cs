using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Novacode;


public partial class Output : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string fileName = @"C:\Users\a8112\OneDrive\Documents\Visual Studio 2017\WebSites\WebSite1\DATA\DocXExample.docx";

        // Create a document in memory:
        var doc = DocX.Create(fileName);

        // Insert a paragrpah:
        doc.InsertParagraph("This is my first paragraph");

        // Save to the output directory:
        doc.Save();
        System.IO.FileInfo file = new System.IO.FileInfo(fileName);
        if (file.Exists)
        {
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
            Response.AddHeader("Content-Length", file.Length.ToString());
            Response.ContentType = "application/octet-stream";
            Response.WriteFile(file.FullName);
            Response.End();
        }
        else
        {
            Response.Write("This file does not exist.");
        }
        Response.Write("輸出成功");
        
    }
}