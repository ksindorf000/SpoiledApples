<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpoiledApples.Default" %>

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
                    <li><a href="AddMovie.html">Add/Edit Movie</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!--------------MAIN CONTAINER----------------->
    <div class="container">

        <!--------------HEADING----------------->

        <h1>Hello World!</h1>

        <!--------------MOVIES----------------->
        <div class="row">
            <% foreach (var movie in Movies)
                { %>
            <div class="col s4 m4 card deep-orange" style="margin: 5px 5px 5px 5px">
                <div class="card-content white-text">
                    <span class="card-title"><%= movie.Title %></span>
                    <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
                    <div class="card-content">
                        <p>
                            <%= movie.Genre %>
                        </p>
                    </div>
                </div>
            </div>
            <% } %>
        </div>

        <!--------------END MAIN CONTAINER----------------->
    </div>
</body>
</html>
