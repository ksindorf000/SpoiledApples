namespace SpoiledApples.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedImgURLToMovieTable : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Movies", "imgURL", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Movies", "imgURL");
        }
    }
}
