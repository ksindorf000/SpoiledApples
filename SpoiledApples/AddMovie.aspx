﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMovie.aspx.cs" Inherits="SpoiledApples.AddMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/materialize.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <title>Spoiled Apples</title>
</head>
<body>

    <!--------------NAVIGATION----------------->
    <nav>
        <div class="nav-wrapper">
            <div class="container">
                <a href="#" class="brand-logo">Logo</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="Default.aspx">All Movies</a></li>
                    <%--<li><a href="AddReview.aspx">Add Review</a></li>--%>
                    <li><a href="AddMovie.aspx">Add/Edit Movie</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!--------------MAIN CONTAINER----------------->
    <div class="container">

        <!--------------HEADING----------------->

        <h1>Hello World!</h1>

        <!--------------NEW MOVIE----------------->
        <form runat="server" method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="title" placeholder="Title" />
                <input type="text" class="form-control" name="genre" placeholder="Genre" />
                <input type="text" class="form-control" name="imdbURL" placeholder="IMDB URL" />
                <input type="date" class="form-control" name="release" />
                <input type="submit" class="btn btn-default" value="Add" />
            </div>
        </form>

        <!--------------END MAIN CONTAINER----------------->
    </div>
</body>
</html>
