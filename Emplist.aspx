<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Emplist.aspx.cs" Inherits="EventManager.Emplist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataKeyNames="emp_sl" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" HorizontalAlign="Justify" ShowHeaderWhenEmpty="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="emp_sl" HeaderText="emp_sl" SortExpression="emp_sl" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id"></asp:BoundField>
            <asp:BoundField DataField="emp_name" HeaderText="emp_name" SortExpression="emp_name"></asp:BoundField>
            <asp:BoundField DataField="emp_add" HeaderText="emp_add" SortExpression="emp_add"></asp:BoundField>
            <asp:BoundField DataField="emp_age" HeaderText="emp_age" SortExpression="emp_age"></asp:BoundField>
            <asp:BoundField DataField="emp_doj" HeaderText="emp_doj" SortExpression="emp_doj"></asp:BoundField>
            <asp:BoundField DataField="emp_pass" HeaderText="emp_pass" SortExpression="emp_pass"></asp:BoundField>
            <asp:TemplateField HeaderText="dept_name" SortExpression="dept_name">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="dept_name" DataValueField="dept_name" ></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT DISTINCT [dept_name] FROM [department]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("dept_name") %>' ID="Label1"></asp:Label>
                </ItemTemplate> 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="desig_name" SortExpression="desig_name">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="desig_name" DataValueField="desig_name" ></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT DISTINCT [desig_name] FROM [designation]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("desig_name") %>' ID="Label2"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="emp_level" HeaderText="emp_level" SortExpression="emp_level"></asp:BoundField>
            <asp:CommandField  ShowEditButton="True"  HeaderText="Action"></asp:CommandField>
           <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkDelete" CommandName="Delete" runat="server" OnClientClick="return confirm('are you sure')">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
        </Columns>
         <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [emp_level], [emp_sl], [emp_id], [emp_name], [emp_add], [emp_age], [emp_doj], [emp_pass], [dept_name], [desig_name] FROM [employee]" DeleteCommand="DELETE FROM [employee] WHERE [emp_sl] = @emp_sl" InsertCommand="INSERT INTO [employee] ([emp_level], [emp_sl], [emp_id], [emp_name], [emp_add], [emp_age], [emp_doj], [emp_pass], [dept_name], [desig_name]) VALUES (@emp_level, @emp_sl, @emp_id, @emp_name, @emp_add, @emp_age, @emp_doj, @emp_pass, @dept_name, @desig_name)" UpdateCommand="UPDATE [employee] SET [emp_level] = @emp_level, [emp_id] = @emp_id, [emp_name] = @emp_name, [emp_add] = @emp_add, [emp_age] = @emp_age, [emp_doj] = @emp_doj, [emp_pass] = @emp_pass, [dept_name] = @dept_name, [desig_name] = @desig_name WHERE [emp_sl] = @emp_sl">

        <DeleteParameters>
            <asp:Parameter Name="emp_sl" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="emp_level" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_sl" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="emp_id" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_add" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_age" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="emp_doj" DbType="Date"></asp:Parameter>
            <asp:Parameter Name="emp_pass" Type="String"></asp:Parameter>
            <asp:Parameter Name="dept_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="desig_name" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emp_level" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_id" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_add" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_age" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="emp_doj" DbType="Date"></asp:Parameter>
            <asp:Parameter Name="emp_pass" Type="String"></asp:Parameter>
            <asp:Parameter Name="dept_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="desig_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_sl" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

