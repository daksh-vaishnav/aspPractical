<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.master" AutoEventWireup="true" CodeFile="forgot.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <!--  Bootstrap Style -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!--  Font-Awesome Style -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--  Font-Awesome Animation Style -->
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
    <!--  Pretty Photo Style -->
    <link href="assets/css/prettyPhoto.css" rel="stylesheet" />
    <!--  Google Font Style -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <!--  Custom Style -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="general-subhead">
        <h1>Forgot Password</h1>
    </div>
    <!--student info -->
    <div class="container">
        <table class="nav-justified">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
                <asp:View ID="View1" runat="server">
                    <tr>
                        <td>
                            <asp:Label ID="OldPasswordLBL" runat="server" Text="Enter Old Password" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="OldPasswordTEXT" runat="server" class="form-control" placeholder="Enter Old Password" TextMode="Password" required="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:Label ID="NewPasswordLBL" runat="server" Text="Enter New Password" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="NewPasswordTEXT" runat="server" class="form-control" placeholder="Enter New Passwrod" TextMode="Password" required="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:Label ID="ConfirmPasswordLBL" runat="server" Text="Confirm New Password" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="ConfirmPasswordTEXT" runat="server" class="form-control" placeholder="Confirm New Passwrod" TextMode="Password" required="true"></asp:TextBox>
                        </td>
                    </tr>

                </asp:View>
                <asp:View ID="View2" runat="server">
                    <tr>
                        <td>
                            <asp:Label ID="Question1LBL" runat="server" Text="Select Question 1" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="Question1DD" runat="server" class="form-control"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Answer1LBL" runat="server" Text="Enter Answer" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Answer1TEXT" runat="server" class="form-control" placeholder="Enter Your Answer" required="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Question2LBL" runat="server" Text="Select Question 2" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="Question2DD" runat="server" class="form-control"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Answer2LBL" runat="server" Text="Enter Answer" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Answer2TEXT" runat="server" class="form-control" placeholder="Enter Your Answer" required="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Question3LBL" runat="server" Text="Select Question 3" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="Question3DD" runat="server" class="form-control"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Answer3LBL" runat="server" Text="Enter Answer" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Answer3TEXT" runat="server" class="form-control" placeholder="Enter Your Answer" required="true"></asp:TextBox>
                        </td>
                    </tr>
                </asp:View>
            </asp:MultiView>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="ChangePasswordBTN" runat="server" Text="CHANGE PASSWORD" class="btn-primary" data-toggle="modal" data-target="#Modal"
                        ToolTip="Add Student" ValidationGroup="addstud" OnClick="ChangePasswordBTN_Click" />
                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" class="btn-primary"
                        ToolTip="Cancel" />
                    <div class="general-subhead" />
                </td>
                <td></td>
            </tr>
        </table>
    </div>
</asp:Content>

