using FoodSupplementsSystem.Data.Models;
using System.Data.Entity.Migrations;
using System.Linq;

namespace FoodSupplementsSystem.Data.Migrations
{
    public sealed class Configuration : DbMigrationsConfiguration<FoodSupplementsSystem.Data.FoodSupplementsSystemDbContext>
    {
        public Configuration()
        {
            this.AutomaticMigrationsEnabled = true;
            this.AutomaticMigrationDataLossAllowed = true;
        }

        protected override void Seed(FoodSupplementsSystem.Data.FoodSupplementsSystemDbContext context)
        {
            if (context.Supplements.Any())
            {
                return;
            }

            var user = new User()
            {
                UserName = "Ana"
            };

            context.Users.Add(user);

            context.SaveChanges();

            var seed = new SeedData(user);

            seed.Categories.ForEach(x => context.Categories.Add(x));

            seed.Topics.ForEach(x => context.Topics.Add(x));

            seed.Brands.ForEach(x => context.Brands.Add(x));

            seed.Comments.ForEach(x => context.Comments.Add(x));

            seed.Supplements.ForEach(x => context.Supplements.Add(x));

            context.SaveChanges();
        }
    }
}
