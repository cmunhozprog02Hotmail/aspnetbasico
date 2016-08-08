<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pObjectDS01.aspx.cs" Inherits="ASPNETSample01.pObjectDS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox runat="server" ID="txtSearch"></asp:TextBox>
        <asp:Button runat="server" ID="btnSearch" Text="Search" OnClick="btnSearch_OnClick" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="idPessoa" HeaderText="idPessoa" SortExpression="idPessoa" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetPessoas" 
            TypeName="ASPNETSample01.SampleContext">
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
