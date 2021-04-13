<%@ Page Title="" Language="C#" MasterPageFile="~/homeadmin.Master" AutoEventWireup="true" CodeBehind="Emplistadmin.aspx.cs" Inherits="EventManager.Emplistadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_sl" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>

            <asp:BoundField DataField="emp_sl" HeaderText="emp_sl" ReadOnly="True" SortExpression="emp_sl"></asp:BoundField>
            <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id"></asp:BoundField>
            <asp:BoundField DataField="emp_name" HeaderText="emp_name" SortExpression="emp_name"></asp:BoundField>
            <asp:BoundField DataField="emp_add" HeaderText="emp_add" SortExpression="emp_add"></asp:BoundField>
            <asp:BoundField DataField="emp_age" HeaderText="emp_age" SortExpression="emp_age"></asp:BoundField>
            <asp:BoundField DataField="emp_doj" HeaderText="emp_doj" SortExpression="emp_doj"></asp:BoundField>
            <asp:BoundField DataField="emp_pass" HeaderText="emp_pass" SortExpression="emp_pass"></asp:BoundField>
            <asp:TemplateField HeaderText="dept_name" SortExpression="dept_name">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="dept_name" DataValueField="dept_name"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT DISTINCT [dept_name] FROM [department]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("dept_name") %>' ID="Label1"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="desig_name" SortExpression="desig_name">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="desig_name" DataValueField="desig_name"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT DISTINCT [desig_name] FROM [designation]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("desig_name") %>' ID="Label2"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="emp_level" HeaderText="emp_level" SortExpression="emp_level"></asp:BoundField>
            <asp:CommandField ShowEditButton="True" HeaderText="Action"></asp:CommandField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDelete" CommandName="Delete" runat="server" OnClientClick="return confirm('are you sure')">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connect %>' DeleteCommand="DELETE FROM [employee] WHERE [emp_sl] = @emp_sl" InsertCommand="INSERT INTO [employee] ([emp_sl], [emp_id], [emp_name], [emp_add], [emp_age], [emp_doj], [emp_pass], [dept_name], [desig_name], [emp_level]) VALUES (@emp_sl, @emp_id, @emp_name, @emp_add, @emp_age, @emp_doj, @emp_pass, @dept_name, @desig_name, @emp_level)" SelectCommand="SELECT * FROM [employee]" UpdateCommand="UPDATE [employee] SET [emp_id] = @emp_id, [emp_name] = @emp_name, [emp_add] = @emp_add, [emp_age] = @emp_age, [emp_doj] = @emp_doj, [emp_pass] = @emp_pass, [dept_name] = @dept_name, [desig_name] = @desig_name, [emp_level] = @emp_level WHERE [emp_sl] = @emp_sl">
        <DeleteParameters>
            <asp:Parameter Name="emp_sl" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="emp_sl" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="emp_id" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_add" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_age" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="emp_doj"></asp:Parameter>
            <asp:Parameter Name="emp_pass" Type="String"></asp:Parameter>
            <asp:Parameter Name="dept_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="desig_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_level" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emp_id" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_add" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_age" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="emp_doj"></asp:Parameter>
            <asp:Parameter Name="emp_pass" Type="String"></asp:Parameter>
            <asp:Parameter Name="dept_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="desig_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_level" Type="String"></asp:Parameter>
            <asp:Parameter Name="emp_sl" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
