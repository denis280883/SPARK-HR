<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DataEditPage.aspx.vb" Inherits="DataEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Table ID="Table1" runat="server">
    </asp:Table>
    <asp:Label ID="Labelrptid" runat="server" Text="rptid"></asp:Label>
    <asp:TextBox ID="TxtBox_rptid" runat="server"></asp:TextBox>
    <p>
        <asp:Label ID="Labelsrptid" runat="server" Text="srptid"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <asp:Label ID="RptFieldName" runat="server" Text="RptFieldName"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <p>
        <asp:Label ID="labeltblename" runat="server" Text="Tablenames"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <asp:Label ID="Labelsubreportname" runat="server" Text="subreportname"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </form>
</body>
</html>
