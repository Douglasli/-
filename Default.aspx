<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <style type="text/css">
        .clsTxt {
            width: 400px;
            min-height: 25px;
            max-height: 200px;
            resize: none;
        }
    </style>
    <script>
        function resizeTextBox(txt) {
            txt.style.height = "1px";
            txt.style.height = (1 + txt.scrollHeight) + "px";
        }
    </script>
    <script>  
        $(function () {
            $('#txtDatePicker').datepicker(
                {
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1950:2100'
                });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border-style: ridge; width: 100%; text-align: center; background-color: #FFFFFF;">
                <tr>
                    <td align="center" class="selected">
                        <a href="Default.aspx" style="text-decoration: none">新建</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Input.aspx" style="text-decoration: none">匯入</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Output.aspx" style="text-decoration: none">匯出</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Setting.aspx" style="text-decoration: none">設定</a>
                    </td>
                    <td align="center" style="background-color: green">澳門政府公共部門公文翻譯系統</td>
                    <td style="text-align: right" class="auto-style4"><a href="Default_PT.aspx">Português</a></td>
                </tr>
            </table>

        </div>
        <div>

            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">部門/機構：</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>體育發展局</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">日期：</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtDatePicker" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">內容分類：</td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>招標方案</asp:ListItem>
                            <asp:ListItem>承投規則</asp:ListItem>
                            <asp:ListItem>技術規範</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="生成框架" OnClick="Button1_Click" />
                    </td>
                    <td>編號：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text="/ID/2017"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">公文標題：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="輸出到Word" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>

        <div>
            <asp:Table ID="Table1" runat="server" Style="width: 100%; text-align: center;">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="標的"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>&nbsp;</asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Objecto"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell RowSpan="2">
                        <asp:TextBox ID="TextBox5" CssClass="clsTxt" runat="server" onkeyup="resizeTextBox(this)" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="Button4" runat="server" Text="中翻葡" OnClick="Button4_Click"/>
                    </asp:TableCell>
                    <asp:TableCell RowSpan="2">
                        <asp:TextBox ID="TextBox6" CssClass="clsTxt" runat="server" onkeyup="resizeTextBox(this)" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell RowSpan="2">
                        <asp:Button ID="Button5" runat="server" Text="葡翻中" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow></asp:TableRow>
                <asp:TableRow runat="server" ID="tr1">
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="負責實體及案卷的查閱"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell> &nbsp;</asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Text="Entidades responsáveis e consulta do processo"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" ID="tr2">
                    <asp:TableCell RowSpan="2">
                        <asp:TextBox ID="TextBox3" CssClass="clsTxt" runat="server" onkeyup="resizeTextBox(this)" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        &nbsp;
                    </asp:TableCell>
                    <asp:TableCell RowSpan="2">
                        <asp:TextBox ID="TextBox4" CssClass="clsTxt" runat="server" onkeyup="resizeTextBox(this)" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" ID="tr"></asp:TableRow>
                 <asp:TableRow runat="server" ID="tr3">
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="對招標案卷的疑問"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label6" runat="server" Text="Dúvidas sobre o processo do concurso"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" ID="tr4">
                    <asp:TableCell RowSpan="2">
                        <asp:TextBox ID="TextBox7" CssClass="clsTxt" runat="server" onkeyup="resizeTextBox(this)" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        &nbsp;
                    </asp:TableCell>
                    <asp:TableCell RowSpan="2">
                        <asp:TextBox ID="TextBox8" CssClass="clsTxt" runat="server" onkeyup="resizeTextBox(this)" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow></asp:TableRow>
                 <asp:TableRow runat="server" ID="tr5">
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Text="投標書的遞交"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        &nbsp;
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label8" runat="server" Text="Entrega das propostas"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server" ID="tr6" >
                    <asp:TableCell RowSpan="2">
                        <asp:TextBox ID="TextBox9" CssClass="clsTxt" runat="server" onkeyup="resizeTextBox(this)" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        &nbsp;
                    </asp:TableCell>
                    <asp:TableCell RowSpan="2">
                        <asp:TextBox ID="TextBox10" CssClass="clsTxt" runat="server" onkeyup="resizeTextBox(this)" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        </div>
    </form>
</body>
</html>
