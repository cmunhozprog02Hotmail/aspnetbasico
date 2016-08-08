<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pHttpContext.aspx.cs" Inherits="ASPNETSample01.pHttpContext" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtValor" runat="server" Width="178px"></asp:TextBox>
        <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" Text="OK" Width="90px" />
    
    </div>
    </form>
</body>
</html>
