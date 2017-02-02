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
        <h3>Add Review for <%= movieInstance.Title %></h3>

        <!--------------NEW REVIEW----------------->
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

                        <input type="submit" class="btn btn-default" value="Save" />
                    </div>
                </form>
            </div>
            <div class="col md6 card medium" style="margin-left: 30px">
                <div class="card-content white-text">
                    <span class="card-title"><%= movieInstance.Title %></span>
                    <div class="card-content">
                        <p>
                            <%= movieInstance.Genre %>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!--------------END MAIN CONTAINER----------------->
    </div>
</body>
</html>
