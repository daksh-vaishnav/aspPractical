<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Default3" %>

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
        <h1>Add New Book</h1>
    </div>
    <!--Book info -->
    <div class="container">
        <table class="nav-justified">
            <tr>
                <td>
                    <asp:Label ID="TitleLBL" runat="server" Text="Book Title" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TitleTEXT" runat="server" class="form-control" placeholder="Book Name" ViewStateMode="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="AuthorLBL" runat="server" Text="Book Author" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="AuthorTEXT" runat="server" class="form-control" placeholder="Book Author" ViewStateMode="Disabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="StockLBL" runat="server" Text="Qty of Book" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="StockTEXT" runat="server" class="form-control" placeholder="Qty Of Book" ViewStateMode="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="CategoryLBL" runat="server" Text="Book Category" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="CategoryDD" runat="server" DataTextField="Text" DataValueField="Value" class="form-control">
                        <asp:ListItem Text="Novel" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Drama" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Action and Adventure" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Romance" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Mystery" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Horror" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="BookImageLBL" runat="server" Text="Select Book Image" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="BookImageFileUpload" runat="server" class="form-control" />
                </td>
                <td>
                    <asp:Label ID="PriceLBL" runat="server" Text="Price of Book (per each.)" Font-Bold="False" Font-Size="Larger" ForeColor="#4E33EA" class="lbl"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="PriceTEXT" runat="server" class="form-control" placeholder="Book Price per pc." ViewStateMode="Disabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="AddBookBTN" runat="server" Text="ADD BOOK" class="btn-primary" ToolTip="Add Book" OnClick="AddBookBTN_Click" />
                    <asp:Button ID="CancleBTN" runat="server" Text="CANCEL" class="btn-primary" ToolTip="Cancel" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="pad-top-botm ">
                    <asp:Label ID="MsgSuccessLBL" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#40bc31" Text="Successfully Add Book...!!!" Visible="false"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

