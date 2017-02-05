<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpoiledApples.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/materialize.css" rel="stylesheet" type="text/css" />
    <link href="css/appstyles.css" rel=" stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="css/palette-browngreen.css" rel="stylesheet" type="text/css" />

    <title>Spoiled Apples</title>
</head>
<body class="light-primary-color">

    <!--------------NAVIGATION----------------->
    <nav>
        <div class="nav-wrapper accent-color">
            <div class="container">
                <a href="#" class="brand-logo">Spoiled Apples</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="Default.aspx">All Movies</a></li>
                    <li><a href="AllReviews.aspx">All Reviews</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!--------------MAIN CONTAINER----------------->
    <div class="container ex-top-margin">

        <!--------------MOVIES----------------->
        <div class="row">
            <%-- (+) restrict to 6 most recently released movies 
                and add new page that lists all movies alphabetically
            --%>
            <% foreach (var movie in Movies)
                { %>
            <div class="col s12 m4">
                <div class="card horizontal default-primary-color">
                    <div class="card-image">
                        <a href="EditMovie.aspx?id=<%= movie.Id %>">
                            <img src="<%= movie.imgURL %>" class="thumbnail-img" />
                        </a>
                    </div>
                    <div class="card-stacked">
                        <div class="card-content primary-text-color">
                            <span class="card-title white-text"><%= movie.Title %></span>
                            <a href="AddReview.aspx?id=<%= movie.Id %>"
                                class="btn-floating halfway-fab waves-effect waves-light green">
                                <i class="material-icons accent-color">comment</i>
                            </a>
                            <sup><%= movie.Genre %> </sup>
                            <div class="card-action">
                                <span class="avg">
                                    <%= string.Format("{0:00.0}", movie.AverageRating.ToString()) %>/10 
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>

        <a href="AddMovie.aspx" class="btn-floating waves-effect waves-light red" style=""><i class="material-icons">add</i></a>

        <!--------------END MAIN CONTAINER----------------->
    </div>

    <!--------------JavaScript Source----------------->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

</body>
</html>
