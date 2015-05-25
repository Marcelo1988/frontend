<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Estadisticas.aspx.cs" Inherits="Estadisticas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Nomina de Estudiantes.</div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="codigoEstudiante,codigoEstudiante1" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="codigoEstudiante" HeaderText="Codigo" ReadOnly="True" SortExpression="codigoEstudiante" />
                <asp:BoundField DataField="nombreEstudiante" HeaderText="Nombres" SortExpression="nombreEstudiante" />
                <asp:BoundField DataField="apellidoEstudiante" HeaderText="Apellidos" SortExpression="apellidoEstudiante" />
                <asp:BoundField DataField="notaUno" HeaderText="Nota 1" SortExpression="notaUno" />
                <asp:BoundField DataField="notaDos" HeaderText="Nota 2" SortExpression="notaDos" />
                <asp:BoundField DataField="notaTres" HeaderText="Nota 3" SortExpression="notaTres" />
                <asp:BoundField DataField="notaFinal" HeaderText="Nota Final" SortExpression="notaFinal" />
                <asp:BoundField DataField="statusAprueba" HeaderText="Estado" SortExpression="statusAprueba" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select * from Estudiantes es inner join Notas no on 
es.codigoEstudiante=no.codigoEstudiante"></asp:SqlDataSource>
    </form>
</body>
</html>
