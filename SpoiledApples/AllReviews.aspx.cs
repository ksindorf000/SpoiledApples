using SpoiledApples.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace SpoiledApples
{
    public partial class AllReviews : System.Web.UI.Page
    {        
        public List<Review> reviewList;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new ReviewContext())
            {
                reviewList = db.Reviews
                           .Include(r => r.Movie)
                           .OrderBy(r => r.Movie.Title)
                           .ToList();
            }
        }
    }
}

