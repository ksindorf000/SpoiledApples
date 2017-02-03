namespace SpoiledApples.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedAvgRatingToMovie : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Movies", "AverageRating", c => c.Double(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Movies", "AverageRating");
        }
    }
}
