<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pObjectDSa.aspx.cs" Inherits="ASPNETSample01.pObjectDSa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox runat="server" ID="txtSearch"></asp:TextBox>
        <asp:Button runat="server" ID="btnSearch" Text="OK" OnClick="btnSearch_Click"/>
        <asp:GridView ID="gvPessoa" runat="server" AutoGenerateColumns="False" DataSourceID="ODS01"
            DataKeyNames="idPessoa" OnSelectedIndexChanged="GridView1_OnSelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="idPessoa" HeaderText="idPessoa" SortExpression="idPessoa" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
                <asp:BoundField DataField="obs" HeaderText="obs" SortExpression="obs" />
                <asp:CommandField ShowSelectButton="True" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" OnClientClick="return confirm('Deseja realmente EXCLUIR?');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                Nenhum dados encontrado.
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:ObjectDataSource ID="ODS01" runat="server" SelectMethod="GetPessoas" DeleteMethod="DelelePessoa"
            TypeName="ASPNETSample01.SampleContext">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearch" PropertyName="Text" Name="search"/>
            </SelectParameters>
        </asp:ObjectDataSource>
        <br/><br/>
        <asp:FormView runat="server" ID="fvPessoas" DataSourceID="ODS02" DefaultMode="Insert" 
            OnItemUpdated="fvPessoas_OnItemUpdated" OnItemInserted="fvPessoas_OnItemInserted">
            <EditItemTemplate>
                <asp:HiddenField runat="server" ID="hdIdPessoa" value='<%# Bind("idPessoa") %>'/>
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                telefone:
                <asp:TextBox ID="telefoneTextBox" runat="server" Text='<%# Bind("telefone") %>' />
                <br />
                Obs.:
                <asp:TextBox ID="txtObservacao" runat="server" Text='<%# Bind("obs") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                telefone:
                <asp:TextBox ID="telefoneTextBox" runat="server" Text='<%# Bind("telefone") %>' />
                <br />
                Obs.:
                <asp:TextBox ID="txtObservacao" runat="server" Text='<%# Bind("obs") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            
            
        </asp:FormView>
    
        <asp:ObjectDataSource ID="ODS02" runat="server" DataObjectTypeName="ASPNETSample01.Pessoa" 
            InsertMethod="AddPessoa" SelectMethod="GetPessoa" TypeName="ASPNETSample01.SampleContext"
            UpdateMethod="Update">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvPessoa" PropertyName="SelectedValue" Name="idPessoa"/>
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
