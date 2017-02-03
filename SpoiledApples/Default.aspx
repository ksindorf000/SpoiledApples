<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpoiledApples.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/materialize.css" rel="stylesheet" type="text/css" />
    <link href="css/appstyle.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="css/palette-browngreen.css" rel="stylesheet" type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

    <title>Spoiled Apples</title>
</head>
<body style="background-color: #D7CCC8">

    <!--------------NAVIGATION----------------->
    <nav>
        <div class="nav-wrapper accent-color">
            <div class="container">
                <a href="#" class="brand-logo">Spoiled Apples</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="Default.aspx">All Movies</a></li>
                    <li><a href="AddMovie.aspx">Add Movie</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!--------------MAIN CONTAINER----------------->
    <div class="container" style="margin-top: 30px">

        <!--------------HEADING----------------->
        <h3 style="text-align: center">All Movies</h3>

        <!--------------MOVIES----------------->
        <div class="row">
            <% foreach (var movie in Movies)
                { %>
            <div class="col s4 m4 card dark-primary-color" style="margin: 5px 5px 17px 5px">
                <div class="card-content white-text">
                    <span class="card-title"><%= movie.Title %></span>
                    <a href="AddReview.aspx?id=<%= movie.Id %>" 
                        class="btn-floating halfway-fab waves-effect waves-light green">
                        <i class="material-icons accent-color">comment</i>
                    </a>
                    <div class="card-content">
                        <p>
                            <%= movie.Genre %>
                        </p>
                    </div>
                </div>
            </div>
            <% } %>
        </div>

        <a href="AddMovie.aspx" class="btn-floating waves-effect waves-light red" style=""><i class="material-icons">add</i></a>


        <!--------------END MAIN CONTAINER----------------->
    </div>
</body>
</html>
