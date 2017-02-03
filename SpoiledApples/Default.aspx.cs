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
        public List<Review> reviewList;
        public string avgStr;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new ReviewContext())
            {
                Movies = db.Movies.ToList();
                reviewList = db.Reviews.ToList();

                /*********************Calculate Average***********************/
                double avgRating = 0;
                foreach (var review in reviewList)
                {
                    avgRating += review.Rating;
                }

                avgRating /= reviewList.Count();
                avgStr = String.Format("{0:0.00}", avgRating);
            }
        }
    }
}