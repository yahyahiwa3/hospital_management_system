﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staff.aspx.cs" Inherits="shar_hospital.staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="style.css" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style>
    body{
      background-image: url("Images/back3.jpg");
      background-size: 100%;
    
    }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
 
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top   ">
            <a class="navbar-brand " href="index.aspx">Shar Hospital</a>
            <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#nav">
              <span class="navbar-toggler-icon"></span>
            </button>
      
            <div class="collapse navbar-collapse " id="nav">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="login.aspx">login</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                    Catagories
                  </a>
                 <div class="dropdown-menu">
                    <a class="dropdown-item" href="dsch.aspx">Doctor's Schedule</a>
                    <a class="dropdown-item" href="getamb.aspx">Get An Ambulance</a>
                    <a class="dropdown-item" href="users.aspx">Buy Medicine </a>
                  </div>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="about.html">About</a>
                  </li>
              </ul>
              <form class="form-inline my-2 my-md-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search for Doctors">
                <button class="btn btn-outline-light mt-2 mt-sm-0" type="submit">Search</button>
              </form>
            </div>
          </nav>
    </header>
            <style>
                .imgdiv img{
                    height:140px;width:140px;
                    border-radius:7px;
                    margin-top:30px !important; 
                }
                .imgdiv,div{border-radius:10px;}
            </style>
            <div class="col-8 m-auto row mp p-2 shadow justify-content-around" style="margin-top:150px !important;background-color:rgb(255 255 255 / 0.1)">
                <div class="col-3 imgdiv bg-white shadow m-2 p-1">
                    <a href="chamb.aspx">
                    <img class="d-block m-auto" src="data:image/png;base64,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" />
                    <label class="text-capitalize d-block text-center">ambulance</label></a>
                </div>
                <div class="col-3 imgdiv bg-warning m-2 shadow p-1">
                    <a href="apm.aspx">
                    <img class="d-block m-auto" src="https://thumbs.dreamstime.com/b/calendar-appointment-day-circled-reminder-19147605.jpg" />
                    <label class="text-capitalize  d-block text-center">Appoiment</label>
                    </a>
                </div>
                <div class="col-3 imgdiv bg-success m-2 shadow p-1">
                    <a href="apm.aspx">
                    <img class="d-block m-auto" src="data:image/jpeg;base64,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" />
                    <label class="text-capitalize  d-block text-center">by medicen</label>
                    </a>
                </div>
            </div>
        </div>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </form>
</body>
</html>