<%@ Page Language="C#" AutoEventWireup="true" CodeFile="input.aspx.cs" Inherits="input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>澳門政府公共部門公文翻譯系統</title>
    <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <meta name="GENERATOR" content="Microsoft Visual Studio 7.0" />
    <meta name="CODE_LANGUAGE" content="C#" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <style type="text/css">
        .auto-style1 {
            width: 130px;
        }

        .auto-style2 {
            width: 130px;
            height: 33px;
        }

        .auto-style3 {
            height: 33px;
        }

        .auto-style4 {
            width: 99px;
        }
    </style>

</head>
<body>
    <form id="Form1" method="post" enctype="multipart/form-data" runat="server">
        <div>

            <table style="border-style: ridge; width: 100%; text-align: center; background-color: #FFFFFF;">
                <tr>
                    <td align="center" class="unselected">
                        <a href="Default.aspx" style="text-decoration: none">新建</a>
                    </td>
                    <td align="center" class="selected">
                        <a href="Input.aspx" style="text-decoration: none">匯入</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Output.aspx" style="text-decoration: none">匯出</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Setting.aspx" style="text-decoration: none">設定</a>
                    </td>
                    <td align="center" style="background-color: green">澳門政府公共部門公文翻譯系統</td>
                    <td style="text-align: right" class="auto-style4"><a href="Input_PT.aspx">Português</a></td>
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
