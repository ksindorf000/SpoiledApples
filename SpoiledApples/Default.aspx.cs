using SpoiledApples.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpoiledApples
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Movie> Movies;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new ReviewContext())
            {
                Movies = db.Movies.ToList();
            }
        }
    }
}