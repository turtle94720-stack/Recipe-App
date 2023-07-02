# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Recipe.create(name: "Banana Zucchini Bread", preparation_time: 15, cooking_time: 45, description: "Banana zucchini bread combines two of my favorites: banana walnut bread and zucchini bread. This banana zucchini bread is moist and subtly sweet. Plus, it's a great way to sneak healthy ingredients into a crowd-pleasing treat!", image: "https://www.allrecipes.com/thmb/zaFf3GxF3JQnXSvm2ss02Y2gyKs=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/3894402-e8a0eab7a0e4418fada2c27859ee6f4f.jpg", public: true, user_id: 1);

Recipe.create(name: "Arugula Salad", preparation_time: 20, cooking_time: 0, description: "This juicy, vibrant arugula salad features fresh cherries, peaches, and nectarines for a summery flavor. For an extra touch of sweetness, opt for rosé vinegar, a rosé wine-based vinegar with a bright, fruity flavor.", image: "https://www.allrecipes.com/thmb/EC7FTg4V4z3ijZyHMVmdXTlkFaQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7506181-arugula-salad-with-stone-fruit-GOLDMAN-4x3-5066-df2290fa4eaf49689258d9100e1170f4.jpg", public: true, user_id: 1);

Recipe.create(name: "Bruschetta Chicken Pasta", preparation_time: 20, cooking_time: 25, description: "If you like a good, rustic bruschetta...you're gonna love this pasta dish with pan-seared chicken. The freshness of the tomatoes, basil, and garlic will leave your family wanting more!", image: "https://www.allrecipes.com/thmb/zaFf3GxF3JQnXSvm2ss02Y2gyKs=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/3894402-e8a0eab7a0e4418fada2c27859ee6f4f.jpg", public: true, user_id: 1);

Recipe.create(name: "Taco Soup", preparation_time: 10, cooking_time: 240, description: "This is a quick, throw together slow cooker soup packed with all the flavors you'd expect in a Tex-Mex chili. Simply adjust to your taste, adding more taco seasoning, or freshly chopped jalapeno peppers for extra heat. Teenagers love this soup topped with tortilla chips, shredded Cheddar cheese and a dollop of sour cream.", image: "https://www.allrecipes.com/thmb/P_fjZwSFd-pxkryWphdMVLqwIDs=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/16678-slow-cooker-taco-soup-ddmfs-beauty-3x4-4b64d4cf431c448bb86d440086e42e5a.jpg", public: true, user_id: 1);

Recipe.create(name: "Tom Cruise Cake", preparation_time: 20, cooking_time: 85, description: "This is a copycat Tom Cruise cake, aka the white chocolate coconut Bundt cake that Tom Cruise sends every Christmas to a select list of friends — it is definitely worth jumping on a couch for in my opinion!", image: "https://www.allrecipes.com/thmb/cwhR4C5RHe7DZ7Fd0uMYyWH7lwM=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/1675027295DSC_1495202-2000-6a33549a08db4c83a00122583b312cdd.jpg", public: true, user_id: 1);
