<%@ Page Title="" Language="C#" MasterPageFile="~/homeadmin.Master" AutoEventWireup="true" CodeBehind="applyleavelist.aspx.cs" Inherits="EventManager.applyleavelist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id"></asp:BoundField>
            <asp:BoundField DataField="emp_email" HeaderText="emp_email" SortExpression="emp_email"></asp:BoundField>
            <asp:BoundField DataField="leave_category" HeaderText="leave_category" SortExpression="leave_category"></asp:BoundField>
            <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date"></asp:BoundField>
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date"></asp:BoundField>
            <asp:BoundField DataField="reason" HeaderText="reason" SortExpression="reason"></asp:BoundField>
             <asp:TemplateField HeaderText="Approval" >
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Approved" CommandName ="Approved" CommandArgument="<%# Container.DataItemIndex %>"  OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Denied" CommandName ="Denied" CommandArgument="<%# Container.DataItemIndex %>"  OnClick="Button2_Click"/>
                </ItemTemplate>
            </asp:TemplateField>

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



    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [emp_id], [emp_email], [leave_category], [start_date], [end_date], [reason]  FROM [applyleavefinal] WHERE [Approval] IS NULL"></asp:SqlDataSource>
    
   
    <asp:Label ID="Label1" runat="server" ></asp:Label>

   
</asp:Content>
