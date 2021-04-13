<%@ Page Title="" Language="C#" MasterPageFile="~/homeadmin.Master" AutoEventWireup="true" CodeBehind="leavestatusadmin.aspx.cs" Inherits="EventManager.leavestatusadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id"></asp:BoundField>
            <asp:BoundField DataField="emp_email" HeaderText="emp_email" SortExpression="emp_email"></asp:BoundField>
            <asp:BoundField DataField="leave_category" HeaderText="leave_category" SortExpression="leave_category"></asp:BoundField>
            <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date"></asp:BoundField>
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date"></asp:BoundField>
            <asp:BoundField DataField="reason" HeaderText="reason" SortExpression="reason"></asp:BoundField>
            <asp:BoundField DataField="Approval" HeaderText="Approval" SortExpression="Approval"></asp:BoundField>
        </Columns>
         <EditRowStyle BackColor="#2461BF"></EditRowStyle>

        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT * FROM [applyleavefinal]"></asp:SqlDataSource>
</asp:Content>
