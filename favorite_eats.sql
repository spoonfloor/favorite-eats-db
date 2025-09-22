BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "ingredient_store_location" (
	"ID"	INTEGER,
	"ingredient_id"	INTEGER NOT NULL,
	"store_location_id"	INTEGER NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT),
	FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("ID"),
	FOREIGN KEY("store_location_id") REFERENCES "store_locations"("ID")
);
CREATE TABLE IF NOT EXISTS "ingredients" (
	"ID"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"variant"	TEXT,
	"location_at_home"	TEXT,
	"hide_from_shopping_list"	INTEGER DEFAULT 0,
	"size"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "recipe_ingredient_map" (
	"ID"	INTEGER,
	"recipe_id"	INTEGER NOT NULL,
	"ingredient_id"	INTEGER NOT NULL,
	"section_id"	INTEGER,
	"quantity"	TEXT,
	"unit"	TEXT,
	"prep_notes"	TEXT,
	"is_optional"	INTEGER DEFAULT 0,
	"subrecipe_id"	INTEGER,
	PRIMARY KEY("ID" AUTOINCREMENT),
	FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("ID"),
	FOREIGN KEY("recipe_id") REFERENCES "recipes"("ID"),
	FOREIGN KEY("section_id") REFERENCES "recipe_sections"("ID"),
	FOREIGN KEY("subrecipe_id") REFERENCES "recipes"("ID")
);
CREATE TABLE IF NOT EXISTS "recipe_sections" (
	"ID"	INTEGER,
	"recipe_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"sort_order"	INTEGER NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT),
	FOREIGN KEY("recipe_id") REFERENCES "recipes"("ID")
);
CREATE TABLE IF NOT EXISTS "recipe_steps" (
	"ID"	INTEGER,
	"recipe_id"	INTEGER NOT NULL,
	"section_id"	INTEGER,
	"step_number"	INTEGER NOT NULL,
	"instructions"	TEXT NOT NULL,
	PRIMARY KEY("ID"),
	FOREIGN KEY("recipe_id") REFERENCES "recipes"("ID"),
	FOREIGN KEY("section_id") REFERENCES "recipe_sections"("ID")
);
CREATE TABLE IF NOT EXISTS "recipes" (
	"ID"	INTEGER,
	"title"	TEXT NOT NULL,
	"servings_default"	INTEGER,
	"servings_min"	INTEGER,
	"servings_max"	INTEGER,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "store_locations" (
	"ID"	INTEGER,
	"store_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"aisle_number"	INTEGER,
	"sort_order"	INTEGER,
	PRIMARY KEY("ID" AUTOINCREMENT),
	FOREIGN KEY("store_id") REFERENCES "stores"("ID")
);
CREATE TABLE IF NOT EXISTS "stores" (
	"ID"	INTEGER,
	"chain_name"	TEXT NOT NULL,
	"location_name"	TEXT NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
INSERT INTO "ingredient_store_location" VALUES (1,10,1);
INSERT INTO "ingredient_store_location" VALUES (2,11,1);
INSERT INTO "ingredient_store_location" VALUES (3,12,1);
INSERT INTO "ingredient_store_location" VALUES (4,13,1);
INSERT INTO "ingredient_store_location" VALUES (5,14,1);
INSERT INTO "ingredient_store_location" VALUES (6,15,1);
INSERT INTO "ingredient_store_location" VALUES (7,16,1);
INSERT INTO "ingredient_store_location" VALUES (8,17,1);
INSERT INTO "ingredient_store_location" VALUES (9,18,1);
INSERT INTO "ingredient_store_location" VALUES (10,19,1);
INSERT INTO "ingredient_store_location" VALUES (11,20,1);
INSERT INTO "ingredient_store_location" VALUES (12,21,1);
INSERT INTO "ingredient_store_location" VALUES (13,22,1);
INSERT INTO "ingredient_store_location" VALUES (14,23,1);
INSERT INTO "ingredient_store_location" VALUES (15,24,1);
INSERT INTO "ingredient_store_location" VALUES (16,25,1);
INSERT INTO "ingredient_store_location" VALUES (17,26,1);
INSERT INTO "ingredient_store_location" VALUES (18,27,1);
INSERT INTO "ingredient_store_location" VALUES (19,28,1);
INSERT INTO "ingredient_store_location" VALUES (20,29,1);
INSERT INTO "ingredient_store_location" VALUES (21,30,1);
INSERT INTO "ingredient_store_location" VALUES (22,31,1);
INSERT INTO "ingredient_store_location" VALUES (23,32,1);
INSERT INTO "ingredient_store_location" VALUES (24,33,1);
INSERT INTO "ingredient_store_location" VALUES (25,34,1);
INSERT INTO "ingredient_store_location" VALUES (26,35,1);
INSERT INTO "ingredient_store_location" VALUES (27,36,1);
INSERT INTO "ingredient_store_location" VALUES (55,64,2);
INSERT INTO "ingredient_store_location" VALUES (56,65,2);
INSERT INTO "ingredient_store_location" VALUES (57,66,2);
INSERT INTO "ingredient_store_location" VALUES (58,67,2);
INSERT INTO "ingredient_store_location" VALUES (59,68,2);
INSERT INTO "ingredient_store_location" VALUES (60,69,3);
INSERT INTO "ingredient_store_location" VALUES (61,70,3);
INSERT INTO "ingredient_store_location" VALUES (62,71,3);
INSERT INTO "ingredient_store_location" VALUES (63,72,3);
INSERT INTO "ingredient_store_location" VALUES (64,73,3);
INSERT INTO "ingredient_store_location" VALUES (65,74,3);
INSERT INTO "ingredient_store_location" VALUES (66,75,3);
INSERT INTO "ingredient_store_location" VALUES (67,76,3);
INSERT INTO "ingredient_store_location" VALUES (68,77,3);
INSERT INTO "ingredient_store_location" VALUES (69,78,3);
INSERT INTO "ingredient_store_location" VALUES (70,79,3);
INSERT INTO "ingredient_store_location" VALUES (71,80,4);
INSERT INTO "ingredient_store_location" VALUES (72,81,4);
INSERT INTO "ingredient_store_location" VALUES (73,82,4);
INSERT INTO "ingredient_store_location" VALUES (74,83,4);
INSERT INTO "ingredient_store_location" VALUES (75,84,4);
INSERT INTO "ingredient_store_location" VALUES (76,85,4);
INSERT INTO "ingredient_store_location" VALUES (77,86,4);
INSERT INTO "ingredient_store_location" VALUES (78,87,4);
INSERT INTO "ingredient_store_location" VALUES (79,88,4);
INSERT INTO "ingredient_store_location" VALUES (80,89,4);
INSERT INTO "ingredient_store_location" VALUES (81,90,4);
INSERT INTO "ingredient_store_location" VALUES (82,91,4);
INSERT INTO "ingredient_store_location" VALUES (83,92,5);
INSERT INTO "ingredient_store_location" VALUES (84,93,5);
INSERT INTO "ingredient_store_location" VALUES (85,94,5);
INSERT INTO "ingredient_store_location" VALUES (86,95,5);
INSERT INTO "ingredient_store_location" VALUES (87,96,5);
INSERT INTO "ingredient_store_location" VALUES (88,97,5);
INSERT INTO "ingredient_store_location" VALUES (89,98,5);
INSERT INTO "ingredient_store_location" VALUES (90,99,6);
INSERT INTO "ingredient_store_location" VALUES (91,100,6);
INSERT INTO "ingredient_store_location" VALUES (92,101,6);
INSERT INTO "ingredient_store_location" VALUES (93,102,7);
INSERT INTO "ingredient_store_location" VALUES (94,103,7);
INSERT INTO "ingredient_store_location" VALUES (95,104,7);
INSERT INTO "ingredient_store_location" VALUES (96,105,7);
INSERT INTO "ingredient_store_location" VALUES (97,106,7);
INSERT INTO "ingredient_store_location" VALUES (98,107,7);
INSERT INTO "ingredient_store_location" VALUES (99,108,7);
INSERT INTO "ingredient_store_location" VALUES (100,109,8);
INSERT INTO "ingredient_store_location" VALUES (101,110,8);
INSERT INTO "ingredient_store_location" VALUES (102,111,8);
INSERT INTO "ingredient_store_location" VALUES (103,5,9);
INSERT INTO "ingredient_store_location" VALUES (104,112,9);
INSERT INTO "ingredient_store_location" VALUES (105,113,9);
INSERT INTO "ingredient_store_location" VALUES (106,114,9);
INSERT INTO "ingredient_store_location" VALUES (108,2,10);
INSERT INTO "ingredient_store_location" VALUES (109,116,10);
INSERT INTO "ingredient_store_location" VALUES (110,117,10);
INSERT INTO "ingredient_store_location" VALUES (111,118,10);
INSERT INTO "ingredient_store_location" VALUES (112,119,10);
INSERT INTO "ingredient_store_location" VALUES (113,120,10);
INSERT INTO "ingredient_store_location" VALUES (114,121,10);
INSERT INTO "ingredient_store_location" VALUES (115,122,10);
INSERT INTO "ingredient_store_location" VALUES (116,123,10);
INSERT INTO "ingredient_store_location" VALUES (117,124,10);
INSERT INTO "ingredient_store_location" VALUES (118,125,11);
INSERT INTO "ingredient_store_location" VALUES (119,126,11);
INSERT INTO "ingredient_store_location" VALUES (120,127,11);
INSERT INTO "ingredient_store_location" VALUES (121,128,11);
INSERT INTO "ingredient_store_location" VALUES (122,129,11);
INSERT INTO "ingredient_store_location" VALUES (123,130,11);
INSERT INTO "ingredient_store_location" VALUES (124,131,11);
INSERT INTO "ingredient_store_location" VALUES (125,132,11);
INSERT INTO "ingredient_store_location" VALUES (126,133,11);
INSERT INTO "ingredients" VALUES (2,'flour','all purpose','pantry',0,NULL);
INSERT INTO "ingredients" VALUES (3,'sugar','granulated','pantry',0,NULL);
INSERT INTO "ingredients" VALUES (4,'baking powder','','spices',0,NULL);
INSERT INTO "ingredients" VALUES (5,'salt','','spices',0,NULL);
INSERT INTO "ingredients" VALUES (6,'oat milk','','fridge',0,NULL);
INSERT INTO "ingredients" VALUES (7,'vinegar','apple cider','0',0,NULL);
INSERT INTO "ingredients" VALUES (8,'oil','canola','pantry',0,NULL);
INSERT INTO "ingredients" VALUES (9,'water','tap',NULL,1,NULL);
INSERT INTO "ingredients" VALUES (10,'dates','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (11,'grapes','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (12,'berries','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (13,'kiwi','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (14,'melon','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (15,'grapefruit','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (16,'clementine','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (17,'pears','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (18,'nectarines','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (19,'lemons','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (20,'celery','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (21,'scallions','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (22,'cabbage','purple',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (23,'carrots','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (24,'broccoli','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (25,'cauliflower','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (26,'cucumber','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (27,'apples','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (28,'bananas','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (29,'tomato','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (30,'avocado','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (31,'potato','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (32,'onion','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (33,'garlic','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (34,'mushrooms','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (35,'lettuce','butter',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (36,'spinach','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (64,'soap','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (65,'toothpaste','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (66,'epsom salt','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (67,'shampoo','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (68,'deodorant','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (69,'blueberries','frozen',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (70,'cherries','frozen',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (71,'strawberries','frozen',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (72,'corn','frozen',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (73,'peas','frozen',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (74,'edamame','frozen',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (75,'fries','frozen',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (76,'just folded eggs','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (77,'beyond beef patties','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (78,'chickn’ tenders','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (79,'ice cream','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (80,'sponges','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (81,'trash bags','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (82,'compost bags','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (83,'dish soap','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (84,'all purpose cleaner','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (85,'parchment','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (86,'aluminum foil','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (87,'waxed paper','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (88,'paper towels','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (89,'toilet paper','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (90,'cat litter','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (91,'tea','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (92,'pasta','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (93,'marinara sauce','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (94,'olive oil','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (95,'ponzu','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (96,'beans','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (97,'rice','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (98,'veg broth','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (99,'bread','dave''s killer thin-sliced',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (100,'bagels','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (101,'buns','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (102,'chips','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (103,'crackers','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (104,'seaweed','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (105,'cookies','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (106,'walnuts','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (107,'pepitas','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (108,'goji berries','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (109,'just egg','liquid',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (110,'hummus','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (111,'salsa','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (112,'oatmeal','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (113,'granola','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (114,'nutritional yeast','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (116,'flour','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (117,'date syrup','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (118,'syrup','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (119,'honey','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (120,'jam','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (121,'nocciolata','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (122,'almond butter','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (123,'pistachio butter','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (124,'coffee','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (125,'yogurt','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (126,'oatmilk','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (127,'earth balance','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (128,'butter','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (129,'coconut water','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (130,'tofu','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (131,'ramen','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (132,'veganaise','',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (133,'breakfast links','beyond beef',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (134,'black pepper',NULL,NULL,0,NULL);
INSERT INTO "ingredients" VALUES (135,'chuck',NULL,NULL,0,NULL);
INSERT INTO "ingredients" VALUES (136,'chuck','Impossible',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (137,'cashews',NULL,NULL,0,NULL);
INSERT INTO "ingredients" VALUES (138,'garlic powder',NULL,NULL,0,NULL);
INSERT INTO "ingredients" VALUES (139,'basil','dried',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (140,'oregano','dried',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (141,'lasagna noodles','no-boil',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (142,'parmesan','vegan',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (143,'basil','fresh',NULL,0,NULL);
INSERT INTO "ingredients" VALUES (147,'pine nuts',NULL,NULL,0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (1,2,94,1,'2','tablespoons','extra-virgin olive oil',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (2,2,32,1,'1','medium-to-large','yellow onion, chopped',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (3,2,23,1,'2 large or 3 medium',NULL,'carrots, chopped',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (4,2,34,1,'8','ounces','Baby Bella mushrooms, chopped',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (5,2,5,1,'0.5','teaspoon','fine sea salt (to taste)',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (6,2,36,1,'10','ounces','baby spinach',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (7,2,33,1,'2','cloves','garlic, pressed or minced',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (8,2,134,1,'to taste',NULL,'black pepper (to be added)',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (9,2,135,1,'12','oz','chuck (optional, needs ingredient entry)',1,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (10,2,137,2,'1','cups','raw cashews',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (11,2,130,2,'4','oz','firm tofu',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (12,2,114,2,'0.5','cup','nutritional yeast',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (13,2,19,2,'0.25','cup','fresh lemon juice (about 1 large lemon)',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (14,2,5,2,'0.5','tablespoon','salt',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (15,2,139,2,'2','teaspoons','dried basil',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (16,2,140,2,'2','teaspoons','dried oregano',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (17,2,138,2,'1','teaspoon','garlic powder',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (18,2,9,2,'0.5','cup','water',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (19,2,93,3,'4.5','cups','Rao’s marinara sauce',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (20,2,141,3,'18',NULL,'no-boil lasagna noodles',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (21,2,142,3,NULL,NULL,'vegan parmesan (suggested garnish)',1,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (22,2,114,3,NULL,NULL,'nutritional yeast (alternative garnish)',1,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (23,2,143,3,NULL,NULL,'fresh basil, cut in ribbons (garnish)',1,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (24,3,147,NULL,'0.75','cup','pine nuts',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (25,3,114,NULL,'0.25','cup','nutritional yeast',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (27,3,5,NULL,'0.5','teaspoon','salt',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (28,3,138,NULL,'0.5','teaspoon','garlic powder',0,NULL);
INSERT INTO "recipe_ingredient_map" VALUES (29,2,142,3,NULL,NULL,'vegan parmesan (subrecipe)',1,3);
INSERT INTO "recipe_ingredient_map" VALUES (30,2,142,3,NULL,NULL,'vegan parmesan (subrecipe)',1,3);
INSERT INTO "recipe_sections" VALUES (1,2,'Filling',1);
INSERT INTO "recipe_sections" VALUES (2,2,'Cashew Cream',2);
INSERT INTO "recipe_sections" VALUES (3,2,'Assembly',3);
INSERT INTO "recipe_sections" VALUES (7,3,'Default',1);
INSERT INTO "recipe_steps" VALUES (1,1,NULL,1,'In a large bowl, whisk together the flour, baking powder, salt and sugar.');
INSERT INTO "recipe_steps" VALUES (2,1,NULL,2,'Pour the milk, water and oil into the bowl with the dry ingredients, and stir with a large spoon until just combined. A few lumps are okay. Don‘t over-mix or your pancakes won''t be as fluffy.');
INSERT INTO "recipe_steps" VALUES (3,1,NULL,3,'Heat a large griddle or pan over medium-high heat.');
INSERT INTO "recipe_steps" VALUES (4,1,NULL,4,'Grease the pan with vegan butter and drop about ⅓ by cup of the batter onto it.');
INSERT INTO "recipe_steps" VALUES (5,1,NULL,5,'Cook until bubbles form, then flip and cook until golden brown on the other side, about 1-2 minutes.');
INSERT INTO "recipe_steps" VALUES (6,2,NULL,1,'Preheat the oven to 425°F.');
INSERT INTO "recipe_steps" VALUES (7,2,1,2,'In a large skillet over medium heat, warm the olive oil.');
INSERT INTO "recipe_steps" VALUES (8,2,1,3,'Once shimmering, add the onion, carrots, mushrooms, salt and several twists of black pepper.');
INSERT INTO "recipe_steps" VALUES (9,2,1,4,'Cook, stirring every couple of minutes; at about 4 minutes add the chuck if using, then continue cooking until most of the moisture is gone and the vegetables are tender and turning golden on the edges, and the chuck is browned.');
INSERT INTO "recipe_steps" VALUES (10,2,1,5,'Add spinach and cook until wilted.');
INSERT INTO "recipe_steps" VALUES (11,2,1,6,'Add the garlic and cook until fragrant, stirring constantly, about 30 seconds.');
INSERT INTO "recipe_steps" VALUES (12,2,1,7,'Remove the skillet from the heat and season to taste with salt and pepper.');
INSERT INTO "recipe_steps" VALUES (13,2,2,8,'In a blender, combine the cashew cream ingredients.');
INSERT INTO "recipe_steps" VALUES (14,2,2,9,'Blend until the mixture is smooth and creamy, stopping to scrape down the sides as necessary.');
INSERT INTO "recipe_steps" VALUES (15,2,2,10,'Set aside.');
INSERT INTO "recipe_steps" VALUES (16,2,3,11,'Assemble the lasagne in a 9x13 inch baking dish by layering: 1 cup tomato sauce, 6 noodles, ½ cup cashew ricotta, half of the veggies, 1 cup tomato sauce, 6 noodles, ½ cup cashew ricotta, remaining veggies, 1 cup tomato sauce, 6 noodles, and finish with 1 cup tomato sauce.');
INSERT INTO "recipe_steps" VALUES (17,2,3,12,'Wrap a sheet of heavy duty aluminum foil around the top of the lasagna, making sure it’s taut so it doesn’t touch the top.');
INSERT INTO "recipe_steps" VALUES (18,2,3,13,'Bake, covered, for 25 minutes at 425°F.');
INSERT INTO "recipe_steps" VALUES (19,2,3,14,'Remove the foil, rotate the pan by 180°, and continue cooking for about 5 to 10 more minutes, until it’s steaming and lightly bubbling at the corners.');
INSERT INTO "recipe_steps" VALUES (20,2,3,15,'Remove the pan from the oven and let the lasagna cool for 15 to 20 minutes before serving, so it has time to set and cool down to a reasonable temperature.');
INSERT INTO "recipe_steps" VALUES (21,3,NULL,1,'Toast the pine nuts in an air fryer on air crisp for about 5 minutes, until lightly golden.');
INSERT INTO "recipe_steps" VALUES (22,3,NULL,2,'Finely chop the toasted pine nuts.');
INSERT INTO "recipe_steps" VALUES (23,3,NULL,3,'In a mixing bowl, combine the pine nuts, nutritional yeast, salt, and garlic powder.');
INSERT INTO "recipe_steps" VALUES (24,3,NULL,4,'Stir until well mixed.');
INSERT INTO "recipes" VALUES (1,'pancakes',8,4,12);
INSERT INTO "recipes" VALUES (2,'lasagna',6,6,6);
INSERT INTO "recipes" VALUES (3,'vegan parmesan',12,12,12);
INSERT INTO "store_locations" VALUES (1,1,'produce',NULL,1);
INSERT INTO "store_locations" VALUES (2,1,'health and beauty',NULL,2);
INSERT INTO "store_locations" VALUES (3,1,'frozen food',NULL,3);
INSERT INTO "store_locations" VALUES (4,1,'cleaning products',NULL,4);
INSERT INTO "store_locations" VALUES (5,1,'pasta',NULL,5);
INSERT INTO "store_locations" VALUES (6,1,'bakery',NULL,6);
INSERT INTO "store_locations" VALUES (7,1,'snack foods',NULL,7);
INSERT INTO "store_locations" VALUES (8,1,'deli',NULL,8);
INSERT INTO "store_locations" VALUES (9,1,'breakfast',NULL,9);
INSERT INTO "store_locations" VALUES (10,1,'baking',NULL,10);
INSERT INTO "store_locations" VALUES (11,1,'dairy',NULL,11);
INSERT INTO "stores" VALUES (1,'whole foods','ocean avenue');
COMMIT;
