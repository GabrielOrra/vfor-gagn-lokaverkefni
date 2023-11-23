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

INSERT INTO comics (title, isbn, issue_number, summary, page_count, publication_date, image, price, publisher_id, genres, characters) VALUES
('Attack on Titan, Volume 1', '9781612620244', 1, 'In a world where giant humanoid Titans prey on humans, Eren joins the scouting legion to get revenge on the monsters who killed his mother.', 192, '2012-06-19', '/images/attack_on_titan/aot1.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith'),
('Attack on Titan, Volume 2', '9781612620251', 2, 'The Colossal Titan has breached humanity''s first line of defense, Wall Maria. Mikasa, the 104th Training Corps'' and and Eren''s best friend, may be the only one capable of defeating them, but beneath her calm exterior lurks a dark past.', 192, '2012-09-11', '/images/attack_on_titan/aot2.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Annie Leonhart, Reiner Braun, Bertolt Hoover'),
('Attack on Titan, Volume 3', '9781612620268', 3, 'The last thing Eren remembers before blacking out, a Titan had bitten off his arm and leg and was getting ready to eat him alive. Much to his surprise he wakes up without a scratch on him, with a crowd of angry soldiers screaming for his blood.', 192, '2012-12-04', '/images/attack_on_titan/aot3.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoe, Dot Pixis, Jean Kirstein, Sasha Blouse, Connie Springer'),
('Attack on Titan, Volume 4', '9781612620275', 4, 'HUMANITY PUSHES BACK! The Survey Corps develop a risky gambit – have Eren in Titan form attempt to repair Wall Rose, reclaiming human territory from the monsters for the first time in a century. But Titan-Eren’s self-control is far from perfect, and when he goes on a rampage, not even Armin can stop him!', 192, '2013-03-26', '/images/attack_on_titan/aot4.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoe, Dot Pixis, Jean Kirstein, Sasha Blouse, Connie Springer, Marco Bott'),
('Attack on Titan, Volume 5', '9781612620282', 5, 'CAN YOU GO HOME AGAIN? Thanks to Eren, humanity has taken the town of Trost back from the Titans. Exhausted, Eren falls into a coma for three days – and wakes in shackles, staring at Erwin Smith, leader of the Survey Corps. Certain that Eren’s father’s research holds the key to the mystery of the Titans’ rise, Smith wants an expedition to retrieve it from the house where Eren grew up. But that’s deep in Titan territory, and to get there Eren will need to master a power he still doesn’t fully understand…', 192, '2013-06-25', '/images/attack_on_titan/aot5.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Ymir, Krista Lenz, Reiner Braun, Bertolt Hoover'),
('Attack on Titan, Volume 6', '9781612620299', 6, 'TITAN ON THE HUNT On the way to Eren’s home, deep in Titan territory, the Survey Corps ranks are broken by a charge led by a female Titan! But this Abnormal is different – she kills not to eat but to protect herself, and she seems to be looking for someone. Armin comes to a shocking conclusion: She’s a human in a Titan’s body, just like Eren!', 192, '2013-08-27', '/images/attack_on_titan/aot6.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Ymir, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart'),
('Attack on Titan, Volume 7', '9781612620305', 7, 'TURNING ON THEIR OWN The Survey Corps sets a cunning trap to capture the mysterious Abnormal Titan that broke through their ranks. As Armin tries to determine the grotesque creature’s identity and purpose, scouts report Titans closing in on all sides! But they don’t seem to be after the humans – instead they’re targeting the Titan!', 192, '2013-12-31', '/images/attack_on_titan/aot7.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Ymir, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart'),
('Attack on Titan, Volume 8', '9781612620312', 8, 'BLOOD ON HIS HANDS Eren Yeager can no longer turn a blind eye to the monstrous actions of the military police. He and his friends are determined to fight back, but their plans may come at a terrible cost. A dangerous figure from Levi’s past has returned, and he’s ready to settle old scores. Will Levi’s squad survive the night, or will the criminal underground take them down?', 192, '2014-04-29', '/images/attack_on_titan/aot8.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeagein Arlert, Levi Ackerman, Erwin Smith, Hange Zoe, Jean Kirsr, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Ymir, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Kenny Ackerman'),
('Attack on Titan, Volume 9', '9781612620329', 9, 'HUMANITY’S WORST NIGHTMARE Eren is still resting from his brutal fight with the female Titan, when word reaches the interior that the impossible has happened: Wall Rose itself has been breached, and Titans are pouring through the gap! The emergency casts new urgency over Armin and Hange’s questions about how the walls were built, and what humanity can do to restore them…', 192, '2014-06-24', '/images/attack_on_titan/aot9.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armtein, Sasha Blouse, Connie Springer, Ymir, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Kenny Ackerman, Pastor Nick'),
('Attack on Titan, Volume 10', '9781612620336', 10, 'FORTRESS OF BLOOD With no combat gear and Wall Rose breached, the 104th scrambles to evacuate the villages in the Titans’ path. On their way to the safety of Wall Sheena, they decide to spend the night in Utgard Castle. But their sanctuary becomes a slaughterhouse when they discover that, for some reason, these Titans attack at night!', 192, '2014-08-26', '/images/attack_on_titan/aot10.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Ymir, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Kenny Ackerman, Pastor Nick, Gelgar, Nanaba'),
('Attack on Titan, Volume 11', '9781612620343', 11, 'Thanks to Eren''s timely arrival, the 104th has managed to turn the tide at Wall Rose. But this momentary victory forces two more traitors into a corner – and the identity of the Titans who have been destroying the walls is revealed! What can Eren do against the two most dangerous monsters humanity has ever faced? And who else might be an enemy in disguise?', 192, '2014-12-16', '/images/attack_on_titan/aot11.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Ymir, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart'),
('Attack on Titan, Volume 12', '9781612626789', 12, 'The Survey Corps arrive at Eren''s basement, where they discover three books that reveal the truth about the world and the history of the Titans. Meanwhile, the Warriors face a new threat from the Anti-Marleyan Volunteers, a group of rebels who seek to overthrow the Marleyan government and free the Eldians.', 192, '2015-04-07', '/images/attack_on_titan/aot12.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Ymir, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Zeke Yeager, Pieck Finger, Porco Galliard'),
('Attack on Titan, Volume 13', '9781632360297', 13, 'The truth revealed through the memories in the books shakes up the Survey Corps. They decide to join forces with the Anti-Marleyan Volunteers and launch a surprise attack on the Marleyan fleet. However, they are met by the Warriors and their new ally, the War Hammer Titan.', 192, '2015-08-25', '/images/attack_on_titan/aot13.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Zeke Yeager, Pieck Finger, Porco Galliard, War Hammer Titan, Eren Kruger, Grisha Yeager, Dina Yeager'),
('Attack on Titan, Volume 14', '9781632360389', 14, 'The battle between the Survey Corps and the Warriors reaches a climax, as Eren faces off against the War Hammer Titan and the Jaw Titan. With the help of his friends, Eren manages to secure a decisive victory, but at a terrible cost. The fate of the Eldians and the world hangs in the balance.', 192, '2015-12-01', '/images/attack_on_titan/aot14.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Zeke Yeager, Pieck Finger, Porco Galliard, War Hammer Titan, Gabi Braun, Falco Grice, Colt Grice, Udo, Zofia'),
('Attack on Titan, Volume 15', '9781632360396', 15, 'The aftermath of the battle leaves the Survey Corps with many casualties and questions. Eren reveals his plan to use the Founding Titan''s power to end the cycle of hatred and free the Eldians from oppression. However, his methods and motives are met with resistance and doubt by his comrades and enemies alike.', 192, '2016-04-05', '/images/attack_on_titan/aot15.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Zeke Yeager, Pieck Finger, Porco Galliard, Gabi Braun, Falco Grice, Colt Grice, Theo Magath, Willy Tybur'),
('Attack on Titan, Volume 16', '9781632360709', 16, 'The Survey Corps return to Paradis Island and reunite with their friends and families. They also meet the Anti-Marleyan Volunteers, who have been secretly aiding them in their fight against Marley. Among them is a mysterious man who claims to be Eren''s half-brother and the true heir of the royal bloodline.', 192, '2016-08-02', '/images/attack_on_titan/aot16.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Zeke Yeager, Pieck Finger, Porco Galliard, Gabi Braun, Falco Grice, Colt Grice, Theo Magath, Willy Tybur, Yelena, Onyankopon, Nicolo, Kiyomi Azumabito'),
('Attack on Titan, Volume 17', '9781632360716', 17, 'The Survey Corps begin to work on a new plan to deal with the threat of Marley and the Titans, involving a partial rumbling of the walls and a surprise attack on the enemy''s homeland. However, Eren has his own agenda, and he secretly meets with Yelena and Floch to form a rogue faction. Meanwhile, Gabi and Falco escape from their prison with the help of a girl named Kaya.', 192, '2016-12-27', '/images/attack_on_titan/aot17.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Zeke Yeager, Pieck Finger, Porco Galliard, Gabi Braun, Falco Grice, Colt Grice, Theo Magath, Willy Tybur, Yelena, Onyankopon, Nicolo, Kiyomi Azumabito, Floch Forster, Kaya, Mr. Blouse'),
('Attack on Titan, Volume 18', '9781632362116', 18, 'Eren and his rogue faction infiltrate Marley and launch a surprise attack on the festival where Willy Tybur is about to reveal his plan to unite the world against Paradis. Eren transforms into the Attack Titan and kills Willy, declaring war on Marley and the rest of the world. The Warriors and the Marleyan military try to stop him, but they are caught off guard by the arrival of the Survey Corps.', 192, '2017-04-18', '/images/attack_on_titan/aot18.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Zeke Yeager, Pieck Finger, Porco Galliard, Gabi Braun, Falco Grice, Colt Grice, Theo Magath, Willy Tybur, Yelena, Onyankopon, Nicolo, Kiyomi Azumabito, Floch Forster, Kaya, Mr. Blouse, Lara Tybur'),
('Attack on Titan, Volume 19', '9781632363090', 19, 'The battle in Marley continues, as Eren faces off against the War Hammer Titan and the Jaw Titan. With the help of his friends, Eren manages to secure a decisive victory, but at a terrible cost. The fate of the Eldians and the world hangs in the balance.', 192, '2017-08-01', '/images/attack_on_titan/aot19.jpg', 12.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoe, Jean Kirstein, Sasha Blouse, Connie Springer, Krista Lenz, Reiner Braun, Bertolt Hoover, Annie Leonhart, Zeke Yeager, Pieck Finger, Porco Galliard, Gabi Braun, Falco Grice, Colt Grice, Theo Magath, Willy Tybur, Yelena, Onyankopon, Nicolo, Kiyomi Azumabito, Floch Forster, Kaya, Mr. Blouse, Lara Tybur'),
('Attack on Titan, Volume 20', '9781632363091', 20, 'The Survey Corps sets a cunning trap to capture the mysterious Abnormal Titan that broke through their ranks. As Arwin tries to determine the grotesque creature’s identity and purpose, scouts report Titans closing in on all sides! But they don’t seem to be after the humans—instead they’re targeting the Titan!', 192, '2016-08-02', '/images/attack_on_titan/aot20.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoë, Bertolt Hoover, Reiner Braun'),
('Attack on Titan, Volume 21', '9781632363107', 21, 'Locked in desperate battle with the man-eating Titans, the Survey Corps gets closer than ever before to Eren’s basement and unlocking the mysteries of their walled world. But to get there, they will have to make a terrible choice with life-altering consequences for every surviving human soldier…', 192, '2016-12-27', '/images/attack_on_titan/aot21.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Erwin Smith, Hange Zoë, Bertolt Hoover, Reiner Braun, Zeke Yeager'),
('Attack on Titan, Volume 22', '9781632363220', 22, 'The Survey Corps has overthrown the Royal Government and swept away the tyranny of the king. The next step: Move to retake Wall Maria, with the helpf of a newly-discovered metallic ore and Eren’s miraculous Titan hardening powers. But as humanity pulls together, its enemies also unite beyond the Walls…', 192, '2017-04-25', '/images/attack_on_titan/aot22.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Zeke Yeager, Pieck Finger, Porco Galliard'),
('Attack on Titan, Volume 23', '9781632363237', 23, 'With the help of Levi’s squad, the Recon Corps has successfully captured the Female Titan. As Commander Erwin and Captain Levi begin preparations to extract whoever is inside the Titan, will the Recon Corps discover its true identity, or does the Female Titan have one last trick up its sleeve?', 192, '2017-08-01', '/images/attack_on_titan/aot23.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Annie Leonhart'),
('Attack on Titan, Volume 24', '9781632364258', 24, 'The expedition outside the wall was Eren’s chance to prove himself. But it failed, and the female Titan is free once more! With his squad dead, Eren faces a royal summons. Will Mikasa and Armin have to betray their king to save their friend? And can they discover the female Titan’s identity before she kills again?', 192, '2017-12-26', '/images/attack_on_titan/aot24.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Annie Leonhart, Historia Reiss, Rod Reiss'),
('Attack on Titan, Volume 25', '9781632365019', 25, 'The saga of humanity and the predatory Titans edges closer to its thrilling conclusions. The mysteries of the Titans are being revealed… who will escape death at the hands of giants and human beings?', 192, '2018-04-24', '/images/attack_on_titan/aot25.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Historia Reiss, Rod Reiss, Kenny Ackerman'),
('Attack on Titan, Volume 26', '9781632366542', 26, 'On the way to Eren’s home, deep in Titan territory, the Survey Corps ranks are broken by a charge led by a female Titan! But this Abnormal is different—she kills not to eat but to protect herself, and she seems to be looking for someone. Armin comes to a shocking conclusion: She’s a human in a Titan’s body, just like Eren!', 192, '2018-08-21', '/images/attack_on_titan/aot26.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Zeke Yeager, Pieck Finger, Porco Galliard, Colt Grice'),
('Attack on Titan, Volume 27', '9781632367174', 27, 'With the help of Levi’s squad, the Recon Corps has successfully captured the Female Titan. As Commander Erwin and Captain Levi begin preparations to extract whoever is inside the Titan, will the Recon Corps discover its true identity, or does the Female Titan have one last trick up its sleeve?', 192, '2018-12-04', '/images/attack_on_titan/aot27.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Annie Leonhart, Zeke Yeager, Pieck Finger, Porco Galliard, Colt Grice, Gabi Braun, Falco Grice'),
('Attack on Titan, Volume 28', '9781632367839', 28, 'The expedition outside the wall was Eren’s chance to prove himself. But it failed, and the female Titan is free once more! With his squad dead, Eren faces a royal summons. Will Mikasa and Armin have to betray their king to save their friend? And can they discover the female Titan’s identity before she kills again?', 192, '2019-04-09', '/images/attack_on_titan/aot28.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Annie Leonhart, Historia Reiss, Rod Reiss, Kenny Ackerman, Gabi Braun, Falco Grice, Kaya'),
('Attack on Titan, Volume 29', '9781632368287', 29, 'The saga of humanity and the predatory Titans edges closer to its thrilling conclusions. The mysteries of the Titans are being revealed… who will escape death at the hands of giants and human beings?', 192, '2019-08-06', '/images/attack_on_titan/aot29.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Historia Reiss, Rod Reiss, Kenny Ackerman, Gabi Braun, Falco Grice, Kaya, Nicolo'),
('Attack on Titan, Volume 30', '9781632368317', 30, 'On the way to Eren’s home, deep in Titan territory, the Survey Corps ranks are broken by a charge led by a female Titan! But this Abnormal is different—she kills not to eat but to protect herself, and she seems to be looking for someone. Armin comes to a shocking conclusion: She’s a human in a Titan’s body, just like Eren!', 192, '2019-12-03', '/images/attack_on_titan/aot30.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Zeke Yeager, Pieck Finger, Porco Galliard, Colt Grice, Gabi Braun, Falco Grice, Kaya, Nicolo, Yelena'),
('Attack on Titan, Volume 31', '9781646510009', 31, 'With the help of Levi’s squad, the Recon Corps has successfully captured the Female Titan. As Commander Erwin and Captain Levi begin preparations to extract whoever is inside the Titan, will the Recon Corps discover its true identity, or does the Female Titan have one last trick up its sleeve?', 192, '2020-04-14', '/images/attack_on_titan/aot31.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Annie Leonhart, Zeke Yeager, Pieck Finger, Porco Galliard, Colt Grice, Gabi Braun, Falco Grice, Kaya, Nicolo, Yelena'),
('Attack on Titan, Volume 32', '9781646510016', 32, 'The expedition outside the wall was Eren’s chance to prove himself. But it failed, and the female Titan is free once more! With his squad dead, Eren faces a royal summons. Will Mikasa and Armin have to betray their king to save their friend? And can they discover the female Titan’s identity before she kills again?', 192, '2020-08-25', '/images/attack_on_titan/aot32.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Annie Leonhart, Historia Reiss, Rod Reiss, Kenny Ackerman, Gabi Braun, Falco Grice, Kaya, Nicolo, Yelena, Onyankopon'),
('Attack on Titan, Volume 33', '9781646510023', 33, 'The saga of humanity and the predatory Titans edges closer to its thrilling conclusions. The mysteries of the Titans are being revealed… who will escape death at the hands of giants and human beings?', 192, '2020-12-15', '/images/attack_on_titan/aot33.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Historia Reiss, Rod Reiss, Kenny Ackerman, Gabi Braun, Falco Grice, Kaya, Nicolo, Yelena, Onyankopon, Jean Kirstein, Connie Springer, Sasha Blouse'),
('Attack on Titan, Volume 34', '9781646510030', 34, 'On the way to Eren’s home, deep in Titan territory, the Survey Corps ranks are broken by a charge led by a female Titan! But this Abnormal is different—she kills not to eat but to protect herself, and she seems to be looking for someone. Armin comes to a shocking conclusion: She’s a human in a Titan’s body, just like Eren!', 192, '2021-06-15', '/images/attack_on_titan/aot34.jpg', 10.99, 6, 'Action, Horror, Fantasy', 'Eren Yeager, Mikasa Ackerman, Armin Arlert, Levi Ackerman, Hange Zoë, Zeke Yeager, Pieck Finger, Porco Galliard, Colt Grice, Gabi Braun, Falco Grice, Kaya, Nicolo, Yelena, Onyankopon, Jean Kirstein, Connie Springer, Sasha Blouse, Reiner Braun, Annie Leonhart');

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
('Invincible', 'A superhero who is the son of Omni-Man, the most powerful being on Earth'),
('Atom Eve', 'A superheroine who can manipulate matter and Invincible''s girlfriend'),
('Robot', 'A super-intelligent android who leads the Teen Team, a group of young superheroes'),
('Homelander', 'The leader of the Seven, a group of corrupt superheroes who work for a corporation called Vought'),
('Billy Butcher', 'The leader of the Boys, a group of vigilantes who expose and fight against the Seven'),
('Starlight', 'A superheroine who joins the Seven and becomes disillusioned with their corruption'),
('Guts', 'A mercenary who wields a massive sword and seeks revenge against his former friend Griffith'),
('Casca', 'A female warrior who was once Guts'' lover and a member of the Band of the Hawk, a mercenary group led by Griffith'),
('Griffith', 'The leader of the Band of the Hawk, who sacrificed his comrades to become a demonic godlike being called Femto'),
('Yuji Itadori', 'A high school student who becomes the host of Sukuna, a powerful curse'),
('Megumi Fushiguro', 'A sorcerer who specializes in summoning shikigami, animal spirits that aid him in battle'),
('Nobara Kugisaki', 'A sorcerer who uses nails and a hammer as her weapons of choice'),


/* attack on titan */
INSERT INTO characters (name, description) VALUES
('Eren Jaeger', 'The main protagonist of the story who has the power of the Attack Titan and the Founding Titan'),
('Mikasa Ackerman', 'Eren''s adoptive sister and one of the strongest soldiers of the Scout Regiment'),
('Armin Arlert', 'Eren''s childhood friend and a brilliant strategist who inherits the Colossal Titan'),
('Levi Ackerman', 'The captain of the Special Operations Squad and the most skilled soldier of the Scout Regiment'),
('Hange Zoë', 'The former commander of the Scout Regiment and a scientist who is fascinated by Titans'),
('Historia Reiss', 'The true heir of the royal family and the current queen of the Walls'),
('Jean Kirstein', 'A former cadet who joins the Scout Regiment and becomes a leader of the new recruits'),
('Connie Springer', 'A former cadet who joins the Scout Regiment and is a close friend of Sasha'),
('Sasha Blouse', 'A former cadet who joins the Scout Regiment and is known for her love of food'),
('Erwin Smith', 'The former commander of the Scout Regiment and a visionary leader who sacrificed himself for the cause'),
('Annie Leonhart', 'A former cadet who is revealed to be the Female Titan and is currently in a crystal'),
('Reiner Braun', 'A former cadet who is revealed to be the Armored Titan and a warrior of Marley'),
('Bertolt Hoover', 'A former cadet who is revealed to be the Colossal Titan and a warrior of Marley'),
('Ymir', 'A former Titan who regains her human form and has a romantic relationship with Historia'),
('Zeke Jaeger', 'The current Beast Titan and the half-brother of Eren who leads the warriors of Marley'),
('Pieck Finger', 'The current Cart Titan and a loyal warrior of Marley'),
('Porco Galliard', 'The current Jaw Titan and the younger brother of Marcel who was eaten by Ymir'),
('Falco Grice', 'A young warrior candidate who inherits the Jaw Titan from Porco'),
('Gabi Braun', 'A young warrior candidate who is the cousin of Reiner and a fanatic patriot of Marley'),
('Colt Grice', 'The older brother of Falco and the former successor of the Beast Titan'),
('Theo Magath', 'The former general of the Marleyan army and an ally of the Eldian Restorationists'),
('Grisha Jaeger', 'Eren and zekes father AND W MANS'),
('Ymir Fritz', 'THE FOUNDER'),
('Kenny Ackerman', 'Levis unc'), 
('Kaya', 'man ekki'),
('Nicolo', 'Marleyan chef'),
('Marco Bott', 'Half guy'),
('Dot Pixis', 'commander of something something'),
('Onyankopon', 'Nathan doku');

/* oyasumi punpun */

INSERT INTO characters (name, description)
VALUES
('Punpun Onodera', 'The main character of Oyasumi Punpun. A young boy who is most often depicted as a bird, although he is also shown in other forms as his character evolves. He struggles with his dysfunctional family, love life, friends, life goals and hyperactive mind.'),
('Aiko Tanaka', 'Punpun''s primary love interest. A girl who transfers to Punpun''s elementary school and becomes his first crush. She suggests that she and Punpun run away to Kagoshima. She occasionally takes on the last name Orihara.'),
('God', 'A being, displayed as a photographic afro head, that often appears in front of Punpun in his times of need. He claims to be the creator of the universe, but he is also sarcastic, rude, and indifferent to Punpun''s problems.'),
('Mama Punpun', 'Punpun''s mother, depressed and suffering from mood swings and anger issues. She has a very conflicted relationship with Punpun, to whom she gives her last name, Onodera, after she and Punpun''s father get divorced.'),
('Yūichi Onodera', 'Punpun''s uncle, a 30-something freeter. Yūichi takes care of Punpun while his mother is in the hospital. He is often irresponsible and immature, but he cares for Punpun and tries to help him.'),
('Midori Ōkuma', 'Yūichi''s girlfriend who runs a cafe. She briefly joins Punpun''s family during middle school and helps take care of him and his family. She is kind and cheerful, but she also has a dark past and a secret.'),
('Sachi Nanjō', 'A young woman Punpun meets in his young adult life. She is an aspiring manga artist who grows to be one of Punpun''s close friends. She is smart, confident, and supportive, but she also has a cynical and blunt personality.'),
('Harumi Seki', 'Punpun''s classmate and friend in elementary school. He is a chubby boy who likes to make jokes and play video games. He is loyal to Punpun and often tries to cheer him up.'),
('Masumi Shimizu', 'Punpun''s classmate and friend in elementary school. He is a skinny boy who wears glasses and likes to read books. He is intelligent and curious, but he also has a twisted and perverted side.'),
('Miyuki Kanie', 'Punpun''s classmate and friend in elementary school. She is a tomboyish girl who likes to play sports and fight. She is brave and strong, but she also has a soft spot for Punpun and Aiko.'),
('Komatsu', 'Punpun''s friend and co-worker in his young adult life. He is a handsome and charismatic man who likes to flirt with women and party. He is friendly and outgoing, but he also has a manipulative and selfish side.'),
('Shimizu', 'Punpun''s friend and co-worker in his young adult life. He is a quiet and reserved man who likes to play video games and watch anime. He is loyal and reliable, but he also has a violent and obsessive side.'),
('Pegasus', 'A mysterious man who claims to be an alien and the leader of a cult. He has a vision of the apocalypse and tries to recruit Punpun and his friends to his cause. He is eccentric and charismatic, but he also has a delusional and dangerous side.');

/* the walking dead */

INSERT INTO characters (name, description)
VALUES
('Rick Grimes', 'The protagonist of the series. A former sheriff''s deputy who is shot in the line of duty and awakens from a coma to find the world overrun by zombies. He becomes the leader of a group of survivors and tries to protect them from various threats.'),
('Lori Grimes', 'Rick''s wife, who initially believes him to be dead and has an affair with his best friend Shane. She becomes pregnant and gives birth to a daughter, Judith. She is killed by the Governor during the prison assault.'),
('Carl Grimes', 'Rick and Lori''s son, who grows up in the post-apocalyptic world and becomes hardened and mature beyond his years. He loses his right eye after being shot by Douglas Monroe. He develops a close relationship with Sophia and later Lydia.'),
('Shane Walsh', 'Rick''s best friend and former partner, who becomes the leader of the Atlanta camp after Rick''s presumed death. He has an affair with Lori and becomes jealous and hostile when Rick returns. He is killed by Carl after attempting to murder Rick.'),
('Glenn Rhee', 'A former pizza delivery boy who becomes a valuable member of the group due to his resourcefulness and courage. He falls in love with and marries Maggie Greene. He is brutally killed by Negan, who smashes his head with a baseball bat.'),
('Andrea', 'A former civil rights lawyer who becomes a skilled sharpshooter and one of the group''s best fighters. She forms a romantic relationship with Dale and later Rick. She is bitten by a walker during the Whisperers'' attack and dies in Rick''s arms.'),
('Dale Horvath', 'An elderly man who owns a RV and becomes a father figure to the group. He is wise and compassionate, but also stubborn and moralistic. He is in a relationship with Andrea. He is killed by a group of cannibals who eat his legs.'),
('Carol Peletier', 'A meek and abused housewife who becomes more independent and assertive after the apocalypse. She is the mother of Sophia, who goes missing and is later revealed to be turned into a walker. She commits suicide by allowing a walker to bite her.'),
('Sophia Peletier', 'Carol''s daughter, who is shy and timid. She goes missing during a herd attack and is later found as a walker in Hershel''s barn. She is put down by Rick. She later reappears as a ghost to haunt Carl.'),
('Tyreese', 'A former NFL player who becomes a loyal and strong member of the group. He is the brother of Sasha and the father of Julie. He is in a relationship with Michonne and later Karen. He is decapitated by the Governor during the prison assault.'),
('Michonne', 'A mysterious and katana-wielding woman who joins the group after saving Andrea from walkers. She is fierce and independent, but also caring and loyal. She is in a relationship with Tyreese and later Ezekiel. She becomes a prominent leader of the Commonwealth.'),
('Maggie Greene', 'Hershel''s eldest daughter, who becomes Glenn''s wife and the mother of Hershel Jr. She is brave and resourceful, but also suffers from depression and suicidal thoughts. She becomes the leader of the Hilltop Colony and later the president of the Commonwealth.'),
('Hershel Greene', 'A veterinarian and farmer who owns a farm where the group takes refuge. He is religious and optimistic, but also naive and stubborn. He is the father of Maggie, Billy, Lacey, Arnold, Rachel, and Susie. He is killed by the Governor during the prison assault.'),
('Billy Greene', 'Hershel''s youngest son, who is quiet and gentle. He is in a relationship with Patricia. He is killed by Ben, who stabs him in the neck.'),
('Lacey Greene', 'Hershel''s eldest daughter, who is killed by walkers during the farm attack.'),
('Arnold Greene', 'Hershel''s son, who is killed by walkers during the farm attack.'),
('Rachel Greene', 'Hershel''s youngest daughter, who is killed by Thomas Richards, a serial killer among the prison inmates.'),
('Susie Greene', 'Hershel''s youngest daughter, who is killed by Thomas Richards, a serial killer among the prison inmates.'),
('Otis', 'A farmhand who works for Hershel. He is responsible for shooting Carl by accident. He is killed by Shane, who shoots him in the leg and leaves him to be devoured by walkers.'),
('Patricia', 'Otis''s wife, who is a nurse and helps treat Carl''s wound. She is in a relationship with Billy. She is killed by walkers during the prison assault.'),
('Amy', 'Andrea''s younger sister, who is part of the Atlanta camp. She is killed by a walker during the camp attack on her birthday.'),
('Abraham Ford', 'A former army sergeant who leads a small group of survivors to Washington, D.C., believing that his friend Eugene has a cure for the zombie plague. He is tough and blunt, but also'),
('Negan', 'EVIL GUY');

/* the boys */

INSERT INTO characters (name, description)
VALUES
('Billy Butcher', 'The leader of the Boys, a group of vigilantes who oppose the corrupt superheroes. He is a former SAS soldier who is driven by revenge against Homelander, who he believes raped and killed his wife Becca.'),
('Hughie Campbell', 'A young man who joins the Boys after his girlfriend Robin is killed by A-Train. He is naive and compassionate, but also brave and resourceful. He develops a romantic relationship with Starlight, a member of the Seven.'),
('Homelander', 'The leader of the Seven, a group of superheroes who work for Vought International. He is the most powerful and popular superhero, but he is also a sociopath who abuses his power and manipulates others. He is the biological father of Ryan, Becca and Billy''s son.'),
('Starlight', 'A young and idealistic superhero who joins the Seven. She has the power to generate light and energy blasts. She is disillusioned by the corruption and hypocrisy of the superhero industry, and becomes an ally of the Boys. She is in a romantic relationship with Hughie.'),
('Queen Maeve', 'A veteran superhero who is a member of the Seven. She has super strength, durability, and agility. She is cynical and disillusioned by the superhero industry, and has a strained relationship with Homelander. She is bisexual and has a former girlfriend named Elena.'),
('A-Train', 'A superhero who is a member of the Seven. He has super speed and endurance. He is arrogant and reckless, and addicted to Compound V, a substance that enhances his abilities. He is responsible for killing Robin, Hughie''s girlfriend.'),
('Mother''s Milk', 'A member of the Boys, and a former friend of Billy. He is a former juvenile detention center counselor who has a strong sense of justice and morality. He is loyal and reliable, but also pragmatic and cautious. He has a wife and daughter who he cares for deeply.'),
('The Deep', 'A superhero who is a member of the Seven. He has the power to breathe underwater and communicate with aquatic life. He is insecure and immature, and often mocked by his teammates. He is a sexual predator who sexually assaults Starlight when she joins the Seven.'),
('Frenchie', 'A member of the Boys, and a former friend of Billy. He is a former mercenary and weapons expert who has a knack for improvisation and creativity. He is eccentric and impulsive, but also caring and loyal. He has a romantic relationship with Kimiko, a former member of the Seven.'),
('Kimiko', 'A former member of the Seven, who is rescued by the Boys. She has super strength, durability, and healing. She is mute and traumatized by her past as a child soldier and a test subject for Compound V. She has a close bond with Frenchie, who teaches her sign language.'),
('Black Noir', 'A mysterious and silent superhero who is a member of the Seven. He has super strength, durability, and stealth. He is loyal and obedient to Homelander, and often carries out his orders without question. He is revealed to be a clone of Homelander, created by Vought as a contingency plan.'),
('Madelyn Stillwell', 'The senior vice president of hero management at Vought International, and Homelander''s handler. She is ambitious and manipulative, and uses her influence to cover up the crimes and scandals of the superheroes. She has a sexual relationship with Homelander, who kills her by burning her eyes with his heat vision.'),
('Ashley Barrett', 'The director of talent relations at Vought International, and Starlight''s handler. She is nervous and stressed, and often pressured by her superiors to manage the public image of the superheroes. She becomes the senior vice president of hero management after Stillwell''s death.'),
('Stormfront', 'A new member of the Seven, who is introduced in the second season. She has the power to manipulate electricity and fly. She is outspoken and rebellious, and often clashes with Homelander. She is revealed to be a former Nazi and a racist supremacist, who is over a century old and was the first successful recipient of Compound V.'),
('Victoria Neuman', 'A congresswoman who leads the campaign against Vought International and the superheroes. She is charismatic and popular, and has a strong support from the public. She is revealed to be a supe, who has the power to make people''s heads explode with her mind. She is secretly working with Vought to undermine the Boys and the Seven.'),
('Soldier Boy', 'A superhero who is introduced in the third season. He is the leader of Payback, a rival superhero team to the Seven. He is a parody of Captain America, and claims to be the first superhero who fought in World War II. He is revealed to be a coward and a fraud, who was manipulated by Vought to create a false history of superheroes.'),
('Ryan Butcher', 'The son of Becca and Homelander, who is conceived after Homelander rapes Becca. He is raised by Becca in a secret location, away from Homelander and Vought. He has inherited Homelander''s powers, but he is also innocent and naive. He accidentally kills Becca when he tries to protect her from Stormfront.');


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
