<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMovie.aspx.cs" Inherits="SpoiledApples.AddMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/materialize.css" rel="stylesheet" type="text/css" />
    <link href="css/appstyles.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="css/palette-browngreen.css" rel="stylesheet" type="text/css" />

    <title>Spoiled Apples</title>
</head>
<body class="light-primary-color">

    <!--------------NAVIGATION----------------->
    <nav>
        <div class="nav-wrapper accent-color">
            <div class="container">
                <a href="Default.aspx" class="brand-logo">Spoiled Apples</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="Default.aspx">All Movies</a></li>
                    <li><a href="AllReviews.aspx">All Reviews</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!--------------MAIN CONTAINER----------------->
    <div class="container ex-top-margin">

         <!--------------HEADING----------------->
        <h4>Add Movie</h4>

        <!--------------NEW MOVIE----------------->
        <form runat="server" method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="title" placeholder="Title" />
                <input type="text" class="form-control" name="genre" placeholder="Genre" />
                <input type="text" class="form-control" name="imdbURL" placeholder="IMDB URL" />
                <input type="text" class="form-control" name="img" placeholder="Image URL" />
                <input type="date" class="form-control" name="release" />
                <input type="submit" class="btn btn-default" value="Save" />
            </div>
        </form>

        <!--------------END MAIN CONTAINER----------------->
    </div>
</body>
</html>
