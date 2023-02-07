BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role) VALUES('kevin1','$2a$10$z1aZXjPTXdqw6MFWuG59jep4ZFFeoLi/lueBsmqyKoAokPVQPdI6G','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES('jeff1','$2a$10$TG4zgsZHjdhHlx40IdZY3ux060Cd52dv/hRRfy1c4xp2YcU6TSEbW','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES('allan1','$2a$10$OvoSz9P8Zb72Fw86sYi0puGPX56t9PnR0UmzS.IK6pQf515nbDBlO','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES('michael1','$2a$10$Z5Of0z2u9OkFNTXFyJwFKOGUQMn5RISWzty2Ek2n1E2hvKqBnXSGK','ROLE_USER');

INSERT INTO profiles (user_id, name, location, bio) VALUES (1, 'user', 'user', 'user');
INSERT INTO profiles (user_id, name, location, bio) VALUES (2, 'admin', 'user', 'user');
INSERT INTO profiles (user_id, name, location, bio) VALUES (3, 'kevin a', 'Long Island, NY', 'Hey, Im climin here!');
INSERT INTO profiles (user_id, name, location, bio) VALUES (4, 'jeff blublowski', 'chitown', 'im a trad-dad like my trad-dad before me. Grateful Dead 4ever!');
INSERT INTO profiles (user_id, name, location, bio) VALUES (5, 'allan the treat', 'Knoxville', 'here for a good climb not a long climb. hobbies include climbing trees');
INSERT INTO profiles (user_id, name, location, bio) VALUES (6, 'the michael eden', 'dayton ohio', 'hit me up if you need a climbing bud or a gram of bud ;)');


INSERT INTO states(state_name,abbrev,latitude,longitude) VALUES
('Alabama','AL',32.806671,-86.791130),
('Alaska','AK',61.370716,-152.404419),
('Arizona','AZ',33.729759,-111.431221),
('Arkansas','AR',34.969704,-92.373123),
('California','CA',36.116203,-119.681564),
('Colorado','CO',39.059811,-105.311104),
('Connecticut','CT',41.597782,-72.755371),
('Delaware','DE',39.318523,-75.507141),
('District of Columbia','DC',38.897438,-77.026817),
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

COMMIT;


