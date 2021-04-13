<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Applyleave.aspx.cs" Inherits="EventManager.Applyleave" %>
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
                                                        <h4>Apply Leave</h4>
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
                <td>Emp ID<br />
                    <asp:TextBox ID="TextBox4" runat="server" Width="596px"></asp:TextBox>
                    <br />
                    <br />
                                                                    <table style="width: 100%;">
            <tr>
                <td>Email ID<br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="596px"></asp:TextBox>
                    <br />
                    <br />
                    Leave Category</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" Height="38px" Width="603px">
                                    <asp:ListItem>Holidays</asp:ListItem>
                                    <asp:ListItem>Casual Leave</asp:ListItem>
                                    <asp:ListItem>Sick Leave</asp:ListItem>
                                    <asp:ListItem>Maternity Leave</asp:ListItem>
                                    <asp:ListItem>Qurantine Leave</asp:ListItem>
                                </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width:100%;">
                        <tr>
                            <td width="45%">Start Date</td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                       
                        <tr>
                            <td width="45%">
                                <asp:Calendar ID="Calendar1" runat="server" SelectionMode="DayWeekMonth" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                    <DayStyle BackColor="#CCCCCC" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                                </asp:Calendar>
                                <asp:Label ID="Label1" runat="server" ></asp:Label>
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
                <td colspan="3">
                    <table style="width:100%;">
                        <tr>
                            <td width="45%">End Date</td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                       
                        <tr>
                            <td width="45%">
                                <asp:Calendar ID="Calendar2" runat="server" SelectionMode="DayWeekMonth" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                    <DayStyle BackColor="#CCCCCC" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                                </asp:Calendar>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
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
                <td colspan="3">
                    <table style="width:100%;">
                        <tr>
                            <td width="45%">Reason</td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                       
                        <tr>
                            <td width="45%">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" Height="75px" Width="687px"></asp:TextBox>
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
                               
                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" class="btn btn-success" />
                                &nbsp;
                                
                                <asp:Button ID="Button2" runat="server" Text="Reset" class="btn btn-danger" OnClick="Button2_Click" />
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
