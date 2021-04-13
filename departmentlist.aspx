<%@ Page Title="" Language="C#" MasterPageFile="~/homeadmin.Master" AutoEventWireup="true" CodeBehind="departmentlist.aspx.cs" Inherits="EventManager.departmentlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="dept_sl" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
       
        <Columns>
            <asp:BoundField DataField="dept_sl" HeaderText="dept_sl" ReadOnly="True" SortExpression="dept_sl"></asp:BoundField>
            <asp:BoundField DataField="dept_name" HeaderText="dept_name" SortExpression="dept_name"></asp:BoundField>
            <asp:BoundField DataField="active" HeaderText="active" SortExpression="active"></asp:BoundField>
            <asp:CommandField ShowEditButton="True" HeaderText="Action"></asp:CommandField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connect %>' DeleteCommand="DELETE FROM [department] WHERE [dept_sl] = @dept_sl" InsertCommand="INSERT INTO [department] ([dept_sl], [dept_name], [active]) VALUES (@dept_sl, @dept_name, @active)" SelectCommand="SELECT * FROM [department]" UpdateCommand="UPDATE [department] SET [dept_name] = @dept_name, [active] = @active WHERE [dept_sl] = @dept_sl">
        <DeleteParameters>
            <asp:Parameter Name="dept_sl" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="dept_sl" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="dept_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="active" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="dept_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="active" Type="String"></asp:Parameter>
            <asp:Parameter Name="dept_sl" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
