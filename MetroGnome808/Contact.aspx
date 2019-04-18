<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MetroGnome808.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    <style>
    body {background-color: #333;}
    p {color: White ;}
    input {color: White;}
    button {color: White;}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div>
            <div id="EmailInput" class="Hide BigSpacing">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="p-3 mb-3" id="EmailInputHeader" >
                        <p class="mb-0">Please enter your contact information</p>
                    </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="White"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Artist Name" ForeColor="White"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                             <asp:Label ID="Label3" runat="server" Text="Email" ForeColor="White"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Message (500 Words Max)" ForeColor="White"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox4" runat="server" Height="213px" Width="361px"></asp:TextBox>
                        </div>
                     <asp:Button ID="Button2" runat="server" BackColor="#990099" ForeColor="White" Text="Back" />
                        <asp:Button ID="Button1" runat="server" BackColor="#990099" ForeColor="White" Text="Send Email" />
                    &nbsp;
                </div>
                <div class="col-md-2 col-lg-2"></div>
            </div>
        </div>
        </div> 
    
</asp:Content>
