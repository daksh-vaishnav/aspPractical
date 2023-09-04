<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.master" AutoEventWireup="true" CodeFile="BookDetail.aspx.cs" Inherits="_Default" %>

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
    <asp:GridView ID="GridView1" runat="server"
        OnRowCancelingEdit="GridView1_RowCancelingEdit"
        OnRowCommand="GridView1_RowCommand"
        OnRowDeleting="GridView1_RowDeleting"
        OnRowEditing="GridView1_RowEditing"
        OnRowUpdated="GridView1_RowUpdated"
        OnRowUpdating="GridView1_RowUpdating"
        DataKeyNames="Id" ShowFooter="True" AutoGenerateColumns="False" Width="977px">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update" Text="Update"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Enrollment No">
                <ItemTemplate>
                    <%# Eval("Id") %>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Student Name">
                <ItemTemplate>
                    <%# Eval("Name") %>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tname" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtnewname" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Student Address">
                <ItemTemplate>
                    <%# Eval("Address") %>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="taddress" runat="server" Text='<%# Eval("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtnewaddress" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Student City">
                <ItemTemplate>
                    <%# Eval("City") %>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField='<%# Eval("City") %>' DataValueField='<%# Eval("City") %>'>
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Nadiad</asp:ListItem>
                        <asp:ListItem>Bardoli</asp:ListItem>
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Baroda</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="ddlcity" runat="server">
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Nadiad</asp:ListItem>
                        <asp:ListItem>Bardoli</asp:ListItem>
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Baroda</asp:ListItem>
                    </asp:DropDownList>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Student Gender">
                <ItemTemplate>
                    <%# Eval("Gender") %>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataTextField='<%# Eval("Gender") %>' DataValueField='<%# Eval("Gender") %>'>
                        <asp:ListItem Value="MALE" Selected="True">MALE</asp:ListItem>
                        <asp:ListItem Value="FEMALE">FEMALE</asp:ListItem>
                    </asp:RadioButtonList>
                </EditItemTemplate>

                <FooterTemplate>
                    <asp:RadioButtonList ID="rbGender" runat="server">
                        <asp:ListItem Value="MALE">MALE</asp:ListItem>
                        <asp:ListItem Value="FEMALE">FEMALE</asp:ListItem>
                    </asp:RadioButtonList>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Student Photo">
                <ItemTemplate>
                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("StudentImage") %>'></asp:Literal>
                    <asp:Image ID="Image1" runat="server" Height="121px" ImageUrl='<%# "~\\Images\\"+Eval("StudentImage") %>' Width="183px" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Literal ID="ltrleditpic" runat="server" Text='<%# Eval("StudentImage") %>'></asp:Literal>
                    <asp:Image ID="Image1" runat="server" Height="121px" ImageUrl='<%# "~\\Images\\"+Eval("StudentImage") %>' Width="183px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:FileUpload ID="newfileupload" runat="server" />
                    <asp:Button ID="btnadd" runat="server" Text="Add NEW" CommandName="INSERT" />
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

