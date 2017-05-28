<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_PT.aspx.cs" Inherits="_Default" %>

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
                        <a href="Default_PT.aspx" style="text-decoration: none">novo</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Input_PT.aspx" style="text-decoration: none">importação</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Output_PT.aspx" style="text-decoration: none">exportação</a>
                    </td>
                    <td align="center" class="unselected">
                        <a href="Setting_PT.aspx" style="text-decoration: none">definir</a>
                    </td>
                    <td align="center" style="background-color: green">Sistema de Governo de Macau Função pública Tradução de Documento oficial</td>
                    <td style="text-align: right" class="auto-style4"><a href="Default.aspx">中文</a></td>
                </tr>
            </table>

        </div>
        <div>

            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">Instituto：</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Instituto do Desporto</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">data：</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtDatePicker" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Categoria de conteúdo：</td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>programa de concurso</asp:ListItem>
                            <asp:ListItem>Caderno de Encargos</asp:ListItem>
                            <asp:ListItem>Normas Técnicas</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Gerar um modelo" OnClick="Button1_Click" />
                    </td>
                    <td>número：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text="/ID/2017"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">denominação do documento oficial：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Export to Word" />
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
