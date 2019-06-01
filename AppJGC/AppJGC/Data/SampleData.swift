//
//  SampleData.swift
//  AppJGC
//
//  Created by Javier Gandia Calderón on 23/5/19.
//  Copyright © 2019 Javier Gandia Calderón. All rights reserved.
//

import Foundation

var defaultUsers: [Users] = [Users(photo: "userhombrecristiano",
                                   name: "Oliver",
                                   userid: "Oliver2019",
                                   email: "oliver19@gmail.com"),
                             Users(photo: "userhombretatuado",
                                   name: "Marcos",
                                   userid: "marmarck25",
                                   email: "marcos25@gmail.com"),
                             Users(photo: "usermujerhippy",
                                   name: "Marta",
                                   userid: "marvel",
                                   email: "martaown@gmail.com"),
                             Users(photo: "userhombrebatman",
                                   name: "Alex",
                                   userid: "lopez1315",
                                   email: "alexalex13@gmail.com"),
                             Users(photo: "userrobot",
                                   name: "Sergio",
                                   userid: "frosi",
                                   email: "iamfrosi@gmail.com"),
                             Users(photo: "userhombrejapones",
                                   name: "Jimmy",
                                   userid: "jimmykawasaki",
                                   email: "jimyytdk@gmail.com"),
                             Users(photo: "usermujerdetec",
                                   name: "Ana",
                                   userid: "analpd",
                                   email: "anna18@gmail.com"),
                             Users(photo: "usermujerparis",
                                   name: "Natalia",
                                   userid: "nataliaalcarre",
                                   email: "nata1300@gmail.com"),
                             Users(photo: "userhombregafas",
                                   name: "Kike",
                                   userid: "kike1325",
                                   email: "wario33@gmail.com"),
                             Users(photo: "usermujermatrix",
                                   name: "Maria",
                                   userid: "lota1819",
                                   email: "marian13@gmail.com")]

let defaultSeries: [Series] = [Series(photo:"seriegameofthethrones",
                                      name: "The Game Of Thrones",
                                      review: "In the mythical continent of Westeros, several powerful families fight for control of the Seven Kingdoms. As conflict erupts in the kingdoms of men, an ancient enemy rises once again to threaten them all. Meanwhile, the last heirs of a recently usurped dynasty plot to take back their homeland from across the Narrow Sea.",
                                      director: "David Benioff, D.B. Weiss",
                                      runtime: "57  minutes per episode",
                                      seasons: "8 seasons",
                                      genres: "Action | Adventure | Drama | Fantasy | Romance",
                                      date:  Calendar.current.date(from: DateComponents(year: 2012,
                                                                                        month: 10, day: 22 )))
    ,
                               Series(photo: "seriearrow",
                                      name: "Arrow",
                                      review: "Oliver Queen and his father are lost at sea when their luxury yacht sinks, apparently in a storm. His father dies, but Oliver survives for five years on an uncharted island and eventually returns home. But he wasn't alone on the island where he learned not only how to fight and survive but also of his father's corruption and unscrupulous business dealings. He returns to civilization a changed man, determined to put things right. He disguises himself with the hood of one of his mysterious island mentors, arms himself with a bow and sets about hunting down the men and women who have corrupted his city.",
                                      
                                      director: "Greg Berlanti, Marc Guggenheim, Andrew Kreisberg",
                                      runtime: "42  minutes per episode",
                                      seasons:"8 seasons",
                                      
                                      genres: "Action | Adventure | Crime | Drama | Mystery | Sci-Fi",
                                      date:  Calendar.current.date(from: DateComponents(year: 2011,
                                                                                        month: 4, day: 18 ))),
                               Series(photo: "serie13reasonswhy",
                                      name: "13 Reasons Why",
                                      review: "Thirteen Reasons Why, based on the best-selling books by Jay Asher, follows teenager Clay Jensen (Dylan Minnette) as he returns home from school to find a mysterious box with his name on it lying on his porch. Inside he discovers a group of cassette tapes recorded by Hannah Baker (Katherine Langford) -his classmate and crush-who tragically committed suicide two weeks earlier. On tape, Hannah unfolds an emotional audio diary, detailing the thirteen reasons why she decided to end her life. Through Hannah and Clay's dual narratives, Thirteen Reasons Why weaves an intricate and heartrending story of confusion and desperation that will deeply affect viewers. ",
                                      director: "Brian Yorkey",
                                      runtime: "60  minutes per episode",
                                      seasons: "3 seasons",
                                      genres: "Drama | Mystery",
                                      date:  Calendar.current.date(from: DateComponents(year: 2017,
                                                                                        month: 3, day: 31 ))),
                               Series(photo: "serieblackmirror",
                                      name: "Black Mirror",
                                      review: "Set in a world only minutes from our own, 'Black Mirror' unveils how modern technologies can backfire and be used against their makers, every episode set in a slightly different reality with different characters combating different types of technologies.",
                                      director: "Charlie Brooker",
                                      runtime: "60  minutes per episode",
                                      seasons: "5 seasons",
                                      genres: " Drama | Sci-Fi | Thriller",
                                      
                                      date: Calendar.current.date(from: DateComponents(year: 2011,
                                                                                       month: 12, day: 4 ))),
                               Series(photo: "seriemom",
                                      name: "Mom",
                                      review: "Single mom Christy has her hands full with two children, Violet and Roscoe, and maintaining newfound sobriety, when her passive-aggressive, recovering-alcoholic mother re-enters the picture, brimming with criticisms about Christy's life. As the daughter works to be the best mother she can and to overcome mistakes she made, she must also navigate dysfunctional relationships with romantic interests, and with her irresponsible ex-husband, Baxter. Despite the uphill battle, Christy tries to remain positive and stay on a path to help her reach her goals.",
                                      director: "Gemma Baker, Eddie Gorodetsky, Chuck Lorre",
                                      runtime: "30  minutes per episode",
                                      seasons:"8 seasons",
                                      genres: "Comedy | Drama | Romance ",
                                      date:  Calendar.current.date(from: DateComponents(year: 2011,
                                                                                        month: 4, day: 18 ))),
                               Series(photo: "seriethewalkingdead",
                                      name: "The Walking Dead",
                                      review: "Sheriff Deputy Rick Grimes gets shot and falls into a coma. When awoken he finds himself in a Zombie Apocalypse. Not knowing what to do he sets out to find his family, after he's done that he gets connected to a group to become the leader. He takes charge and tries to help this group of people survive, find a place to live, and get them food. This show is all about survival, the risks, and the things you'll have to do to survive. ",
                                      director: "Frank Darabont, Angela Kang",
                                      runtime: "44  minutes per episode",
                                      seasons:"10 seasons",
                                      genres: " Drama | Horror | Thriller",
                                      date:  Calendar.current.date(from: DateComponents(year: 2010,
                                                                                        month: 11, day: 5 ))),
                               Series(photo: "serietwoandahalfmen",
                                      name: "Two and a Half Men",
                                      review: "The Harper brothers Charlie and Alan are almost opposites but form a great team. They have little in common except their dislike for their mundane, maternally cold and domineering mother, Evelyn. Alan, a compulsively neat chiropractor and control-freak, is thrown out by his manipulative wife Judith who nevertheless gets him to pay for everything and do most jobs in the house. Charlie is a freelance jingle composer and irresistible Cassanova who lives in a luxurious beach-house and rarely gets up before noon. Charlie 'temporarily' allows Alan and his son Jake, a food-obsessed, lazy kid who shuttles between his parents, to move in with them after Alan's separation/divorce. The sitcom revolves around their conflicting lifestyles, raising Jake (who has the efficient, caring dad while having a ball with his fun-loving sugar uncle who teaches him boyish things), and bantering with Evelyn and various other friends and family. Other fairly regular characters include Charlie's cleaning lady ... ",
                                      director: "Lee Aronsohn, Chuck Lorre",
                                      runtime: "22  minutes per episode",
                                      seasons: "12 seasons",
                                      genres: " Comedy | Romance",
                                      date:  Calendar.current.date(from: DateComponents(year: 2004,
                                                                                        month: 6, day: 5 ))),
                               Series(photo: "serievikings",
                                      name: "Vikings",
                                      review: "The adventures of a Ragnar Lothbrok: the greatest hero of his age. The series tells the saga of Ragnar's band of Viking brothers and his family as he rises to become King of the Viking tribes. As well as being a fearless warrior, Ragnar embodies the Norse traditions of devotion to the gods: legend has it that he was a direct descendant of Odin, the god of war and warriors.",
                                      director: " Michael Hirst",
                                      runtime: "44  minutes per episode",
                                      seasons: "6 seasons",
                                      genres: "Action | Adventure | Drama | History | Romance | War",
                                      date:  Calendar.current.date(from: DateComponents(year: 2013,
                                                                                        month: 5, day: 24 ))),
                               Series(photo: "seriethebigbangtheory",
                                      name: "The Big Bang Theory",
                                      review: "Leonard Hofstadter and Sheldon Cooper are both brilliant physicists working at Cal Tech in Pasadena, California. They are colleagues, best friends, and roommates, although in all capacities their relationship is always tested primarily by Sheldon's regimented, deeply eccentric, and non-conventional ways. They are also friends with their Cal Tech colleagues mechanical engineer Howard Wolowitz and astrophysicist Rajesh Koothrappali. The foursome spend their time working on their individual work projects, playing video games, watching science-fiction movies, or reading comic books. As they are self-professed nerds, all have little or no luck with women. When Penny, a pretty woman and an aspiring actress from Omaha, moves into the apartment across the hall from Leonard and Sheldon's, Leonard has another aspiration in life, namely to get Penny to be his girlfriend.",
                                      director: "Chuck Lorre, Bill Prady",
                                      runtime: "22  minutes per episode",
                                      seasons:"12 seasons",
                                      genres: "Comedy | Romance",
                                      date:  Calendar.current.date(from: DateComponents(year: 2008,
                                                                                        month: 2, day: 14 ))),
                               Series(photo: "seriethesimpsons",
                                      name: "The Simpsons",
                                      review: "This is an animated sitcom about the antics of a dysfunctional family. Homer is the oafish unhealthy beer loving father, Marge is the hardworking homemaker wife, Bart is the perpetual ten-year-old underachiever (and proud of it), Lisa is the unappreciated eight-year-old genius, and Maggie is the cute, pacifier loving silent infant. " ,
                                      runtime: "22  minutes per episode",
                                      seasons: "31 seasons",
                                      genres: "Animation | Comedy",
                                      date:  Calendar.current.date(from: DateComponents(year: 1990,
                                                                                        month: 9, day: 2 )))]

let defaultMovies: [Movies] = [Movies(photo: "movieavatar",
                                      name: "Avatar",
                                      review: "",
                                      director: "",
                                      runtime: "128 minutes",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "movie9",
                                      name: "Nine ",
                                      review: "",
                                      director: "",
                                      runtime: "128 minutes",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviebacktothefuture",
                                      name: "Back to the Future",
                                      review: ""),
                               Movies(photo: "moviecaptainamerica1",
                                      name: "Captain America The First Avenger",
                                      review: "",
                                      director: "",
                                      runtime: "128 minutes",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviecars2",
                                      name: "Cars 2",
                                      review: "",
                                      director: "",
                                      runtime: "128 minutes",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviedarkshadows",
                                      name: "Dark Shadows",
                                      review: "",
                                      director: "",
                                      runtime: "128",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviedoriangray",
                                      name: "Dorian Gray",
                                      review: "",
                                      director: "",
                                      runtime: "128",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviehancock",
                                      name: "Hancock",
                                      review: ""),
                               Movies(photo: "movieharrypotter",
                                      name: "Harry Potter and the Order of the Phoenix",
                                      review: "",
                                      director: "",
                                      runtime: "128 minutes",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviehungergames",
                                      name: "The Hunger Games",
                                      review: "",
                                      director: "",
                                      runtime: "128 minutes",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "movienarnia1",
                                      name: "Narnia the lion the witch and the wardrobe ",
                                      review: "",
                                      director: "",
                                      runtime: "128 min",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviepercyjackson1",
                                      name: "Percy Jackson and the Lighting Thief",
                                      review: "",
                                      director: "",
                                      runtime: "128 min",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviescarymovie1",
                                      name: "Scary Movie",
                                      review: "",
                                      director: "",
                                      runtime: "128 min",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviesherlockHolmes",
                                      name: "Sherlock Holmes",
                                      review: "Detective Sherlock Holmes and his stalwart partner Watson engage in a battle of wits and brawn with a nemesis whose plot is a threat to all of England.",
                                      director: "",
                                      runtime: "128 min",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviethisisit",
                                      name: "This is It",
                                      review: "",
                                      director: "",
                                      runtime: "128 min",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller"),
                               Movies(photo: "moviezombieland",
                                      name: "ZombieLand",
                                      review: "",
                                      director: "",
                                      runtime: "128 min",
                                      genres: "Action | Adventure | Crime | Mystery | Thriller")]

var defaultAnimes: [Animes] = [Animes(photo: "animeberserk",
                                      name: "Berserk",
                                      review: "Born from the corpse of his mother, a young mercenary known only as Guts, embraces the battlefield as his only means of survival. Day in and day out, putting his life on the line just to make enough to get by, he moves from one bloodshed to the next.After a run-in with the Band of the Hawk, a formidable troop of mercenaries, Guts is recruited by their charismatic leader Griffith, nicknamed the 'White Hawk.' As he quickly climbed the ranks in order to become the head of the offensive faction, Guts proves to be a mighty addition to Griffith's force, taking Midland by storm. However, while the band's quest for recognition continues, Guts slowly realizes that the world is not as black-and-white as he once assumed.",
                                      runtime: "25  minutes per episode",
                                      seasons: "3 seasons",
                                      episodes: "25 episodes",
                                      genres: "Action | Adventure | Demons | Drama | Fantasy | Horror | Military | Romance | Seinen | Supernatural",
                                      date: Calendar.current.date(from: DateComponents(year: 1997,
                                                                                       month: 10, day: 8 )),
                                      photodetail: "danimeberserk"),
                               
                               Animes(photo: "animebokudake",
                                      name: "Boku dake ga Inai Machi",
                                      review: "When tragedy is about to strike, Satoru Fujinuma finds himself sent back several minutes before the accident occurs. The detached, 29-year-old manga artist has taken advantage of this powerful yet mysterious phenomenon, which he calls 'Revival,' to save many lives. However, when he is wrongfully accused of murdering someone close to him, Satoru is sent back to the past once again, but this time to 1988, 18 years in the past. Soon, he realizes that the murder may be connected to the abduction and killing of one of his classmates, the solitary and mysterious Kayo Hinazuki, that took place when he was a child. This is his chance to make things right.",
                                      runtime: " 23  minutes per episode",
                                      seasons: "1 season",
                                      episodes:"12 episodes",
                                      genres: " Mystery | Psychological | Supernatural | Seinen",
                                      date: Calendar.current.date(from: DateComponents(year: 2016,
                                                                                       month: 1, day: 8 )),
                                      photodetail: "danimebokudake"),
                               
                               Animes(photo: "animedragonballz",
                                      name: "Dragon Ball Z",
                                      review: "Five years after winning the World Martial Arts tournament, Gokuu is now living a peaceful life with his wife and son. This changes, however, with the arrival of a mysterious enemy named Raditz who presents himself as Gokuu's long-lost brother. He reveals that Gokuu is a warrior from the once powerful but now virtually extinct Saiyan race, whose homeworld was completely annihilated. When he was sent to Earth as a baby, Gokuu's sole purpose was to conquer and destroy the planet; but after suffering amnesia from a head injury, his violent and savage nature changed, and instead was raised as a kind and well-mannered boy, now fighting to protect others. With his failed attempt at forcibly recruiting Gokuu as an ally, Raditz warns Gokuu's friends of a new threat that's rapidly approaching Earth—one that could plunge Earth into an intergalactic conflict and cause the heavens themselves to shake. A war will be fought over the seven mystical dragon balls, and only the strongest will survive in Dragon Ball Z.",
                                      runtime: "24 minutes per episode",
                                      seasons: "1 season",
                                      episodes: "306 episodes",
                                      genres: "Action | Adventure | Comedy | Fantasy | Martial Arts | Shounen | Super Power",
                                      date: Calendar.current.date(from: DateComponents(year: 1990,
                                                                                       month: 9, day: 2 )),
                                      photodetail: "danimedragonballz"),
                               
                               Animes(photo: "animefatestaynight",
                                      name: "Fate Stay Night",
                                      review: "After a mysterious inferno kills his family, Shirou is saved and adopted by Kiritsugu Emiya, who teaches him the ways of magic and justice. One night, years after Kiritsugu's death, Shirou is cleaning at school, when he finds himself caught in the middle of a deadly encounter between two superhumans known as Servants. During his attempt to escape, the boy is caught by one of the Servants and receives a life-threatening injury. Miraculously, he survives, but the same Servant returns to finish what he started. In desperation, Shirou summons a Servant of his own, a knight named Saber. The two must now participate in the Fifth Holy Grail War, a battle royale of seven Servants and the mages who summoned them, with the grand prize being none other than the omnipotent Holy Grail itself. Fate/stay night follows Shirou as he struggles to find the fine line between a hero and a killer, his ideals clashing with the harsh reality around him. Will the boy become a hero like his foster father, or die trying?",
                                      runtime: "24 per episode",
                                      seasons: "2 seasons",
                                      episodes:"56 episodes",
                                      genres: " Action | Supernatural | Magic | Romance | Fantasy",
                                      date: Calendar.current.date(from: DateComponents(year: 2006,
                                                                                       month: 1, day: 7 )),
                                      photodetail: "danimefatestaynight"),
                               
                               Animes(photo: "animedeathnote",
                                      name: "Death Note",
                                      review: "A shinigami, as a god of death, can kill any person—provided they see their victim's face and write their victim's name in a notebook called a Death Note. One day, Ryuk, bored by the shinigami lifestyle and interested in seeing how a human would use a Death Note, drops one into the human realm.High school student and prodigy Light Yagami stumbles upon the Death Note and—since he deplores the state of the world—tests the deadly notebook by writing a criminal's name in it. When the criminal dies immediately following his experiment with the Death Note, Light is greatly surprised and quickly recognizes how devastating the power that has fallen into his hands could be.With this divine capability, Light decides to extinguish all criminals in order to build a new world where crime does not exist and people worship him as a god. Police, however, quickly discover that a serial killer is targeting criminals and, consequently, try to apprehend the culprit. To do this, the Japanese investigators count on the assistance of the best detective in the world: a young and eccentric man known only by the name of L.",
                                      runtime: "23 minutes per episode",
                                      seasons: "1 season",
                                      episodes: "39 episodes",
                                      genres: "Mystery | Police | Psychological | Supernatural| Thriller| Shounen",
                                      date: Calendar.current.date(from: DateComponents(year: 1990,
                                                                                       month: 9, day: 2 )),
                                      photodetail: "danimedeathnote"),
                               
                               Animes(photo: "animebokunohero",
                                      name: "Boku no Hero",
                                      review: "The appearance of 'quirks,' newly discovered super powers, has been steadily increasing over the years, with 80 percent of humanity possessing various abilities from manipulation of elements to shapeshifting. This leaves the remainder of the world completely powerless, and Izuku Midoriya is one such individual. Since he was a child, the ambitious middle schooler has wanted nothing more than to be a hero. Izuku's unfair fate leaves him admiring heroes and taking notes on them whenever he can. But it seems that his persistence has borne some fruit: Izuku meets the number one hero and his personal idol, All Might. All Might's quirk is a unique ability that can be inherited, and he has chosen Izuku to be his successor!Enduring many months of grueling training, Izuku enrolls in UA High, a prestigious high school famous for its excellent hero training program, and this year's freshmen look especially promising. With his bizarre but talented classmates and the looming threat of a villainous organization, Izuku will soon learn what it really means to be a hero.",
                                      runtime: "24 minutes per episode",
                                      seasons: "4 seasons",
                                      episodes: "69 episodes",
                                      genres: "Action | Comedy | School | Shounen | Super Power",
                                      date: Calendar.current.date(from: DateComponents(year: 2016,
                                                                                       month: 4, day: 3 )),
                                      photodetail: "danimebokunohero"),
                               
                               Animes(photo: "animehajimenoippo",
                                      name: "Hajime no Ippo",
                                      review: "Makunouchi Ippo has been bullied his entire life. Constantly running errands and being beaten up by his classmates, Ippo has always dreamed of changing himself, but never has the passion to act upon it. One day, in the midst of yet another bullying, Ippo is saved by Takamura Mamoru, who happens to be a boxer. Ippo faints from his injuries and is brought to the Kamogawa boxing gym to recover. As he regains consciousness, he is awed and amazed at his new surroundings in the gym, though lacks confidence to attempt anything. Takamura places a photo of Ippo's classmate on a punching bag and forces him to punch it. It is only then that Ippo feels something stir inside him and eventually asks Takamura to train him in boxing. Thinking that Ippo does not have what it takes, Takamura gives him a task deemed impossible and gives him a one week time limit. With a sudden desire to get stronger, for himself and his hard working mother, Ippo trains relentlessly to accomplish the task within the time limit. Thus Ippo's journey to the top of the boxing world begins.",
                                      runtime: "23 minutes per episode",
                                      seasons: "3 seasons",
                                      episodes: "129 episodes",
                                      genres: " Comedy | Sports | Drama | Shounen",
                                      date: Calendar.current.date(from: DateComponents(year: 2000,
                                                                                       month: 10, day: 4 )),
                                      photodetail: "danimehajimenoippo"),
                               
                               Animes(photo: "animeoverlord",
                                      name: "Overlord",
                                      review: "The final hour of the popular virtual reality game Yggdrasil has come. However, Momonga, a powerful wizard and master of the dark guild Ainz Ooal Gown, decides to spend his last few moments in the game as the servers begin to shut down. To his surprise, despite the clock having struck midnight, Momonga is still fully conscious as his character and, moreover, the non-player characters appear to have developed personalities of their own! Confronted with this abnormal situation, Momonga commands his loyal servants to help him investigate and take control of this new world, with the hopes of figuring out what has caused this development and if there may be others in the same predicament.",
                                      runtime: "24 minutes per episode",
                                      seasons: "3 seasons",
                                      episodes: "39 episodes",
                                      genres: "Action |Adventure | Fantasy | Game | Magic | Supernatural",
                                      date: Calendar.current.date(from: DateComponents(year: 2015,
                                                                                       month: 6, day: 7 )),
                                      photodetail: "danimeoverlord"),
                               
                               Animes(photo: "animeshingekinkyojin",
                                      name: "Shingeki no Kyojin",
                                      review: "Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is soon shattered when a colossal titan manages to breach the supposedly impregnable outer wall, reigniting the fight for survival against the man-eating abominations. After witnessing a horrific personal loss at the hands of the invading creatures, Eren Yeager dedicates his life to their eradication by enlisting into the Survey Corps, an elite military unit that combats the merciless humanoids outside the protection of the walls. Based on Hajime Isayama's award-winning manga, Shingeki no Kyojin follows Eren, along with his adopted sister Mikasa Ackerman and his childhood friend Armin Arlert, as they join the brutal war against the titans and race to discover a way of defeating them before the last walls are breached.",
                                      runtime: "24 minutes per episode",
                                      seasons: "3 seasons",
                                      episodes: "70 episodes",
                                      genres: " Action | Military | Mystery | Super Power | Drama | Fantasy | Shounen",
                                      date: Calendar.current.date(from: DateComponents(year: 2013,
                                                                                       month: 4, day: 7 )),
                                      photodetail: "danimeshingekinokyojin"),
                               
                               Animes(photo: "animeshokugekinosoma",
                                      name: "Shokugeki no Soma",
                                      review: "Ever since he was a child, fifteen-year-old Souma Yukihira has helped his father by working as the sous chef in the restaurant his father runs and owns. Throughout the years, Souma developed a passion for entertaining his customers with his creative, skilled, and daring culinary creations. His dream is to someday own his family's restaurant as its head chef. Yet when his father suddenly decides to close the restaurant to test his cooking abilities in restaurants around the world, he sends Souma to Tootsuki Culinary Academy, an elite cooking school where only 10 percent of the students graduate. The institution is famous for its 'Shokugeki' or 'food wars,' where students face off in intense, high-stakes cooking showdowns. As Souma and his new schoolmates struggle to survive the extreme lifestyle of Tootsuki, more and greater challenges await him, putting his years of learning under his father to the test.",
                                      runtime: "25 minutes",
                                      seasons: "3 seasons",
                                      episodes: "24 episodes",
                                      genres: "Ecchi | School | Shounen",
                                      date: Calendar.current.date(from: DateComponents(year: 2015,
                                                                                       month: 4, day: 4 )),
                                      photodetail: "danimeshokugekinosoma")]
