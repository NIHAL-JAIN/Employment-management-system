<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="emp_master.aspx.cs" Inherits="EventManager.emp_master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }
    </style>
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
                                                        <h4>Emp Master</h4>
                                                        <span>Add / Edit / View Event</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4" style="text-align: right">
                                                <div class="btn-group dropdown-split-success">
                    <button type="button" class="btn btn-success"><i class="icofont icofont-check-circled"></i>Action</button>
                    <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="sr-only">Toggle primary</span>
                    </button>
                    <div class="dropdown-menu">
                       <a class="dropdown-item waves-effect waves-light" href="Emplist.aspx">Edit|Delete</a>
                        
                        <a class="dropdown-item waves-effect waves-light" href="#">Something else here</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
                    </div>
                </div>
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Page-header end -->

                                    <!-- Page body start -->
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <!-- Basic Form Inputs card start -->
                                                <div class="card">
                                                      <div class="card-block">
                                                           <table style="width: 100%;">
                                                               </div>

                                                                <tr>
                <td>Emp sl</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width:100%;">
                       

                         <tr>
                <td>Emp ID</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width:100%;">
                       

                         <tr>
                <td>Emp Name</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width:100%;">
                       

                          <td>Emp Address</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width:100%;">
                        
                          <td>Emp Age</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width:100%;">
                       

                          <td>Emp Doj</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width:100%;">
                          <td>Emp Password</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width:100%;">
                                                    

                       
                        <tr>
                             <td>Department</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td width="45%">
                                &nbsp;</td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                        
                          
                       
                        <tr>
                            <td width="45%">
                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" Height="35px" Width="603px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1"  >

                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT Distinct[dept_name] FROM [department]"></asp:SqlDataSource>
                            </td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                         <tr>
                            <td width="45%">
                                &nbsp;</td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                         

                        <tr>
                              <td>Designation</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td colspan = "3" width="45%">
                            <td width="45%">
                                &nbsp;</td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                      
                        <tr>
                            <td width="45%" class="auto-style1">
                                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" Height="35px" Width="603px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1">
                                   
                                </asp:DropDownList>
                               
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT Distinct[desig_name] FROM [designation]"></asp:SqlDataSource>
                               
                            </td>
                            <td width="10%" class="auto-style1"></td>
                            <td width="45%" class="auto-style1"></td>
                        </tr>
                          <tr>
                            <td width="45%">
                                &nbsp;</td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                        
                  <td>Emp level</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
                         
                <td colspan="3">
                    <table style="width:100%;">
                       
                        <tr>
                            <td width="45%">
                                <asp:Button ID="Desig" runat="server" Text="Submit" OnClick="Button2_Click" class="btn btn-success"/>
&nbsp;
                                <asp:Button ID="dreset" runat="server" Text="Reset" class="btn btn-danger" OnClick="reset_Click"/>
                            </td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                       
                    </table>
                </td>
            </tr>
        </table>
                                                          </div>
                                                  
                                                               
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <!-- Page body end -->
                                                                    </div>
                                                                </div>
</asp:Content>
