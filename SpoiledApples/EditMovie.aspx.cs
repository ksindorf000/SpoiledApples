using SpoiledApples.Models;
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
            var movieId = int.Parse(Request.QueryString["id"]);

            using (var db = new ReviewContext())
            {
                movieInstance = db.Movies.First(m => m.Id == movieId);

                if (IsPostBack)
                {
                    movieInstance.Title = Request.Form["title"];
                    movieInstance.Genre = Request.Form["genre"];
                    movieInstance.ReleaseDate = Request.Form["release"];

                    db.Entry(movieInstance).State = EntityState.Modified;
                    db.SaveChanges();
                    Response.Redirect("Default.aspx");

                    db.SaveChanges();
                }
            }

            Response.Redirect("Default.aspx");

        }

    }
}
