<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddReview.aspx.cs" Inherits="SpoiledApples.AddReview" %>

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
                <a href="#" class="brand-logo">Spoiled Apples</a>
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
        <h3>Add Review for <%= movieInstance.Title %></h3>

        <!--------------ADD NEW REVIEW----------------->
        <div class="row">
            <div class="col md6">
                <form runat="server" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" name="name" placeholder="Your Name" />
                        <label class="active" for="rating">Rating</label>
                        <input type="number" class="form-control" id="rating" name="rating" />
                        <%-- <% if (!valid)
                    { %>
                <label for="rating" data-error="Invalid rating.">Rating</label>
                <% } %>--%>
                    </div>
                    <input type="submit" class="btn btn-default" value="Save" />
                </form>
            </div>
        </div>
        <!--------------REVIEWS----------------->
        <table style="float: left">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Reviewer</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <% foreach (var review in reviewList)
                { %>
            <tr>
                <td><%=review.Id %></td>
                <td><%=review.Reviewer %></td>
                <td><%=review.Rating %>/10</td>
            </tr>
            <% } %>
        </table>

        <!-----------MOVIE DETAILS------------>
        <div class="col md6 card medium dark-primary-color" style="margin-left: 30px; float: right">
            <div class="card-content white-text">
                <span class="card-title"><%= movieInstance.Title %></span>
                <a href="EditMovie.aspx?id=<%= movieInstance.Id %>"
                    class="btn-floating halfway-fab waves-effect waves-light green">
                    <i class="material-icons accent-color">mode_edit</i>
                </a>
                <div class="card-content">
                    <p>
                        <%= movieInstance.Genre %>
                    </p>
                </div>
            </div>
        </div>

        <!--------------END MAIN CONTAINER----------------->
    </div>

</body>
</html>
