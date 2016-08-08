<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pDataSource.aspx.cs" Inherits="ASPNETSample01.pDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:SqlDataSource ID="SQLDSCidades" runat="server" ConnectionString="<%$ ConnectionStrings:sampledbConnectionString2 %>"
                SelectCommand="SELECT * FROM [Cidades]">

            </asp:SqlDataSource>
            <asp:GridView ID="GVCidades" runat="server" AutoGenerateColumns="False" DataKeyNames="idCidade" DataSourceID="SQLDSCidades" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GVCidades_SelectedIndexChanged" OnRowDeleted="GVCidades_RowDeleted" OnRowDeleting="GVCidades_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None" Height="251px" PageSize="5">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="idCidade" HeaderText="idCidade" InsertVisible="False"
                        ReadOnly="True" SortExpression="idCidade" />
                    <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
                    <asp:BoundField DataField="sigla" HeaderText="sigla" SortExpression="sigla" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:Label ID="lbl" runat="server"></asp:Label>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="idCidade" DataSourceID="SQLDSCidades" DefaultMode="Insert">

                <EditItemTemplate>
                    idCidade:
                    <asp:Label ID="idCidadeLabel1" runat="server" Text='<%# Eval("idCidade") %>' />
                    <br />
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
                    idCidade:
                    <asp:Label ID="idCidadeLabel" runat="server" Text='<%# Eval("idCidade") %>' />
                    <br />
                    descricao:
                    <asp:Label ID="descricaoLabel" runat="server" Text='<%# Bind("descricao") %>' />
                    <br />
                    sigla:
                    <asp:Label ID="siglaLabel" runat="server" Text='<%# Bind("sigla") %>' />
                    <br />
                </ItemTemplate>

            </asp:FormView>
            <br />
            <br />
            <asp:Repeater runat="server" ID="Repeter1" DataSourceID="SQLDSCidades">
                <HeaderTemplate>
                    <table border="1">
                </HeaderTemplate>
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("idCidade") %></td>
                        <td><%# Eval("descricao") %> </td>
                        <td><%# Eval("sigla") %> </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="idCidade" DataSourceID="SQLDSCidades" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FFF8DC;">idCidade:
                        <asp:Label ID="idCidadeLabel" runat="server" Text='<%# Eval("idCidade") %>' />
                        <br />
                        descricao:
                        <asp:Label ID="descricaoLabel" runat="server" Text='<%# Eval("descricao") %>' />
                        <br />
                        sigla:
                        <asp:Label ID="siglaLabel" runat="server" Text='<%# Eval("sigla") %>' />
                        <br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color: #008A8C; color: #FFFFFF;">idCidade:
                        <asp:Label ID="idCidadeLabel1" runat="server" Text='<%# Eval("idCidade") %>' />
                        <br />
                        descricao:
                        <asp:TextBox ID="descricaoTextBox" runat="server" Text='<%# Bind("descricao") %>' />
                        <br />
                        sigla:
                        <asp:TextBox ID="siglaTextBox" runat="server" Text='<%# Bind("sigla") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
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
                    <td runat="server" style="">descricao:
                        <asp:TextBox ID="descricaoTextBox" runat="server" Text='<%# Bind("descricao") %>' />
                        <br />sigla:
                        <asp:TextBox ID="siglaTextBox" runat="server" Text='<%# Bind("sigla") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color: #DCDCDC; color: #000000;">idCidade:
                        <asp:Label ID="idCidadeLabel" runat="server" Text='<%# Eval("idCidade") %>' />
                        <br />
                        descricao:
                        <asp:Label ID="descricaoLabel" runat="server" Text='<%# Eval("descricao") %>' />
                        <br />
                        sigla:
                        <asp:Label ID="siglaLabel" runat="server" Text='<%# Eval("sigla") %>' />
                        <br />

                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">idCidade:
                        <asp:Label ID="idCidadeLabel" runat="server" Text='<%# Eval("idCidade") %>' />
                        <br />
                        descricao:
                        <asp:Label ID="descricaoLabel" runat="server" Text='<%# Eval("descricao") %>' />
                        <br />
                        sigla:
                        <asp:Label ID="siglaLabel" runat="server" Text='<%# Eval("sigla") %>' />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />

        </div>

    </form>
</body>
</html>
