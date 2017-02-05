<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllReviews.aspx.cs" Inherits="SpoiledApples.AllReviews" %>

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
        <h4>All Reviews</h4>

        <!--------------REVIEWS----------------->
        <div class="row">
            <div class="col sm12 md12" style="width: 100%">
                <table class="striped bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Movie Title</th>
                            <th>Reviewer</th>
                            <th>Rating</th>
                        </tr>
                    </thead>
                    <% if (reviewList.Count() == 0)
                        { %>
                    <tr>
                        <td colspan="3">Gold star! You're the first review!</td>
                    </tr>
                    <% } %>
                    <% else
                        { %>
                    <% foreach (var review in reviewList)
                        { %>
                    <tr>
                        <td><%=review.Id %></td>
                        <td><a href="AddReview.aspx?id=<%=review.MovieId %>"><%=review.Movie.Title %></a></td>
                        <td><%=review.Reviewer %></td>
                        <td><%=review.Rating%></td>
                    </tr>
                    <% } %>
                    <% } %>
                </table>
            </div>
        </div>

        <!--------------END MAIN CONTAINER----------------->
    </div>

    <!--------------JavaScript Source----------------->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

</body>
</html>
