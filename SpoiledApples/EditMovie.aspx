<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditMovie.aspx.cs" Inherits="SpoiledApples.EditMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/materialize.css" rel="stylesheet" type="text/css" />
    <link href="css/appstyle.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="css/palette-browngreen.css" rel="stylesheet" type="text/css" />

    <title>Spoiled Apples</title>
</head>
<body style="background-color: #D7CCC8">

    <!--------------NAVIGATION----------------->
    <nav>
        <div class="nav-wrapper accent-color">
            <div class="container">
                <a href="#" class="brand-logo">Logo</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="Default.aspx">All Movies</a></li>
                    <li><a href="AddMovie.aspx">Add Movie</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!--------------MAIN CONTAINER----------------->
    <div class="container">

        <!--------------HEADING----------------->
        <h3>Edit <%= movieInstance.Title %></h3>

        <!--------------NEW MOVIE----------------->
        <form runat="server" method="post">
            <div class="form-group">
                <input type="text" class="form-control primary-text-color" name="title" value="<%= movieInstance.Title %>" />
                <input type="text" class="form-control primary-text-color" name="genre" value="<%= movieInstance.Genre %>" />
                <input type="text" class="form-control primary-text-color" name="imdbURL" value="<%= movieInstance.IMDB %>" />
                <input type="date" class="form-control primary-text-color" name="release" />
                <input type="submit" class="btn btn-default" value="Save" />
            </div>
        </form>

        <!--------------END MAIN CONTAINER----------------->
    </div>
</body>
</html>
