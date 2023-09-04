<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<%--    <!--  Bootstrap Style -->
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
    <link href="assets/css/custom.css" rel="stylesheet" />--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="general-subhead">
        <h1>Registration</h1>
    </div>
    <!--student info -->
    <div class="container">
        <table class="nav-justified">
            <tr>
                <td>
                    <asp:Label ID="NameLBL" runat="server" Text="Enter NAME" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="NameTEXT" runat="server" class="form-control" placeholder="Enter Name" required="true"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="EmailLBL" runat="server" Text="Enter Email Address" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="EmailTEXT" runat="server" class="form-control" placeholder="Enter Email Address" required="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="ContactLBL" runat="server" Text="Enter Mobile/Contact No." Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ContactTEXT" runat="server" class="form-control" placeholder="Mobile Number" required="true"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="AddressLBL" runat="server" Text="Enter Address" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="AddressTEXT" runat="server" TextMode="MultiLine" class="form-control" placeholder="Email Address" required="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="UsernameLBL" runat="server" Text="Enter Username" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="UsernameTEXT" runat="server" class="form-control" placeholder="Username" required="true"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="PasswordLBL" runat="server" Text="Enter Password" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="PasswordTEXT" TextMode="Password" runat="server" class="form-control" placeholder="Password" required="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="RegistrationBTN" runat="server" Text="REGISTER" class="btn-primary" data-toggle="modal" data-target="#Modal"
                        ToolTip="Add Student" ValidationGroup="addstud" OnClick="RegistrationBTN_Click" />
                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" class="btn-primary"
                        ToolTip="Cancel" />
                    <div class="general-subhead" />
                </td>
                <td></td>
            </tr>
        </table>
    </div>
</asp:Content>

