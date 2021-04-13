<%@ Page Title="" Language="C#" MasterPageFile="~/homeadmin.Master" AutoEventWireup="true" CodeBehind="attendencelist.aspx.cs" Inherits="EventManager.attendencelist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-header start -->
                                    <div class="page-header card">
                                        <div class="row align-items-end">
                                            <div class="col-lg-8">
                                                <div class="page-header-title">
                                                    <i class="icofont icofont-file-code bg-c-blue"></i>
                                                    <div class="d-inline">
                                                        <h4>Attendence Report </h4>
                                                         </div>
                                                </div>
                                            </div>
                                             <!-- Page body start -->
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <!-- Basic Form Inputs card start -->
                                                <div class="card">
                                                      <div class="card-block">
                                                           <table style="width: 100%;">
                                             <tr>
                <td>Emp ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource6" DataTextField="emp_id" DataValueField="emp_id" >
                        <asp:ListItem Value="0">-- Select Id--</asp:ListItem>
                    </asp:DropDownList>


                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From Date&nbsp;&nbsp;&nbsp;&nbsp;
                                                     <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                                                     &nbsp;&nbsp;
                                                   
                                                     &nbsp;&nbsp; To Date&nbsp;&nbsp;&nbsp;
                                                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                                                     &nbsp;
                                                   
                                                     &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Search" Onclick="Button1_Click" />
                                                                    <br />


                    <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [emp_id], [emp_name], [attendence_date], [login_time], [logout_time] FROM [attendencestatus]"></asp:SqlDataSource>
                   
                    &nbsp;
                                                    
                   
                    </td>
                        </tr>
                            <tr>
                                 <td><br />
                                        </td>
                                           </tr>
                                                <tr>
                                                 <td><br />
                                                         <br />
                                                           <br />
                                                                    <table style="width: 100%;">
                                        </div>
                                        </div>
                                    </div>
         </div>
                                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">



                                            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>


                                            <Columns>
                                                <asp:TemplateField HeaderText="Working Hour"></asp:TemplateField>
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




                                        <asp:SqlDataSource runat="server" ID="SqlDataSource2"></asp:SqlDataSource>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [emp_id], [emp_name], [login_time], [attendence_date], [logout_time] FROM [attendencestatus]"></asp:SqlDataSource>

</asp:Content>
