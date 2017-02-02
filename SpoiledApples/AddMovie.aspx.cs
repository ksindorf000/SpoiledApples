using SpoiledApples.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpoiledApples
{
    public partial class AddMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.Form.AllKeys.Contains("title"))
            if (IsPostBack)
            {
                using (var db = new ReviewContext())
                {
                    var movie = new Movie
                    {
                        Title = Request.Form["title"],
                        Genre = Request.Form["genre"],
                        IMDB = Request.Form["imdbURL"],
                        ReleaseDate = Request.Form["release"]
                    };

                    db.Movies.Add(movie);
                    db.SaveChanges();

                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}