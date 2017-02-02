using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SpoiledApples.Models
{
    public class Movie
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Genre { get; set; }
        public string IMDB { get; set; }
        public DateTime ReleaseDate { get; set; }
    }
}