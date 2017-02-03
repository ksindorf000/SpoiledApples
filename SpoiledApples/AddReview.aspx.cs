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
    public partial class AddReview : System.Web.UI.Page
    {
        public Review reviewInstance;
        //bool valid = true;
        public Movie movieInstance;
        public List<Review> reviewList;
        public double avgRating;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new ReviewContext())
            {
                var movieId = int.Parse(Request.QueryString["id"]);
                movieInstance = db.Movies.First(m => m.Id == movieId);
                reviewList = db.Reviews.Where(r => r.MovieId == movieId).ToList();

                //if (ratingInt > 10 || ratingInt < 1)
                //{
                //    valid = false;
                //}
                //else
                //{
                //    valid = true;

                /*********************Add New Review***********************/
                if (IsPostBack)
                {
                    int ratingInt = int.Parse(Request.Form["rating"]);

                    var review = new Review
                    {
                        Reviewer = Request.Form["name"],
                        Rating = ratingInt,
                        MovieId = movieId,
                    };

                    db.Reviews.Add(review);
                    db.SaveChanges();
                    
                    /*********************Repopulate Review List***********************/
                    reviewList.ToList();

                    /*********************Calculate Average***********************/
                    foreach (var reviewInst in reviewList)
                    {
                        avgRating += reviewInst.Rating;
                    }

                    avgRating /= reviewList.Count();

                    movieInstance.AverageRating = avgRating;

                    db.Entry(movieInstance).State = EntityState.Modified;

                    db.SaveChanges();
                    //}

                    Response.Redirect("Default.aspx");
                }
                
            }
        }
    }
}