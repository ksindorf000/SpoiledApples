<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpoiledApples.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/materialize.css" rel="stylesheet" type="text/css" />
    <title>Spoiled Apples</title>
</head>
<body>
    <div class="container">
        <h1>Hello World!</h1>
        <div class="row">

            <% foreach (var movie in Movies)
                { %>
            <div class="grid-example col s6 m4">
                <span class="flow-text">
                    <h4><%= movie.Title %></h4>
                    <p>
                        <%= movie.Genre %>
                    </p>
                </span>
            </div>
            <% } %>
        </div>

    </div>
</body>
</html>
