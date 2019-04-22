﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderandFooter.master" AutoEventWireup="true" CodeFile="Sign Up.aspx.cs" Inherits="Sign_Up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Sign Up</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 

    <style>
        #box {
            background-image: url(Images/pic3.jpg);
            background-repeat:repeat;
            background-attachment:fixed;
            background-size:cover;
            padding-top:100px;
            padding-bottom:100px;
            margin: 0px;
            width:100%;
            height:100%;
           
        }
        #form {
            background-color:white;
            padding:50px 100px 50px 100px;
            border-radius:10px;
            margin-right:360px;
            margin-left:360px;       
        }
        #signupbtn {
            width: 300px;
            background-color: rgb(231, 145, 72);
            border:none;
        }
        #member {
            
        }
        h2 {
            color:navy;
            text-align:center;
            margin-bottom:50px;
        }
		
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div id="box" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div id="form">
            
                <h2>Sign Up</h2>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                           
            <div class="col-xs-11">
                <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox ID="tbfname" runat="server" Class="form-control"></asp:TextBox>
            </div>

            <div class="col-xs-11">
            <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="tblname" runat="server" Class="form-control"></asp:TextBox>
            </div>

            <div class="col-xs-11">
            <asp:Label ID="Label4" runat="server" Text="Date Of Birth"></asp:Label>
            <asp:TextBox ID="tbdob" runat="server" Class="form-control" TextMode="Date"></asp:TextBox>
            </div>

            <div class="col-xs-11">
            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="tbemail" runat="server" Class="form-control" TextMode="Email"></asp:TextBox>
            </div>

            <div class="col-xs-11">
            <asp:Label ID="Label6" runat="server" Text="Phone No."></asp:Label>
            <asp:TextBox ID="tbphone" runat="server" Class="form-control"></asp:TextBox>
            </div>

            <div class="col-xs-11">
            <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="tbaddress" runat="server" Class="form-control"></asp:TextBox>
            </div>

            <div class="col-xs-11">
            <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
            <asp:DropDownList ID="tbdcity" runat="server" Class="form-control" DataSourceID="Rentrackdb" DataTextField="city_name" DataValueField="city_name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Rentrackdb" runat="server" ConnectionString="<%$ ConnectionStrings:RentrackdbConnectionString %>" SelectCommand="SELECT [city_name] FROM [City]"></asp:SqlDataSource>
            </div>

            <div class="col-xs-11">
            <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="tbpassword" runat="server" Class="form-control" TextMode="Password"></asp:TextBox>
            </div>

            <div class="col-xs-11">
            <asp:Label ID="Label10" runat="server" Text="Retype Password"></asp:Label>
            </div>

            <div class="col-xs-11">
            <asp:TextBox ID="tbrepassword" runat="server" Class="form-control" TextMode="Password"></asp:TextBox>
            </div>
                
            <div class="col-xs-11 space-vert" style="margin-top:20px; margin-bottom:20px;">   
            <asp:Button id="signupbtn" runat="server" class= "btn btn-success" Style="width:285px; background-color:navy;" OnClick="signup_btn" Text="Sign Up" />
            </div>

            <div class="col-xs-11 space-vert align-content-center">
            <asp:Label ID="member" Style="text-align:center; " runat="server" Text="Already a Member?"></asp:Label>                
            <a href="#"><button id="lgbtn" class="btn">Login</button></a>
            </div>
        
          
            </div>    
        </div>
    </div>
   
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</asp:Content>

