<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pPanel.aspx.cs" Inherits="ASPNETSample01.pPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnSwitch" runat="server" text="Switch" OnClick="btnSwitch_Click" />

        <asp:Panel ID="Panel1" runat="server" BackColor="#99CCFF">
            <asp:Label ID="lblP1" runat="server" text="Painel 1" ></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BackColor="#99FFCC" Visible="False">
            <asp:Label ID="lblP2" runat="server" Text="Panel 2"></asp:Label>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
