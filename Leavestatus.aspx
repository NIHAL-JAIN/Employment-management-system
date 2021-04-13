<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" EnableSessionState="True" AutoEventWireup="true" CodeBehind="Leavestatus.aspx.cs" Inherits="EventManager.Leavestatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None">

        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
         <Columns>
            <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id"></asp:BoundField>
            <asp:BoundField DataField="emp_email" HeaderText="emp_email" SortExpression="emp_email"></asp:BoundField>
            <asp:BoundField DataField="leave_category" HeaderText="leave_category" SortExpression="leave_category"></asp:BoundField>
            <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date"></asp:BoundField>
            <asp:BoundField DataField="reason" HeaderText="reason" SortExpression="reason"></asp:BoundField>
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date"></asp:BoundField>
            <asp:BoundField DataField="Approval" HeaderText="Approval" SortExpression="Approval"></asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#2461BF"></EditRowStyle>

        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>

        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [emp_id], [emp_email], [leave_category], [start_date], [reason], [end_date], [Approval] FROM [applyleavefinal]"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [start_date], [end_date], [reason], [Approval] FROM [applyleavefinal]"></asp:SqlDataSource>
   
    <asp:Label ID="Label2" runat="server" ></asp:Label>
    
</asp:Content>
