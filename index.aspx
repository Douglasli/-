<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            請選擇文件類型<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="I">報告</asp:ListItem>
                <asp:ListItem Value="P">建議書</asp:ListItem>
                <asp:ListItem Value="G">公函</asp:ListItem>
                <asp:ListItem Value="CI">內部</asp:ListItem>
                <asp:ListItem Value="Z">招標書</asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
