<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pRequest.aspx.cs" Inherits="ASPNETSample01.pRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txt" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btn" runat="server" Text="Button" OnClick="btn_Click" />
    
    </div>
    </form>
</body>
</html>
