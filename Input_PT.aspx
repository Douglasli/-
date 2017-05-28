<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Input_PT.aspx.cs" Inherits="input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sistema de Governo de Macau Setor Público Tradução de Documentos</title>
    <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <meta name="GENERATOR" content="Microsoft Visual Studio 7.0" />
    <meta name="CODE_LANGUAGE" content="C#" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />

</head>
<body>
    <form id="Form1" method="post" enctype="multipart/form-data" runat="server">
        <div>

            <table style="border-style: ridge; width: 100%; float: center; background-color: #FFFFFF;">
                <tr>
                    <td align="center" class="unselected">
                        <a href="Default_PT.aspx" style="text-decoration: none">novo</a>
                    </td>
                    <td align="center" class="selected">
                        <a href="Input_PT.aspx" style="text-decoration: none">importação</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Output_PT.aspx" style="text-decoration: none">exportação</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Setting_PT.aspx" style="text-decoration: none">configurações</a>
                    </td>
                    <td align="center" style="background-color: green">Sistema de Governo de Macau Setor Público Tradução de Documentos</td>
                    <td style="text-align: right"><a href="Input.aspx">中文</a></td>
                </tr>
            </table>

        </div>
        <input type="file" id="File1" name="File1" runat="server" />
        <br />
        <input type="submit" id="Submit1" value="Upload" runat="server" name="Submit1" />
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="WordFileText" runat="server" Height="400px" Width="100%" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
