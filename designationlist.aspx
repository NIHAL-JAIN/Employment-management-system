<%@ Page Title="" Language="C#" MasterPageFile="~/homeadmin.Master" AutoEventWireup="true" CodeBehind="designationlist.aspx.cs" Inherits="EventManager.designationlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="desig_sl" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            
            <asp:BoundField DataField="desig_sl" HeaderText="desig_sl" ReadOnly="True" SortExpression="desig_sl"></asp:BoundField>
            <asp:BoundField DataField="desig_name" HeaderText="desig_name" SortExpression="desig_name"></asp:BoundField>
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

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connect %>' DeleteCommand="DELETE FROM [designation] WHERE [desig_sl] = @desig_sl" InsertCommand="INSERT INTO [designation] ([desig_sl], [desig_name], [active]) VALUES (@desig_sl, @desig_name, @active)" SelectCommand="SELECT * FROM [designation]" UpdateCommand="UPDATE [designation] SET [desig_name] = @desig_name, [active] = @active WHERE [desig_sl] = @desig_sl">
        <DeleteParameters>
            <asp:Parameter Name="desig_sl" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="desig_sl" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="desig_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="active" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="desig_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="active" Type="String"></asp:Parameter>
            <asp:Parameter Name="desig_sl" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
