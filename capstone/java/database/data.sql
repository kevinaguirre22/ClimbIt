BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role) VALUES('kevin1','$2a$10$z1aZXjPTXdqw6MFWuG59jep4ZFFeoLi/lueBsmqyKoAokPVQPdI6G','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES('jeff1','$2a$10$TG4zgsZHjdhHlx40IdZY3ux060Cd52dv/hRRfy1c4xp2YcU6TSEbW','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES('allan1','$2a$10$OvoSz9P8Zb72Fw86sYi0puGPX56t9PnR0UmzS.IK6pQf515nbDBlO','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES('michael1','$2a$10$Z5Of0z2u9OkFNTXFyJwFKOGUQMn5RISWzty2Ek2n1E2hvKqBnXSGK','ROLE_USER');

INSERT INTO profiles (user_id, name, location, bio) VALUES (1, 'user', 'user', 'user');
INSERT INTO profiles (user_id, name, location, bio) VALUES (2, 'admin', 'user', 'user');
INSERT INTO profiles (user_id, name, location, bio,picture_id) VALUES (3, 'kevin a', 'Long Island, NY', 'Hey, Im climin here!','cld-sample-2');
INSERT INTO profiles (user_id, name, location, bio,picture_id) VALUES (4, 'jeff blublowski', 'chitown', 'im a trad-dad like my trad-dad before me. Grateful Dead 4ever!','cld-sample-3');
INSERT INTO profiles (user_id, name, location, bio,picture_id) VALUES (5, 'allan the treat', 'Knoxville', 'here for a good climb not a long climb. hobbies include climbing trees','cld-sample');
INSERT INTO profiles (user_id, name, location, bio,picture_id) VALUES (6, 'the michael eden', 'dayton ohio', 'hit me up if you need a climbing bud or a gram of bud ;)', 'irqp67luc3rpadoxzndi');


INSERT INTO states(state_name,abbrev,latitude,longitude) VALUES
('Alabama','AL',32.806671,-86.791130),
('Alaska','AK',61.370716,-152.404419),
('Arizona','AZ',33.729759,-111.431221),
('Arkansas','AR',34.969704,-92.373123),
('California','CA',36.116203,-119.681564),
('Colorado','CO',39.059811,-105.311104),
('Connecticut','CT',41.597782,-72.755371),
('Delaware','DE',39.318523,-75.507141),
('Florida','FL',27.766279,-81.686783),
('Georgia','GA',33.040619,-83.643074),
('Hawaii','HI',21.094318,-157.498337),
('Idaho','ID',44.240459,-114.478828),
('Illinois','IL',40.349457,-88.986137),
('Indiana','IN',39.849426,-86.258278),
('Iowa','IA',42.011539,-93.210526),
('Kansas','KS',38.526600,-96.726486),
('Kentucky','KY',37.668140,-84.670067),
('Louisiana','LA',31.169546,-91.867805),
('Maine','ME',44.693947,-69.381927),
('Maryland','MD',39.063946,-76.802101),
('Massachusetts','MA',42.230171,-71.530106),
('Michigan','MI',43.326618,-84.536095),
('Minnesota','MN',45.694454,-93.900192),
('Mississippi','MS',32.741646,-89.678696),
('Missouri','MO',38.456085,-92.288368),
('Montana','MT',46.921925,-110.454353),
('Nebraska','NE',41.125370,-98.268082),
('Nevada','NV',38.313515,-117.055374),
('New Hampshire','NH',43.452492,-71.563896),
('New Jersey','NJ',40.298904,-74.521011),
('New Mexico','NM',34.840515,-106.248482),
('New York','NY',42.165726,-74.948051),
('North Carolina','NC',35.630066,-79.806419),
('North Dakota','ND',47.528912,-99.784012),
('Ohio','OH',40.388783,-82.764915),
('Oklahoma','OK',35.565342,-96.928917),
('Oregon','OR',44.572021,-122.070938),
('Pennsylvania','PA',40.590752,-77.209755),
('Rhode Island','RI',41.680893,-71.511780),
('South Carolina','SC',33.856892,-80.945007),
('South Dakota','SD',44.299782,-99.438828),
('Tennessee','TN',35.747845,-86.692345),
('Texas','TX',31.054487,-97.563461),
('Utah','UT',40.150032,-111.862434),
('Vermont','VT',44.045876,-72.710686),
('Virginia','VA',37.769337,-78.169968),
('Washington','WA',47.400902,-121.490494),
('West Virginia','WV',38.491226,-80.954453),
('Wisconsin','WI',44.268543,-89.616508),
('Wyoming','WY',42.755966,-107.302490);

INSERT INTO areas(state_abbrev, name, description, latitude, longitude) VALUES
('OH','Western Ohio','Largely flat, but there is some stuff to do',39.918360,-84.093947),
('KY','Red River Gorge','One of the largest climbing areas in the world, tons of sport climbing to do',37.782922,-83.683103),
('WV','New River Gorge','Bullet-hard sandstone, beautiful views, what''s not to love?',38.070297,-81.080090),
('KY','Murder Branch', 'Rarely climbed sandstone rock in the Daniel Boone Pioneer Weapons Area. Parking along the forest road.',37.99237,-83.49257),
('OH','Central/Eastern Ohio','Not much, but some nice places near Newark and Hocking Hills',39.5363696,-81.8427258),
('WV','Seneca Rocks','Classic area for mult-pitch trad climbing',38.83259260133902,-79.3852547868337),
('AL','Northern Alabama','Only area in the state with any climbing at all',33.98856, -86.458150),
('AK','Horseshoe Canyon Ranch','Best moderate climbing in the country, maybe even the world. Camping on property, and it is a short walk to all the different crags. Amazing.',36.0118,-93.2922),
('AK','Sams Throne and Surroundings','Beautiful sandstone cliff faces in the ozarks, gotta love it.',35.8578,-93.0444),
('AZ','Cochise Stronghold','Rugged canyons and towering granite domes. Traditional, multi-pitchm and plenty of sport',31.92117,-109.98697),
('AZ','Sedona Area','Located in the southern end of the Colorado Plateau, known for sandstone spires and towers',34.86786,-111.76197),
('AZ','Mount Lemmon (Santa Catalina Mountains)','Commonly known among climbers and non-climbers alike as, simply, Mount Lemmon. Over 1,500 climbs, one of the most popular in the state.',32.4471,-110.79047),
('CA','Joshua Tree National Park','World famous, known for bouldering and traditional rock climbing',34.0122,-116.16799),
('CA','Yosemite National Park','The iconic birthplace of American rock climbing, and arguably the center of the climbing universe. Not enough can be said.',37.73968,-119.57297),
('CA','Owens River Gorge','Most concentrated sport climbing area in California',37.51373,-118.57109),
('CO','Boulder Canyon','Not farm from downtown boulder, beautiful scenery and a variety of styles for everyoone',40.00239,-105.41014),
('CO','Eldorado Canyon State Park','A world famous climbing area. Steep, beautiful,  conglomerate sandstone walls up to 700 ft high',39.9318,-105.28123),
('CO','Rifle Mountain Park','The best limestone sport climbing in North America',39.7159,-107.6912),
('CO','Flatirons','Starting with scrambles, up through hard technical climbing, one of the great places to climb in the US',39.9828,-105.289),
('CT','Central Valley','People do not think of Connecticut as a pdestination for climbing, but we love it',41.62972,-72.80963),
('GA','Mount Yonah','A beautiful granite dome in northern Georgia, plenty of history here',34.6372,-83.7141),
('ID','The Fins','Southern end of the Lost River mountain range, vertical to overhanging limestone walls',43.73145,-113.08444),
('ID','Castle Rocks','Only open to the public since 2003, a healthy mix of sprt and trad routes',42.13537,-113.67);

INSERT INTO crags(area_id, name, description, latitude, longitude) VALUES
('a-1', 'Mad River Gorge', 'The finest climbing Ohio has to offer', 39.912833,-83.860439),
('a-2', 'Muir Valley','A luxury climbing experience',37.724503,-83.634545),
('a-1', 'Paint Creek State Park', 'Walls of Peebels Dolomite about 70 yards long with numerous routes. Stays in the shade all day',39.24979,-83.34637),
('a-3', 'Upper Meadow', 'Beautiful area upstream on the Meadow River',38.151515,-80.926571);

INSERT INTO walls(crag_id, name, description) VALUES
('c-1','Amusement Wall','Fun climbing, seeps for awhile after it rains. Busy on nice days'),
('c-1', 'Dad''s Wall','Get here early if you''re looking to warm up'),
('c-1','Trash Shoot','Good variety, some spicy climbs for their grade'),
('c-2','Bruise Brothers','An iconic starting place for new climbers, avoid on busy days'),
('c-2','Animal Crackers','Slabby little wall with some good moderates'),
('c-2','Boneyard','Tall walls, good variety of climbs, good warmup for the harder stuff at Midnight Surf'),
('c-2','Midnight Surf','Tall, overhanging, and impressive'),
('c-2','Great Wall','Good variety, a Muir Vallery classic'),
('c-2','Techtonic Wall','Fun spot for beginner climbers with well bolted routes to safely try on lead'),
('c-2','Land Before Time','Nice place to take the brand new climber, but the more experienced will be bored');

INSERT INTO routes(wall_id, name, grade, height, style, protection, description) VALUES
('w-1','Slappy McKracken','5.10b','30ft','sport', '7 bolts', 'The oldest climbing route in Ohio. Very busy during the weekend.'),
('w-1','Knope We Can','5.7', '25ft', 'sport', '7 bolts', 'A climb in the classic Northhampton style. Old granite so watch your head!' ),
('w-2','Chain Mail Hula Skirt','5.7','25ft','trad', '7 bolts','Est quid nostre papadio.The raccoons are notorious here. Avoid in winter.'),
('w-2','McHenry''s Request','5.12b','60ft','sport', '12 bolts','The only climbing route where Brad Pitt almost died'),
('w-1','Scooby Doo','5.10c/d','25ft','Sport','2 bolts, ring anchors','Hard Dayton start to some small ledges and crimps. Pleasant finish.'),
('w-1','Scrappy','5.10c/d','25ft','Sport','3 bolts, ring anchors','Start deep in the cave, pull the corner and find good resting rails in between each move'),
('w-1','Shaggy','5.10c/d','25ft','Trad','standard rack + tricams, ring anchors','Find confidence in your gear placement and be ready to hang'),
('w-1','Pocket Rocket Man','5.12a','25ft','Sport','2 bolts, ring anchors','Start is a little bit left of Wu Who. Two options for the boulder-style start, gain the large shelf, move away from the jugs to finish'),
('w-1','Wu Who','5.9','30ft','sport','2 botls, ring anchors','Just left of Unknown and Sparky near the top of the slope. Slightly overhanging crack with bomber clipping ledges. Great movement'),
('w-4','Little Viper','5.10b','50ft','sport','6 bolts','Start on a right-facing flake, then pull boulder problem through the roof, and up easier ground to the chains.'),
('w-4','Send Me on My Way','5.9-','75ft','sport','9 bolts','Feels easier than 5.9, easy clipping stances, nice jugs. Very good climb.'),
('w-4','Ohio Climbing','5.8','50ft','sport','6 bolt','Climb large plates and pockets to a short crux near the anchors.'),
('w-4','Workin For The Weekend','5.10c','70ft','sport','8 bolts','Climb the moderate slab to get to the first crux section as the wall steepens... This crux can be done to the right of the bolt (techy) or the left (powerful) at about the same grade'),
('w-4','Rat Stew','5.10a','75ft','sport','8 bolts','Nice moderate sport route. Climb up the low-angle slabby start on balancy little knobs. Then climb up the steeper upper wall using good big holds.');


INSERT INTO crag_comments (crag_id, profile_id, body, post_date) VALUES
('c-1',3,'Great Crag','2022-01-01'),
('c-1',6, 'awful crag. polluted. full of rocks', '2022-01-15'),
('c-2',3, 'a craggy crag. about the only good thing', '2022-05-02'),
('c-1',5, 'seen better crags', '2023-01-02');

INSERT INTO route_comments (route_id, profile_id, body, post_date) VALUES
('r-2',3,'Slippery when dry','2022-02-02'),
('r-1',4, 'Watch out for ice', '2022-02-03'),
('r-1',3,'Great Climb','2022-02-22'),
('r-1',4, 'better the second time', '2022-04-02');

INSERT INTO ticks (profile_id,route_id,date_climbed,note,rating)VALUES
(3,'r-1','2022-12-01','Great climb, loved the moves on the arete. Redpoint after giving it a burn on toprope earlier in the week',4),
(4,'r-1','2022-12-02', 'Stout for the grade, but very fun. Onsight ascent, sketchy move to the anchors.',3),
(3,'r-2','2022-12-12','Good climb. little wet when i ascented',3),
(5,'r-1','2022-12-13','runout was nasty. fell twice',4);

INSERT INTO todos (profile_id, route_id)VALUES
(3,'r-3'),
(3,'r-4'),
(4, 'r-2'),
(4, 'r-4');


INSERT INTO shared_images (image_id,route_id) VALUES
('hgmoslrkrc9sl6mvebis','r-1'),
('kpa3jdaxgvcdgqbtxamk','r-1'),
('tdp0unnsmhsxbwvi21pp','r-2'),
('fmopabltozw1o6s4han8','r-2');


COMMIT;


