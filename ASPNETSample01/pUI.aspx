<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pUI.aspx.cs" Inherits="ASPNETSample01.pUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtCompomente" runat="server" AutoPostBack="True" BackColor="#CCFFCC" BorderColor="#006600" BorderStyle="Solid" BorderWidth="2px" Font-Size="20px" OnTextChanged="txtCompomente_TextChanged">Default Text</asp:TextBox>
        <asp:Button ID="btnComponente" runat="server" BackColor="#006600" Font-Bold="True" ForeColor="White" Height="28px" OnClick="btnComponente_Click" Text="Clicar" Width="74px" />
        <br />
        <br />
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" BackColor="snow" Font-Size="Larger" BorderColor="#999999"></asp:Label>
    
        <br />
        <br />
        <asp:CheckBox ID="ckbConfirma" runat="server" Text="Confirma?" Checked="true"
            AutoPostBack="True" OnCheckedChanged="ckbConfirma_CheckedChanged"/>
    
        <br />
        <asp:Label ID="lblCkb" runat="server" Font-Bold="True"></asp:Label>
        <br />
    
    </div>
        <asp:DropDownList ID="ddlCores" runat="server" Font-Size="Large" 
            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True">
            <asp:ListItem Value="1">Vermelho</asp:ListItem>
            <asp:ListItem Value="2" Selected="True">Azul</asp:ListItem>
            <asp:ListItem Value="3">Verde</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblCores" runat="server" ForeColor="Black" Font-Size="Larger" Width="150px" ></asp:Label>
        <br />
        <br />
        <asp:Literal ID="Literal1" runat="server" Text="LITERAL TEXT"></asp:Literal>
        <asp:Calendar ID="Calendar1" runat="server" FirstDayOfWeek="Monday" OnSelectionChanged="Calendar1_SelectionChanged" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged">
            <DayStyle BackColor="#9999FF" />
            <NextPrevStyle BackColor="#CC0099" />
            <OtherMonthDayStyle BackColor="#00FF99" />
            <SelectedDayStyle BackColor="#FF9933" />
            <SelectorStyle BackColor="#3333FF" />
            <TitleStyle BackColor="#FF33CC" />
            <TodayDayStyle BackColor="#FFFF66" />
            <WeekendDayStyle BackColor="#FF99FF" />
        </asp:Calendar>
        <br />
        <asp:TextBox ID="txtDate" runat="server" Font-Size="20px" Width="221px"></asp:TextBox>
        <br />
        <br />
        <asp:HiddenField ID="hdValor" runat="server" Value="Meu Valor" />
    </form>
</body>
</html>
