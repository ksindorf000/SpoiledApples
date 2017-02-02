namespace SpoiledApples.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ChangedReleaseDateToString : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Movies", "ReleaseDate", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Movies", "ReleaseDate", c => c.DateTime(nullable: false));
        }
    }
}
