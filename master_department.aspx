<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="master_department.aspx.cs" Inherits="EventManager.event_master" %>
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
                                                        <h4>Department Master</h4>
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
                        <a class="dropdown-item waves-effect waves-light" href="#">Action</a>
                        <a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
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
            <tr>
                <td>Department Name</td>
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
                            <td width="45%">Active</td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                       
                        <tr>
                            <td width="45%">
                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                    <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
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
                            <td width="45%">
                                <asp:Button ID="Depsu" runat="server" Text="Submit" OnClick="Button2_Click" class="btn btn-success"/>
&nbsp;
                                <asp:Button ID="reset" runat="server" Text="Reset" class="btn btn-danger" OnClick="reset_Click"/>
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
