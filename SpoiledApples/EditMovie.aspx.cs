﻿using SpoiledApples.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpoiledApples
{
    public partial class EditMovie : System.Web.UI.Page
    {

        public Movie movieInstance;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new ReviewContext())
            {
                var movieId = int.Parse(Request.QueryString["id"]);
                movieInstance = db.Movies.First(m => m.Id == movieId);

                if (IsPostBack)
                {
                    
                    string title = Request.Form["title"];
                    string genre = Request.Form["genre"];
                    string imdbURL = Request.Form["imdbURL"];
                    DateTime release = Convert.ToDateTime(Request.Form["release"]);

                    if (title != "")
                    { movieInstance.Title = title }

                    movieInstance.Genre = Request.Form["genre"];
                    movieInstance.IMDB = Request.Form["imdbURL"];
                    movieInstance.ReleaseDate = Request.Form["release"];

                    db.Entry(movieInstance).State = EntityState.Modified;
                    db.SaveChanges();
                    Response.Redirect("Default.aspx");

                    db.SaveChanges();

                    Response.Redirect("Default.aspx");

                }
            }
        }

    }
}
