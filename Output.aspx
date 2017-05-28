<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Output.aspx.cs" Inherits="Output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>澳門政府公共部門公文翻譯系統</title>
    <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="CSS/jquery-ui.css" rel="stylesheet" />
    <script src="JS/jquery-3.2.1.min.js"></script>
    <script src="JS/jquery-ui.js"></script>
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
    <form id="form1" runat="server">
        <div>

            <table style="border-style: ridge; width: 100%; text-align: center; background-color: #FFFFFF;">
                <tr>
                    <td align="center" class="unselected">
                        <a href="Default.aspx" style="text-decoration:none">新建</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Input.aspx" style="text-decoration:none">匯入</a>
                    </td>
                    <td align="center" class="selected">
                        <a href="Output.aspx" style="text-decoration:none">匯出</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Setting.aspx" style="text-decoration:none">設定</a>
                    </td>
                    <td align="center" style="background-color: green">澳門政府公共部門公文翻譯系統</td>
                    <td style="text-align:right" class="auto-style4" ><a href="Ouput_PT.aspx">Português</a></td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="輸出到Word" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
