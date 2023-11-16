---------------------countries-------------------
INSERT INTO countries (name) VALUES
('Iceland'),
('India'),
('China'),
('United States'),
('Indonesia'),
('Pakistan'),
('Nigeria'),
('Brazil'),
('Bangladesh'),
('Russia'),
('Mexico'),
('Ethiopia'),
('Japan'),
('Philippines'),
('Egypt'),
('DR Congo'),
('Vietnam'),
('Iran'),
('Turkey'),
('Germany'),
('Thailand');

INSERT INTO countries (name) VALUES
('Italy'),
('France'),
('Denmark'),
('United Kingdom');
INSERT INTO countries (name) VALUES
('Belgium');
---------------------publishers-------------------
INSERT INTO publishers (name, country_id) VALUES
('Marvel Comics', 4), -- United States
('DC Comics', 4),
('Dark Horse Comics', 4),
('Image Comics', 4),
('Shueisha', 13), -- Japan
('Kodansha', 13),
('Shogakukan', 13),
('Panini Comics', 22), -- Italy
('Sergio Bonelli Editore', 22),
('Dargaud', 23), -- France
('Dupuis', 23),
('Glénat', 23),
('Egmont Group', 24), -- Denmark
('Carlsen Comics', 24),
('Rebellion Developments', 25), -- United Kingdom
('Titan Comics', 25),
('2000 AD', 25),
('Editorial Televisa', 11), -- Mexico
('Grupo Editorial Vid', 11),
('Editora Abril', 8); -- Brazil
INSERT INTO publishers (name, country_id) VALUES
('Akita Shoten', 13);

---------------------genres-------------------
INSERT INTO genres (name, description) VALUES
('Action', 'A story that is similar to adventure, and the protagonist usually takes a risky turn, which leads to desperate situations (including explosions, fight scenes, daring escapes, etc.)'),
('Adventure', 'A story that is about a protagonist who journeys to epic or distant places to accomplish something'),
('Comedy', 'A story that tells about a series of funny, or comical events, intended to make the audience laugh'),
('Crime', 'A story that involves detectives, gangsters, criminals, fugitives, or inmates'),
('Fantasy', 'A story that is set in an imaginary world and often includes magic, mythical creatures, or supernatural elements'),
('Horror', 'A story that is intended to frighten, scare, or disgust the audience with zombies, serial killers, ghosts, or other forms of horror'),
('Romance', 'A story that focuses on the relationship and romantic love between two or more characters, usually with a happy ending'),
('Science Fiction', 'A story that is based on the impact of science, technology, or imagined innovations on society or individuals'),
('Thriller', 'A story that is characterized by suspense, tension, excitement, and surprise, often involving a race against time, a mystery, or a dilemma'),
('Western', 'A story that is set in the American West during the late 19th and early 20th centuries and typically features cowboys, outlaws, sheriffs, and other elements of the frontier'),
('Superhero', 'A story FEATURING SUPERHEROSS YAYYY!!!'),
('Drama', 'A story featuring dramatic drama!!!!'),
('Psychological', 'A story featuring psychological warfare!.. ermm chat?'),
('Slice of life', 'A story featuring slices of life');

INSERT INTO genres (name, description) VALUES
('Dark fantasy', 'spooky dark fantasy oO'),
('Post-Apocalyptic', 'i guess we really are a fallout...');


------------------------series----------------------------
INSERT INTO series (name, description) 
VALUES 
('Superman', 'A fictional superhero who was created first with this series and became an instant success with various adaptations'), 
('Spider-man', 'THE HUMAN SPIDER!!!'), 
('Batman', 'A fictional superhero who was created just a year after Superman and received instant success with further adaptations of the comic series'),  
('The Adventures of Tintin', 'A Belgian comic series that features the escapades of a young reporter named Tintin and his dog Snowy'), 
('The Walking Dead', 'An American comic book series that depicts the lives of a group of survivors in a post-apocalyptic world overrun by zombies'), 
('Invincible', 'An American comic book series that centers on Mark Grayson, a normal teenager except for the fact that his father is Omni-Man, one of the most powerful superheroes on Earth'), 
('Attack on Titan', 'A Japanese manga series that is set in a world where humanity lives inside cities surrounded by enormous walls that protect them from gigantic man-eating humanoids referred to as Titans'), 
('The Boys', 'An American comic book series that depicts a world where superheroes are corrupted by fame and power and often abuse their abilities, while a clandestine group of vigilantes known as the Boys try to expose and fight them'), 
('Berserk', 'A dark fantasy manga series that follows the story of Guts, a mercenary warrior who seeks revenge against his former friend Griffith, who betrayed him and sacrificed his comrades to become a demonic being'), 
('Jujutsu Kaisen', 'Jujutsu Kaisen is a supernatural manga series that revolves around Yuji Itadori, a high school student who becomes the host of a powerful curse named Ryomen Sukuna after swallowing one of his fingers. He joins a secret organization of Jujutsu Sorcerers who fight against curses that threaten humanity, while also trying to collect the rest of Sukunas body parts to exorcise him'),
('Oyasumi Punpun', 'Oyasumi Punpun is a coming-of-age manga series that depicts the life of Punpun Onodera, a boy who is represented as a simple bird-like drawing in contrast to the realistic style of the other characters and settings. The manga explores Punpuns struggles with his dysfunctional family, his love interest Aiko, his mental health, and his search for meaning in life');


--------------------------------comics--------------------------------

/* Attack On Titan */

INSERT INTO comics (title, isbn, issue_number, summary, page_count, publication_date, publisher_id) 
VALUES 
('Attack on Titan Volume 1', '978-1-61262-024-4', 0, 'The Colossus Titan has breached humanitys first line of defense, Wall Maria. Mikasa, the 104th Training Corps ace and Erens best friend, may be the only one capable of defeating them, but beneath her calm exterior lurks a dark past. When all looks lost, a new Titan appears and begins to slaughter its fellow Titans. Could this new monster be a blessing in disguise, or is the truth something much more sinister?', 208, '2010-03-17', 6), 
('Attack on Titan Volume 2', '978-1-61262-025-1', 0, 'The last thing Eren remembers before blacking out, a Titan had bitten off his arm and leg and was getting ready to eat him alive. Much to his surprise he wakes up without a scratch on him, with a crowd of angry soldiers screaming for his blood. What strange new power has he awakened, and what will happen when the boy devoted to destroying the Titans becomes one himself?', 192, '2010-07-16', 6), 
('Attack on Titan Volume 3', '978-1-61262-026-8', 0, 'The Survey Corps develop a risky gambit—have Eren in Titan form attempt to repair Wall Rose, reclaiming human territory from the monsters for the first time in a century. But Titan-Erens self-control is far from perfect, and when he goes on a rampage, not even Armin can stop him!', 208, '2010-12-09', 6);

/* Jujutsu kaisen */
INSERT INTO comics (title, isbn, issue_number, summary, page_count, publication_date, publisher_id)
VALUES
('Jujutsu Kaisen Volume 1', '978-1-97471-002-7', 0, 'In a world where cursed spirits feed on unsuspecting humans, fragments of the legendary and feared demon Ryomen Sukuna were lost and scattered about. Should any demon consume Sukuna’s body parts, the power they gain could destroy the world as we know it. Fortunately, there exists a mysterious school of Jujutsu Sorcerers who exist to protect the precarious existence of the living from the undead!', 192, '2018-07-04', 5),
('Jujutsu Kaisen Volume 2', '978-1-97471-003-4', 0, 'Yuji Itadori and his classmates are fighting two of the three reincarnated Cursed Womb: Death Paintings brothers. Meanwhile, Megumi Fushiguro loses consciousness after finally defeating a special grade curse that possessed a Sukuna finger! Whoever wins the fight between Itadori and the brothers will be the one to secure the prized finger!', 200, '2018-10-04', 5),
('Jujutsu Kaisen Volume 3', '978-1-97471-004-1', 0, 'Tensions are high as the Goodwill Event between the Tokyo and Kyoto campuses of Jujutsu High approaches. But before the competition can even begin, a couple of Kyoto students confront Fushiguro and Kugisaki. Meanwhile, Yuji’s training gets interrupted by a mysterious crime involving grotesque bodily alterations caused by a cursed spirit...', 192, '2019-01-04', 5);

/* Oyasumi Punpun */
INSERT INTO comics (title, isbn, issue_number, summary, page_count, publication_date, publisher_id)
VALUES
('Oyasumi Punpun Volume 1', '978-4-09159-116-6', 0, 'This is Punpun Onodera’s coming-of-age story. His parents’ marriage is falling apart. His dad goes to jail and his mom goes to the hospital. He has to live with his loser uncle. He has a crush on a girl who lives in a weird cult. Punpun tries talking with God about his problems, but God is a jerk.', 224, '2007-08-03', 7),
('Oyasumi Punpun Volume 2', '978-4-09159-117-3', 0, 'Punpun was an average kid in an average town… But things have changed. The love of his life wants to kill him. His parents got divorced. And God is being mean to him. What are you going to do now, Punpun?', 216, '2007-11-30', 7),
('Oyasumi Punpun Volume 3', '978-4-09159-118-0', 0, 'Punpun has finally reunited with the love of his life, Aiko! But she isn’t as exciting and wonderful as he remembered. And she doesn’t make him exciting and wonderful. In fact, he thinks they’re both terribly banal. And now they’ve done something terrible… Punpun feels like he’s beyond repair.', 208, '2008-04-30', 7);

/* Spider-Man */
INSERT INTO comics (title, isbn, issue_number, summary, page_count, publication_date, publisher_id)
VALUES
('The Amazing Spider-Man Vol. 1: World Without Love', '978-1-302-92576-9', 1, 'Peter Parker is back in the friendly neighborhood, but he’s persona non grata as far as the NYPD is concerned! It’s the ol’ switcheroo as we here at the House of Ideas ask that classic question - PETER PARKER: THREAT OR MENACE?! Plus: Includes 3 bonus MARVEL PRIMER PAGES!', 136, '2022-10-05', 1),
('The Amazing Spider-Man Vol. 2: The New Sinister', '978-1-302-92577-6', 2, 'Norman Osborn’s goblin-free battle with Spidey didn’t go the way he had hoped... Now, Osborn needs to find an edge and get the Goblin back, and neither you nor Spidey are ready for the edge he’s going to find! Guest artist Greg Smallwood (MOON KNIGHT) joins Dan Slott for this special issue that sets off the AMAZING SPIDER-MAN event of 2023!', 112, '2022-11-23', 1),
('The Amazing Spider-Man Vol. 3: Hobgoblin', '978-1-302-92578-3', 3, 'Dan Slott and Stuart Immomen are joined by many of the artists who made the last 10 years of Spider-Man so Amazing! The biggest Peter Parker/Norman Osborn story of all time unfolds over one 80-page story, a scope unmatched in comics! Who lives?! Who dies?! And what scars will Spider-Man bear from here on out?!', 96, '2023-02-15', 1);

INSERT INTO comics (title, isbn, issue_number, summary, page_count, publication_date, publisher_id)
VALUES
('Spider-Man Unlimited #1', '978-0-78519-276-9', 1, 'An all-new series set in the current continuity of Spider-Man comics! The Spider-Man of Earth-616 is in for a shocking surprise when he discovers that the Spot, the villain who is impossible to kill, has actually died. But how?', 32, '1993-05-01', 1),
('Spider-Man Unlimited #5', '978-0-78519-277-6', 5, 'The two Spider-Men reflect on their respective universes, taking notes on what’s the same and what’s different in their parallel worlds.', 32, '1994-05-01', 1),
('Spider-Man Unlimited #7', '978-0-37220-071-1', 7, 'Ben Reilly wanders the streets of New York, looking for a purpose in life. He encounters a group of homeless people who are being harassed by a gang of thugs. He decides to intervene and help them, but he soon realizes that they are not ordinary homeless people. They are Morlocks, mutants who live underground and are hunted by humans.', 48, '1994-11-01', 1);






--------------------------------characters--------------------------------
INSERT INTO characters (name, description) VALUES
('Superman', 'A superhero who fights for truth, justice and the American way'),
('Lois Lane', 'A Pulitzer Prize-winning journalist and Superman''s love interest'),
('Lex Luthor', 'A brilliant but evil businessman and Superman''s archenemy'),
('Spider-Man', 'A superhero who gained spider-like abilities after being bitten by a radioactive spider'),
('Mary Jane Watson', 'A model and actress who is Spider-Man''s longtime girlfriend'),
('Green Goblin', 'A supervillain who uses advanced technology and weapons to terrorize New York City'),
('Batman', 'A superhero who uses his intellect, skills and gadgets to fight crime in Gotham City'),
('Alfred Pennyworth', 'A loyal butler and father figure to Batman'),
('The Joker', 'A psychotic clown and Batman''s nemesis'),
('Tintin', 'A young reporter and adventurer who travels around the world with his dog Snowy'),
('Captain Haddock', 'A grumpy but brave sea captain and Tintin''s best friend'),
('Professor Calculus', 'A genius inventor and scientist who often accompanies Tintin on his adventures'),
('Rick Grimes', 'A former sheriff''s deputy who leads a group of survivors in a zombie apocalypse'),
('Michonne', 'A katana-wielding warrior and Rick''s love interest'),
('Negan', 'A ruthless leader of a group of survivors called the Saviors'),
('Invincible', 'A superhero who is the son of Omni-Man, the most powerful being on Earth'),
('Atom Eve', 'A superheroine who can manipulate matter and Invincible''s girlfriend'),
('Robot', 'A super-intelligent android who leads the Teen Team, a group of young superheroes'),
('Eren Yeager', 'A young man who can transform into a Titan, a giant humanoid creature'),
('Mikasa Ackerman', 'Eren''s adoptive sister and a skilled soldier who fights against the Titans'),
('Levi Ackerman', 'The captain of the Survey Corps, an elite military unit that explores the outside world'),
('Homelander', 'The leader of the Seven, a group of corrupt superheroes who work for a corporation called Vought'),
('Billy Butcher', 'The leader of the Boys, a group of vigilantes who expose and fight against the Seven'),
('Starlight', 'A superheroine who joins the Seven and becomes disillusioned with their corruption'),
('Guts', 'A mercenary who wields a massive sword and seeks revenge against his former friend Griffith'),
('Casca', 'A female warrior who was once Guts'' lover and a member of the Band of the Hawk, a mercenary group led by Griffith'),
('Griffith', 'The leader of the Band of the Hawk, who sacrificed his comrades to become a demonic godlike being called Femto'),
('Yuji Itadori', 'A high school student who becomes the host of Sukuna, a powerful curse'),
('Megumi Fushiguro', 'A sorcerer who specializes in summoning shikigami, animal spirits that aid him in battle'),
('Nobara Kugisaki', 'A sorcerer who uses nails and a hammer as her weapons of choice'),
('Punpun Onodera', 'A boy who sees himself as a bird-like creature and struggles with his dysfunctional family and life'),
('Aiko Tanaka', 'Punpun''s primary love interest who has a troubled past and a dream of running away to Kagoshima'),
('Sachi Nanjou', 'A young woman who meets Punpun in his adult life and becomes his close friend and manga collaborator');



--------------------------------people--------------------------------
INSERT INTO people (name, country_id) VALUES
('Jerry Siegel', 4),
('Joe Shuster', 4),
('Stan Lee', 4),
('Steve Ditko', 4),
('Bob Kane', 4),
('Bill Finger', 4),
('Georges Remi', 26),
('Robert Kirkman', 4),
('Tony Moore', 4),
('Cory Walker', 4),
('Hajime Isayama', 13),
('Garth Ennis', 4),
('Darick Robertson', 4),
('Kentaro Miura', 13),
('Gege Akutami', 13),
('Inio Asano', 13);

--------------------------------roles--------------------------------
INSERT INTO roles (name) VALUES
('Author'),
('Artist');

--------------------------------comic_character--------------------------------
INSERT INTO comic_character (comic_id, character_id) VALUES



--------------------------------comic_genres--------------------------------
INSERT INTO comic_genre (comic_id, genre_id) VALUES
(1,1),(1,2),(1,5),(1,6),(1,13),(1,16),
(2,1),(2,2),(2,5),(2,6),(2,13),(2,16),
(3,1),(3,2),(3,5),(3,6),(3,13),(3,16),
(4,1),(4,3),(4,5),(4,11),
(5,1),(5,3),(5,5),(5,11),
(6,1),(6,3),(6,5),(6,11);

                              

--------------------------------comic_series--------------------------------
INSERT INTO comic_series (comic_id, series_id) VALUES
(1,7),(2,7),(3,7),(4,10),(5,10),(6,10);

--------------------------------comic_person_role--------------------------------
INSERT INTO comic_person_role (comic_id, person_id, role_id) VALUES
(7, 16, 1),(8, 16, 1),(9, 16, 1),
(7, 16, 2),(8, 16, 2),(9, 16, 2);
