<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MetroGnome808.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <nav class="navbar navbar-expand-lg navbar-light bg-info">
         
          
          <a class="navbar-brand" href="#">Home</a>
        <%--Following: toggler in collapse with name--%>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
           <%--Allows special screen users to aria-readonly page--%>
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Content">
            <span class="navbar-toggler-icon"></span>
        </button>

        <%--Make div inside nav/creating an unordered list if collapsed and move it to right (Span above is important)--%>
        <div class="navbar-collapse collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="About.aspx">About</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">
                        Schedule
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Schedule Now</a>
                        <a class="dropdown-item" href="#">View Availability</a>
                    </div>
                </li>

                
            </ul>
            <form class="form-inline">
                <input class="form-control mr-sm-2" type="search" placeholder="Search"/>
                <button class="btn btn-outline-light bg-danger" type="submit">Search</button>
            </form>
        </div>
    </nav>
    
        <div>
            <div id="EmailInput" class="Hide BigSpacing">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="p-3 mb-3 bg-light rounded" id="EmailInputHeader">
                        <p class="mb-0">Please fill out the email address</p>
                    </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    <br />
                                    
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="Send Email" class="btn btn-default" />&nbsp;
                    <button type="button" class="btn Purple btn-block Spacing" onclick="backEmail()">Back</button>
                </div>
                <div class="col-md-2 col-lg-2"></div>
            </div>
        </div>
        </div>
    
</asp:Content>
