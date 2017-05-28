using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Novacode;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox5.Text = "為第64屆澳門格蘭披治大賽車- 澳 門GT盃招攬冠名贊助";
        TextBox3.Text = "批准招標人： 社會文化司司長\r\n判給人： 社會文化司司長\r\n協 議書簽署人： 體育局局長\r\n招標實體： 體育局";
        TextBox7.Text = "對 於招標文件的理解存有任何疑問， 應最遲於2017年4月19日（ 星期三）中午十二時前以書面方式送交招標方案第2.2條所指的體育局總部， 體育局不接受以郵寄方式遞交的查詢文件。";
        TextBox9.Text = "投 標書應由競投者或其合法代表於2017年4月24日（ 星期一） 中午十二時前交到體育局總部，不接受以郵寄方式遞交的投標書。逾期遞交的投標書不被接納。";

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        TextBox6.Text = "Angariação de patrocínio para a Taça GT Macau da 64.ª Edição do Grande Prémio de Macau.";
        TextBox4.Text = "Entidade que autoriza a abertura do concurso: Secretário para os Assuntos Sociais e Cultura \r\n Adjudicante: Secretário para os Assuntos Sociais e Cultura \r\n Outorgante do acordo: Presidente do Instituto do Desporto \r\n Entidade que preside ao concurso: Instituto do Desporto";
        TextBox8.Text = "Os pedidos de esclarecimento de quaisquer dúvidas relativas à interpretação das peças processuais devem ser apresentados, por escrito, à sede do Instituto do Desporto mencionada no artigo 2.2 do Programa do Concurso, até às 12.00 horas do dia 19 de Abril de 2017, quarta - feira; o Instituto do Desporto não aceita os documentos enviados por correio.";
        TextBox10.Text = "As propostas devem ser entregues até às 12.00 horas do dia 24 de Abril de 2017 (segunda-feira), pelos concorrentes ou seus representantes legais, na sede do Instituto do Desporto, não sendo aceites os documentos enviados por correio. Não são aceites as propostas apresentadas fora do prazo estipulado.";
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        string fn = TextBox1.Text;
        fn = fn.Replace("/", ".");
        string fileName = "C:\\Users\\a8112\\OneDrive\\Documents\\Visual Studio 2017\\WebSites\\WebSite1\\DATA\\" + fn + ".docx";

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