﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpoiledApples.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/materialize.css" rel="stylesheet" type="text/css" />
    <title>Spoiled Apples</title>
</head>
<body>
    <div class="container">
        <h1>Hello World!</h1>
        <% foreach (var movie in Movies)
            { %>
        <%= movie.Title %>
        <% } %>
    </div>
</body>
</html>
