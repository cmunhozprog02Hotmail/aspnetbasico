﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pLinqDS.aspx.cs" Inherits="ASPNETSample01.pLinqDS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ASPNETSample01.SampleDataContext" 
            EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
            TableName="Pessoas" AutoGenerateWhereClause="True" OnLoad="LinqDataSource1_Load">
            <WhereParameters>
                <asp:ControlParameter ControlID="txtSearch" Name="nome" PropertyName="Text" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="OK" OnClick="btnSearch_Click" />
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="idPessoa" DataSourceID="LinqDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#FFF8DC;">idPessoa:
                    <asp:Label ID="idPessoaLabel" runat="server" Text='<%# Eval("idPessoa") %>' />
                    <br />nome:
                    <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                    <br />telefone:
                    <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' />
                    <br />
                    obs:
                    <asp:Label ID="obsLabel" runat="server" Text='<%# Eval("obs") %>' />
                    <br />
                    </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">idPessoa:
                    <asp:Label ID="idPessoaLabel1" runat="server" Text='<%# Eval("idPessoa") %>' />
                    <br />nome:
                    <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                    <br />telefone:
                    <asp:TextBox ID="telefoneTextBox" runat="server" Text='<%# Bind("telefone") %>' />
                    <br />
                    obs:
                    <asp:TextBox ID="obsTextBox" runat="server" Text='<%# Bind("obs") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">nome:
                    <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                    <br />telefone:
                    <asp:TextBox ID="telefoneTextBox" runat="server" Text='<%# Bind("telefone") %>' />
                    <br />
                    obs:
                    <asp:TextBox ID="obsTextBox" runat="server" Text='<%# Bind("obs") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000;">idPessoa:
                    <asp:Label ID="idPessoaLabel" runat="server" Text='<%# Eval("idPessoa") %>' />
                    <br />nome:
                    <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                    <br />telefone:
                    <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' />
                    <br />
                    obs:
                    <asp:Label ID="obsLabel" runat="server" Text='<%# Eval("obs") %>' />
                    <br />
                    </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">idPessoa:
                    <asp:Label ID="idPessoaLabel" runat="server" Text='<%# Eval("idPessoa") %>' />
                    <br />nome:
                    <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                    <br />telefone:
                    <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' />
                    <br />
                    obs:
                    <asp:Label ID="obsLabel" runat="server" Text='<%# Eval("obs") %>' />
                    <br />
                    </td>
            </SelectedItemTemplate>
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
