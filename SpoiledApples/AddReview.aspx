<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddReview.aspx.cs" Inherits="SpoiledApples.AddReview" %>

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

        <div class="col sm12 md4">
            <!--------------HEADING----------------->
            <h4>Add Review for <%= movieInstance.Title %></h4>

            <!--------------ADD NEW REVIEW----------------->
            <form runat="server" method="post">
                <div class="form-group">
                    <input type="text" class="form-control validate" name="name" required="" aria-required="true" placeholder="Your Name" />
                    <label class="active" for="rating">Rating</label>
                    <input type="number" class="form-control validate" id="rating" required="" aria-required="true"name="rating" />
                    <%-- <% if (!valid)
                    { %>
                <label for="rating" data-error="Invalid rating.">Rating</label>
                <% } %>--%>
                </div>
                <input type="submit" class="btn btn-default" value="Save" />
            </form>
        </div>

        <!-----------MOVIE DETAILS------------>
        <div class="col sm12 md6">
            <div class="card dark-primary-color details">
                <div class="card-image">
                    <img src="<%= movieInstance.imgURL %>" class="details-img" />
                </div>
                <div class="card-content white-text">
                    <p>
                        <%= movieInstance.Genre %> - Released: <%= movieInstance.ReleaseDate %><br />
                        <span class="avg"><%= movieInstance.AverageRating %>/10</span>
                    </p>
                </div>
                <div class="card-action">
                    <a href="EditMovie.aspx?id=<%= movieInstance.Id %>"
                        class="btn-floating halfway-fab waves-effect waves-light green">
                        <i class="material-icons accent-color">mode_edit</i>
                    </a>
                </div>
            </div>
        </div>

        <!--------------REVIEWS----------------->
        <div class="row">
            <div class="col sm12 md4" style="width: 60%">
                <table class="striped bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
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
</body>
</html>
