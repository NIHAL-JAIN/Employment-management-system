<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Attendence.aspx.cs" Inherits="EventManager.Attendence" %>
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
                                                        <h4>Attendence</h4>
                                                        
                                                    </div>
                                                </div>
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
           
                                                                       <table style="width: 100%;">
             <tr>
                            <td width="45%">
                                
                                <asp:Button ID="Button5" runat="server" Text="Checkin time" OnClick="Button5_Click" class="btn btn-success" Width="130px"/>
&nbsp;
                               <asp:Label ID="Label1" runat="server" EnableViewState="true"></asp:Label>
                                <br />
                                <br />
                               
                              
                                <asp:Button ID="Button2" runat="server" Text="Checkout time" OnClick="Button2_Click" class="btn btn-danger" Width="130px" CommandName="Update"/>
                                  <asp:Label ID="Label2" runat="server"></asp:Label>
                                <asp:Button ID="Back" runat="server" OnClick="Button6_Click" Text="Button" />
                                <br />
                            </td>
                            <td width="10%">&nbsp;</td>
                            <td width="45%">&nbsp;</td>
                        </tr>
                                                                         
                
</asp:Content>
