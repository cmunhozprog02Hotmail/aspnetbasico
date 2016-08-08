﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASPNETSample03.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="idCidade" DataSourceID="EntityDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                
                descricao:
                <asp:TextBox ID="descricaoTextBox" runat="server" Text='<%# Bind("descricao") %>' />
                <br />
                sigla:
                <asp:TextBox ID="siglaTextBox" runat="server" Text='<%# Bind("sigla") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
               
                descricao:
                <asp:TextBox ID="descricaoTextBox" runat="server" Text='<%# Bind("descricao") %>' />
                <br />
                sigla:
                <asp:TextBox ID="siglaTextBox" runat="server" Text='<%# Bind("sigla") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                descricao:
                <asp:Label ID="descricaoLabel" runat="server" Text='<%# Bind("descricao") %>' />
                <br />
                sigla:
                <asp:Label ID="siglaLabel" runat="server" Text='<%# Bind("sigla") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=sample01Entities" DefaultContainerName="sample01Entities" 
            EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
            EntitySetName="Cidades" EntityTypeFilter="Cidades">
        </asp:EntityDataSource>
    
    </div>
    </form>
</body>
</html>
