# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  # Users
  User.destroy_all
  user1 = User.create!(username: 'TheHP', name: 'Harry Potter', email: 'harryp@email.com', password: 'password')

  user2 = User.create!(username: 'HGranger', name: 'Hermione Granger', email: 'hermioneg@email.com',
                       password: 'password')

  user3 = User.create!(username: 'Reasley', name: 'Ron Weasley', email: 'ronw@email.com', password: 'password')

  user4 = User.create!(username: 'HeadMaster', name: 'Albus Dumbledore', email: 'albusd@email.com',
                       password: 'password')

  user5 = User.create!(username: 'HalfBloodPrince', name: 'Severus Snape', email: 'severuss@email.com',
                       password: 'password')

  User.create!(username: 'ImmortalNic', name: 'Nicolas Flamel', email: 'nicolasf@email.com',
               password: 'password')

  user7 = User.create!(username: 'BeastMaster', name: 'Rubeus Hagrid', email: 'rubeush@email.com', password: 'password')

  user8 = User.create!(username: 'MasterWandsmith', name: 'Garrick Ollivander', email: 'garricko@email.com',
                       password: 'password')

  User.create!(username: 'PureBlood', name: 'Draco Malfoy', email: 'dracom@email.com', password: 'password')

  user10 = User.create!(username: 'Lestrange', name: 'Bellatrix Lestrange', email: 'bellatrixl@email.com',
                        password: 'password')

  user11 = User.create!(username: 'Muggle', name: 'Mikaela Renshaw', email: 'mikaelar@email.com', password: 'password')

  User.create!(username: 'Guest', name: 'Guest User', email: 'guest@email.com', password: 'password')

  # Stories
  Story.destroy_all
  story1 = Story.new(title: 'Seven Things That Make Me More Okay with Being a Muggle', body: "1. 11-year-olds are not given potentially deadly weapons.
  Obviously, wands are cool, and I would love to cast spells. However, given how deadly some spells can be, it does make me a little nervous that wands are just handed out to 11-year-old kids without much supervision. Sure, they can’t cast magic outside of school, but Hogwarts is a boarding school; they’re not constantly under watch. Also, they don’t need to learn the Killing Curse to be deadly. What do you think would happen if they lifted someone up using Wingardium Leviosa and then accidentally dropped them?

  2. I don’t have to carry heavy coins everywhere.
  No one likes carrying loads of cash. There’s a reason credit cards caught on – because they’re more convenient to use. And Muggle money is even lightweight! In the wizarding universe, all their money is made of gold, silver, and bronze. That’s going to have some heft to it. And even if you used magic to make your bag lighter, it would still be annoying to try to dig around for the right coins. Plus, calculating change would be a nightmare. 29 does not divide evenly into anything.

  3. The chances of getting my body stuck as something else are low.
  Let’s be real: Accidental body modification or transformation happens a lot in the wizarding world. Whether it’s the result of Splinching, messed up Polyjuice Potions, or a paranoid professor turning someone into a ferret, it seems to come up one way or another in every book. Frankly, I think all of those scenarios sound horrifying, and I would never want them to happen to me. Thankfully, in the Muggle world, the chances of that are a lot lower.

  4. There are no prophecies about my life.
  As a general rule, prophecies always seem to cause trouble. Trelawney’s certainly didn’t do Harry any favors. Also, I don’t really like the idea of my life being set in stone by someone else’s words. I’m a big believer in free will. And while not every individual in the magical world has a prophecy about them, maybe it’s better not to take any chances.

  5. No one expected me to fight a war while still in school.
  School is stressful enough when the only thing you have to worry about is finals. I’m surprised more students didn’t have a nervous breakdown when faced with the possibility of Lord Voldemort invading during those finals. That’s not to mention the fear and distress caused by having your school taken over by terrorists and then having to take classes from them. At least none of my teachers were that evil, and I just had to get through a semester of them. No one expected me to duel them.

  6. Medicine no longer involves ingesting things such as eel bladders.
  Yes, magical potions are cool. However, most of their ingredients sound disgusting. Think about it. Armadillo bile, bat spleens, dragon dung, and horned slugs – it sounds so gross. I don’t think I even want to touch any of those things, let alone drink them. Yes, hundreds of years ago, Muggle medicine might have made use of similar ingredients, but we’ve moved on since then. I think we’re much better off that way.

  7. My personality at age 11 doesn’t define me for the rest of my life.
  It’s a lot of fun to Sort ourselves into the Hogwarts Houses, but that’s all it is: fun. In Harry Potter, your House seems to define you for the rest of your life. People dislike Slytherins on principle. We see families expecting their kids to follow the family tradition and get Sorted into the same House they did. Hufflepuffs are dismissed as nothing more than duffers. But the thing is that no one is the same person they were at age 11. So can you imagine people making assumptions on who you are for the rest of your life based on your personality as a kid? That sounds super annoying. I’d much rather be judged by my social media profiles. At least I can change those.", author_id: user11.id)
  story1.save!

  story2 = Story.new(title: "I Went To Hogwarts For Seven Years and Did Not Learn Math or Spelling and Now I Can't Get a Job", body: "Dear Headmaster McGonagall:

  I am a recent Hogwarts graduate, and, although my time with you was a literal fantasy, I unfortunately did not learn a lot of basic skills, like math or spelling, at your skool.

  You may say, “Why do you need arithmetic? You’re a wizard. You can do magic!” To which I reply, sure, for some wizard careers that’s great, but other wizards work in middle management and just want a normal nine-to-five gig. When I graduated, I thought that all I would need was my wand and a couple of choice incantations, but these days, without at least a little algebra, you’re not even qualified to work in Bertie Bott’s retail department.

  It’s hard out here for a poorly rounded wizard. Recently, I went on magical LinkedIn and saw almost none of my Hogwarts class of 2007 represented at top-tier wizarding companies. It’s not difficult to speculate why—without the assistance of Hermione Granger, half of my fellow-Gryffindors couldn’t even conjugating most verbs, and I am not sure that the instruction we received from Hagrid the giant is technically certifiable. Additionally, I cannot sit still for more than four hours a day without embarking on spontaneous adventures, and my vocabulary is poop.

  Thanks to the Hogwarts curriculum, I can withstand mind control and even limited torture, but I cannot write a compelling cover letter without humiliating grammatical error’s. Why is literature not a course at your skool? I can enchant my quill to write my thoughts, but I never learned how to make my thoughts enchanting. I heard that Durmstrang students have a skool newspaper. You know what Hogwarts has? A three-headed dog lurking in the castle, with permission to kill whoever it finds. Indeedly, my life was constantly endangered while at Hogwarts, which was an academic distracshun.

  I have also noticed that some employers have dismissive attitudes toward Hogwarts graduates. For instance, I spoke to a recruiter from Gringotts who told me that they don’t accept candidates from party skools. Are we a party skool? I had friends die here, but not from drinking. (It’s because they were murdered.)

  You may or may not be aware, but the economy has changed, and the need for my skills defying Lord Voldemort has lessened. You know what would have been a better use of class time? The study of foreign languages. Geography. Brexit. Also, does it seem like graduating students from Slytherin House skew racist? Can we please get them some liberal-arts exposure?

  Perhaps most disturbing of all, our most gifted alumna, Hermione Granger, is as well read as she is only because she spent all of her time braking into an illegal library. I believe designating any part of a library as “forbidden” sends the wrong type of message to students, especially in a skool where skipping classes and even fighting your professors is kind of chill. Obviously, the culture surrounding education needs to change.

  Realistically, here is what I am qualified to be:

  * A troll hunter
  * An auror
  * An eccentric teacher at Hogwarts

  As you can imagine, this does not make me an appealing prospect for interview season.

  My wife and I have a son, and soon we will need to consider where to send our brave boy. I hope that, by the time he comes of skool age, Hogwarts will have evolved into the type of academic institution capable of preparing him for the highly technical competitive war zone that is the modern wizarding job market. In the meantime, is there an alumni network I can send my resumay to?", author_id: user3.id)

  story2.save!

  story3 = Story.new(title: 'Hello From Harry Potter', body: "When I drop off James and Albus for the new school year, I’m so looking forward to seeing you and delivering the Golden Snitch that I signed for the silent auction. I hope it raises a few galleons toward refurbishing the Sorting Hat, which was looking dodgy even back in the day, when it gave me a sword to kill that basilisk in the Chamber of Secrets. Mad times—but I’m glad I was able to help, in whatever small ways, to save Hogwarts from destruction.

  I write, however, on another subject. This fall, James will begin his third year on the Gryffindor quidditch team, but he has yet to start a game. I would never ask you to intercede with the coach, of course, but, as you know, wizarding universities expect to see many extracurricular boxes checked, and James’s only other activity is his work with stained glass. His teachers say he’s turning out cathedral-quality stuff, but we’re told that art achievements alone won’t cut it—even his (unobjective-parent alert!) spectacular depiction of me and my friends rescuing the Philosopher’s Stone.

  Let me first acknowledge the obvious: last year, James struggled with his broom-flying. Happily, we have solved that problem. He has been diagnosed with flying-attention deficit—he’s overly distracted by birds, clouds, and whatnot. So, in a fit of inspiration, I contacted Firebolt broom-makers (I confess I played the “H.P.” card), who made James a special broom that gives him a minor electric jolt when his attention wanders. His strides using it this summer have been absolutely phenomenal. However, to ride it in official school games, it looks like he will require a brief letter from you (which I’m happy to compose) to the Quidditch Society, explaining that he really does need this special accommodation.

  Having not played last year, James understandably has developed some anxiety around quidditch, so we’ve had Nobbler, our house elf, certified as an emotional-support elf (you won’t believe how cute his little vest is). On the rarest of occasions—it’s not likely, and almost certainly won’t happen—James may need Nobbler to ride behind him on his broom. And he’ll require the house master to sign off on Nobbler living with him—I believe this might qualify him for a single this year? We don’t want any special treatment, of course, but Nobbler does need to sing James to sleep and we wouldn’t want to disturb any other students.

  I hope you’ll forgive a father these requests. More than anyone, I know what a privilege it is for my kids to attend my alma mater. After all, I had to drop out of school to collect the horcruxes and unite the Deathly Hallows before defeating Voldemort. I envy this generation, who are able to enjoy their student years unimpeded. But then a peaceful world in which children can be children was always our shared goal, wasn’t it? It also happens to be the subject of James’s latest stained-glass piece, which, by the way, would look stunning in the Gryffindor common room. We would probably have to crane it in, but that’s for a later discussion.

  As an aside, when I see you in September, I’d like to pick your brain about my memoirs. My dream is to use the book proceeds to build a new, fifth house at Hogwarts, to maximize the school’s potential—we currently have to reject too many good (and full-paying) applicants owing to lack of space. I’ve heard people say that the house should be named after me, an absurd idea that I’d strenuously oppose, but I do think “The McGonagall Visitors Center at Potter House” has a lovely ring to it.
  Bill Weasley sends his regards. Currently his wife, Fleur, is headmaster at Beauxbatons Academy of Magic, and is always joking that I should send our kids there. A laughable notion, given my history with Hogwarts, but I did visit recently and, wow, their new quidditch field is spectacular.", author_id: user1.id)
  story3.save!

  story4 = Story.new(title: 'Love Will Win',
                     body: 'Voldemort, if you’re listening, I have harnessed an ancient and powerful magic called love.', author_id: user1.id)
  story4.save!

  story5 = Story.new(title: 'University Team Finds New Evidence of Wand Use in Ancient Egypt', body: "On the heels of the highly successful St. Andrews archaeological expedition at Alexandria comes new evidence that ancient Egyptian wizards may have used wands and staves for magic. The leader of the expedition, Professor Edward Faraday, spoke from Medinet al-Faiyum, where the majority of their recent archaeological work has been done over the past eighteen months. He said that a new tomb for a high priest of Seth revealed four magical objects that could only be described as wands. “These were made from carefully crafted wood, and exhibited actual cores when examined. They were as well made as any wand produced today, and we’ve also uncovered manuscripts that will unlock what magic they were able to perform with them. It’s an incredibly surprising thing.”

  The Professor said the discovery of the tomb was made by two former Hogwarts students now working as team members for the expedition. “The discovery was not pure luck. Using research and deduction, researchers Paul and Chyler MacLeod were able to find an almost intact tomb with many hundreds of artifacts that are now being examined by the team. Their hard work has led to this discovery, and will be invaluable into how we think of magic and magical research today, as well as giving us an insight into powerful magical societies that existed in antiquity.” The expedition originally was looking only to expand an existing dig site, but the team discovered the new site some distance from the expeditions camp. The cooperative venture between the Egyptian Museum of Magic, and St. Andrews will soon be releasing more information and possibly organizing an exhibit of the artifacts.", author_id: user8.id)
  story5.save!

  story6 = Story.new(title: 'Wizangamot Education Committee Meets with Board of Hogwarts Governors', body: "Fenton Falls: A week-long conference between a dozen members of the Wizangamot and the dozen Board of Hogwarts Governors has begun in Fenton Falls, not far from the school itself. The resort town has played host to meetings of this sort before, during the Reconstruction era for the school, as well as the Darkness Crisis a few yeas ago. Sources say the Wizangamot and Governors are meeting over a number of new educational directives that have come from the Ministry and how best to manage the school. Spokeswitch Raven Cumberbatch said the Wizangamot has been increasingly concerned with the volume of strident communications to the Wizangamot in recent weeks, and a sudden spate of discipline problems at the school.

  Cumberbatch also said the discovery of several corrupt Ministry officials assigned to the school, as well as investigations by an independent Judicial task force have yielded some disturbing results. With the departure of several Ministry appointees to the school, rumors have circulated that several were actually extremist wizards of dubious character and professional qualifications. “The Wizangamot will also be inviting Professor Spriggletuft to the conference to defend or condemn the recent measures taken by the Ministry,” said Cumberbatch. “The intent here is to ensure that Hogwarts remains a great school with equal opportunity for all witches and wizards that come here,” she said.", author_id: user4.id)
  story6.save!

  story7 = Story.new(title: 'Top 10 Potions ', body: "At Hogwarts, students advance their magical skills in a variety of areas, whether learning dueling techniques in Defense Against the Dark Arts, transforming themselves and objects in Transfiguration, or developing flying prowess with Quidditch practice.

  Yet an often-underrated subject is Potions, a magical field that teaches wizards and witches to brew several wondrous concoctions ranging from mystical to deadly. Although Professor Snape is a strict teacher to non-Slytherin students, Potions remains an interesting class that Harry managed to receive an 'Exceeds Expectations' in during his O.W.L. exam, and various potions helped the Chosen One in his travels more than once. But with dozens of mysterious tonics encountered throughout the Wizarding World, which spirits reign supreme? These are the 10 most powerful potions:

  10. Draught of Peace
  Ingredients: Powdered moonstone, unicorn horn, and porcupine quills
  Effect: Relieves anxiety and agitation

  Administered to several fifth-year students following their panic attacks regarding upcoming O.W.L. exams, the Draught of Peace calms nerves and allows concentration. It might not eliminate enemies or give an edge in battle, but the Draught of Peace combats our unseen struggles against depression and anxiety, something that would aid a great number of people in real life.

  Despite its soothing effects, the Draught of Peace is ironically tricky to craft, and Professor Snape once gave Harry a score of zero in his attempt to brew one due to a simple mistake.

  9. Amortentia
  Ingredients: Unknown
  Effect: Induces an intense artificial love

  Advertised as the strongest love potion in existence, Amortentia can't create true love, but it causes such powerful infatuation bordering on obsession that it's hard to tell the difference. The process for mixing it has yet to be revealed, but we know that the potion's aroma changes to match scents that every individual finds pleasant; to Hermione, it smells like fresh-cut grass and new parchment.

  A dangerous drug, Amortentia is the closest thing we've seen to date rape in Harry Potter; Merope Gaunt (Voldermort's mother) used it to force Tom Riddle Senior to marry her and conceive a child, and Romilda Vane slipped some into chocolates intended for Harry that Ron ended up eating instead.

  8. Beautification Potion
  Ingredients: Fairy wings, morning dew, rose petals
  Effect: Makes one temporarily attractive

  Why force a false love with Amortentia when you can simply make yourself desirable with the Beautification Potion? Rather than manipulating another's feelings towards you, this handy elixir temporarily removes your blemishes and enhance your features. Looks aren't everything, but they certainly don't hurt when attracting a partner.

  If you think it's 'cheating' or morally wrong to unnaturally advance your own looks, consider that people do it in real life all the time (make-up, wigs, etc.) and that Hermione once took advantage of a shrinking potion to reduce her slightly-large front teeth to a more normal size.

  7. Wolfsbane Potion
  Ingredients: Wolfsbane (presumably others as well)
  Effect: Relieves the effects of lycanthropy

  Wolfsbane Potion doesn't cure but alleviates the symptoms of lycanthropy, the condition Remus Lupin suffers from. Lycanthropy is simply a fancy term for a werewolf, and while Wolfsbane does not prevent the transformation under a full moon, it morphs its user into a drowsy regular wolf rather than a vicious werewolf. Wolfsbane also allows consumers to maintain their memories after the transformation.

  As helpful as it is to lycanthropy-inflicted wizards, Wolfsbane is tricky to craft, and the ingredients are expensive to find, meaning several werewolves are unable to regularly ingest it. During Harry's third year in the Prisoner of Azkaban book, Remus Lupin agrees to teach Defense Against the Dark Arts on the condition that Severus Snape continuously manufactures Wolfsbane for his use, a term Dumbledore wisely agrees to.

  6. Skele-Gro
  Ingredients: Chinese chomping cabbage, puffer-fish, scarab beetles
  Effect: Causes lost bones to regrow

  A vile-tasting and painful potion, Skele-Gro is nonetheless a powerful apothecary tool, completely regenerating lost bones. In Chamber of Secrets, Madam Pomfrey helps Harry's right arm recover after Gilderoy Lockhart fumbles an attempt at healing Harry following his injury in a Quidditch match. In book seven, Deathly Hallows, Fleur Delacour also administered Skele-Gro to the goblin Griphook to treat the leg injuries he obtained during the heist into Gringotts bank.

  5. Invisibility Potion
  Ingredients: Cherries (presumably more)
  Effect: Renders one temporarily invisible

  A handy alternative to the Invisibility Cloak or Disillusionment charm, this item's canonicity is questionable because it only appears in select Harry Potter video games. Still, it offers the same valuable effect as Harry's infamous cloak, making one invisible to the naked eye.

  As Harry and his friends continuously prove, avoiding detection is much easier while invisible, and imagine the advantage of drinking this liquid before battle—enemy spells can't hit what their eyes can't see. Float like a butterfly, sting like an invisible bee.

  4. Veritaserum
  Ingredients: Unknown
  Effect: Forces the user to tell the truth when questioned

  The most powerful truth serum, Veritaserum mandates its user accurately answer anything asked to them. This offers a handy tool to the wizarding justice system, especially with all the disguises and deceptions provided through other potions and spells.

  That said, Veritaserum can be resisted with a corresponding antidote or sufficient Occlumency skill, often rendering it ineffective in court proceedings. Despite these counters, in Goblet of Fire, Dumbledore used Veritaserum on Barty Crouch Jr. to reveal his impersonation of Alastor 'Mad-Eye' Moody. As fierce as this secret-divulging concoction is, Crouch used an even stronger potion to maintain his charade...

  3. Polyjuice Potion
  Ingredients: Lacewing flies, leeches, knotgrass, fluxweed, and a hair from the desired form
  Effect: Changes appearance to match the hair's bearer

  Famously used by Harry and Ron in Chamber of Secrets to obtain information from Draco Malfoy by masquerading as Vincent Crabbe and Gregory Goyle, Polyjuice Potion completely alters a mystic's appearance to mimic an individual, greatly assisting in subterfuge. However, the effect only seems to work when used with beings of the same species; Hermione mistakenly morphs into a cat-human fusion after accidentally stealing a cat hair.

  Polyjuice Potion is a challenge even for experienced wizards and witches to brew, requiring dedicated attention and needing an entire month to fully settle. In addition to Harry, Ron, and Barty Crouch's uses, Polyjuice also assisted Draco's smuggling of Death Eaters into Hogwarts, the gang's infiltration of the Ministry of Magic, and Harry's deception of Delphi in Cursed Child. Despite its powers, Polyjuice users must take caution as the effect fades after an hour.

  2. Felix Felicis
  Ingredients: Ashwinder egg, squill bulb, murtlap tentacle
  Effect: Temporarily grants the recipient luck

  Stated to make every endeavor successful and turn an ordinary day extraordinary, Felix Felicis is banned in official events like exams and Quidditch. More than that, it's incredibly tricky to brew, needing six months to weld, and like several potions, it's dangerous when fused improperly or taken in excess.

  However, it grants an incredible gift: sheer luck. In Half-Blood Prince, Harry uses his Felix Felicis prize to help him obtain one of Slughorn's memories (which was needed for information on Voldemort's Horcruxes). He also gave it to his allies to use when the Death Eaters invaded Hogwarts, and his friends survived the fight largely thanks to the uncanny dodges offered by the potion. In addition to helping persuade Slughorn to relinquish his memory, Harry also accomplished several other objectives with Felix's power, including breaking up Ron's bad relationship with Lavender and destabilizing Ginny's relationship with Dean (giving himself a shot with her).

  1. Elixir of Life
  Ingredients: The Sorcerer's Stone (or Philosopher's Stone, for non-Americans)
  Effect: Extends one's life indefinitely

  Derived from the Sorceror's Stone, this mysterious potion indefinitely extends life; Nicolas Flamel, creator of the Stone, and his wife Perenelle lived for over 600 years using this method. Little information exists about the Elixir; we don't know if the users are truly immortal while under its effects, or if the remedy only halts aging, meaning takers can still be killed.

  We do know Voldemort initially planned to return to life using the Elixir, although he preferred Horcruxes for maintaining his life indefinitely, as the Life potion requires regular ingestion to stay effective. A powerful liquid, but one seemingly lost to mankind; with Flamel's blessing, the Sorcerer's Stone was destroyed and the supply of Elixir halted, preventing additional brews and once again chaining the secret to eternal life.", author_id: user5.id)
  story7.save!

  story8 = Story.new(title: '10 Spells as Dangerous as Avada Kedavra', body: "Within the wizarding world, we encounter many powerful spells, from Harry's classic disarming Expelliarmus to Voldemort's instant-kill Avada Kedavra.

  In fact, Avada Kedavra belongs to a trio of 'Unforgivable Curses' (listed below), jinxes so deadly and cruel that using just one lands a wizard or witch a lifelong ticket into the magical prison Azkaban. Still, throughout the series, we learn of and see a variety of potent hexes, many as destructive as the three banned curses. Read on to discover ten spells that rival the Unforgivable Curses in power!

  Spoilers ahead.

  Unforgivable Curses
  Avada Kedavra
  Kills the target.

  Crucio
  Tortures the target.

  Imperio
  Provides limited control of the target's actions

  10. Expulso
  User(s): Antonin Dolohov, Harry Potter

  Description: Taken directly from the Harry Potter wiki, this spell 'produces immense explosions, blasting the target apart with a burst of blue light.'

  Encounter in book seven, The Deathly Hallows, Expulso narrowly misses Harry and detonates a nearby table; just being near the explosion slams our scar-headed hero into a wall. If it can so utterly eradicate furniture, presumably, it can do the same to people.

  9. Confringo
  User(s): Harry Potter, Hermione Granger, Voldemort

  Description: Explodes its target.

  Also called the Blasting Curse, Confringo functions similarly to Expulso, though it uses heat as opposed to pressure. Again referencing the HP wiki, the 'curse is also popular when it comes to dueling, as it can create maximum damage.'

  Speaking of 'maximum damage,' some fans believe it was a Confringo that killed Fred Weasley during the Battle of Hogwarts.

  8. Sectumsempra
  User(s): Harry Potter, Severus Snape

  Description: Carves deep gashes into the victim as if struck by an invisible sword.

  A well-remembered spell from book 6, The Half-Blood Prince, Harry almost kills Draco Malfoy in a duel when he employs this curse, unaware of its gruesome nature. We also see Snape rip George Weasley's ear off with it in Deathly Hallows.

  Sectumsempra is painful, potentially lethal, and prevents reattachment of the body parts it severs, indicating the powerful dark magic fueling the spell.

  7. Obliviate
  User(s): Gilderoy Lockhart

  Description: Erases memories from the victim's mind.

  Also called the Memory Charm, Obliviate may not maim you physically, but it sure does mentally. In book 2, The Chamber of Secrets, Professor Lockhart reveals he stole the accomplishments of many a potent sorcerer by erasing their memories; thankfully, his spell backfires when he tries to hex Harry.

  Many cases of Obliviate's memory loss are permanent, as evidenced by Harry's trip to St. Mungo's in book 5, The Order of the Phoenix, where he encounters Lockhart still missing his memories (and his ability to function within society).

  6. Firestorm
  User(s): Albus Dumbledore

  Description: Lassos and incinerates its victim(s) with a massive wave of fire.

  Any spell Dumbledore employs is guaranteed to be fearsome. In Half-Blood Prince, he managed to eliminate numerous Inferi (zombie-like monsters) at once with Firestorm, saving Harry (whose own spells had little effect on the creatures) in the process.

  5. Legilimens
  User(s): Snape, Voldemort, Dumbledore

  Description: Probes the target's mind, forcefully revealing memories, emotions, and thoughts.

  Another mentally damaging technique, Legilimens allows its caster to utilize Legilimency: the art of mind-reading. Not only will it reveal memories, but it also forces the victim to re-experience them, allowing it to be used as a form of torture. Skilled practitioners like Voldemort can even perform the magic without a wand or incantation!

  Though not listed as an Unforgivable Curse, Legilimens seems to be taboo in the wizarding world. Amongst the Ministry, it's not even used on prisoners (like Barty Crouch Jr.) despite its potential to reveal accomplices or schemes.

  4. Molly Weasley's Curse
  User(s): Molly Weasley

  Description: Apparently kills its target; little is known of this curse.

  Molly Weasley unleashes an unnamed spell to kill Bellatrix Lestrange (Me!) in Deathly Hallows (an impressive feat considering Lestrange had competently dueled Hermione, Luna, and Ginny at once). Because of its effects, this could be Avada Kedavra, but the book makes no mention of Kedavra's trademark green flash, causing most fans to believe Molly used a separate jinx.

  In the film, the spell is even more gruesome, completely disintegrating Lestrange upon contact.

  3. Fiendfyre
  User(s): Vincent Crabbe

  Description: Shoots an immensely powerful fire that cannot be extinguished with conventional means.

  Crabbe attempts to kill our three heroes in Deathly Hallows with Fiendfyre, a spell powerful enough to destroy Horcruxes (which are immune to most magic). Crabbe's inexperience with the magic prevented him from controlling it, and it ultimately claimed his life.

  What else can I say? This spell envelops a wide area, incinerates anything it touches, and can even mutate into animal-like shapes.

  2. Transmogrification Torture
  User(s): Unknown

  Description: Tortures victim to death.

  Gilderoy Lockhart mentions Transmogrification Torture in Chamber of Secrets; beyond that, little is known of the spell. It essentially combines two Unforgivable Curses, Crucio and Avada Kedavra, into one horrific package.

  Lockhart is revealed to be a sham, but he tends to steal stories, not invent them, implying Transmogrification Torture is a very real and cruel curse.

  1. Hour-Reversal Charm
  User(s): Unknown

  Description: Travels up to five hours into the past.

  Fans should remember Harry and Hermione time-traveling using a Time-Turner in book 3, Prisoner of Azkaban, to save Buckbeak, prior to which Hermione had used it to manage her several classes. Huh, you'd think wizards could imagine better uses for such potent magic.

  Nonetheless, Time-Turners are simply devices that contain Hour-Reversal Charms; skilled wizards can drift through time without them. Of all spells in Harry Potter, I can't imagine any topping the ability to relive life for five hours, allowing practitioners to alter timelines until they achieve their desired outcome (whether benevolent or evil).", author_id: user10.id)
  story8.save!

  story9 = Story.new(title: "Dumbledore's Lemon Drop Cupcakes with Rasberry Jam Frosting and Crystallized Pineapple", body: "Cupcake and Frosting Ingredients

  3 sticks (1 1/2 cups) salted butter, softened to room temp
  1 cup granulated sugar
  2 1/2 cups all-purpose flour
  2 tsp baking powder
  1 tsp baking soda
  1 tsp cream of tartar
  3 large eggs
  1/2 cup plus 1 tbsp milk, divided
  2 tsp pure vanilla extract, divided
  1 cup seedless raspberry jam
  2 tsp lemon baking emulsion
  about 3/4 cup lemon juice, or the juice of 1 large lemon
  lemon zest from one large lemon
  24 pieces crystallized pineapple

  Instructions

  1. Preheat your oven to 350° F. In the bowl of a stand mixer on medium speed, cream together one stick (1/2 cup) salted butter with one cup of sugar. In a separate bowl, combine the flour with the baking powder, cream of tartar, and baking soda. To the butter/sugar, add the lemon zest, then the eggs, one at a time. Drop the speed to low and add half of the flour mixture to the stand mixer.

  2. Allow those to combine, then pour in the 1/2 cup of milk, the lemon baking emulsion, one teaspoon of vanilla, and the lemon juice. When all of those are fully incorporated, add the rest of the flour.

  3. Stop the mixer to run a rubber spatula along the insides of the bowl and make sure everything is combining, then mix for another minute on low speed. Place into paper-lined cupcake tins and bake for 16–20 minutes.

  4. For the frosting, in the bowl of a stand mixer with the whisk attachment, or using a hand mixer, whisk together the remaining two sticks of butter on medium speed until smooth and creamy, about one to two minutes. Then, stop the mixer, add half of the powdered sugar, the remaining tablespoon of milk, the remaining teaspoon of vanilla, and all of the raspberry jam.

  5. Mix on the lowest speed for a couple of minutes until everything is combined. Stop the mixer if some of the ingredients are sticking to the insides of the bowl, and scrape them down with a rubber spatula. Add the remaining powdered sugar and mix to combine. Pipe onto cupcakes that have been allowed to cool at least 15–20 minutes. Top each cupcake with a piece of candied pineapple.", author_id: user4.id)
  story9.save!

  story10 = Story.new(title: 'How to Play Quidditch', body: "What Is Quidditch?
  Quidditch is a sport created by J.K. Rowling for her novels centered around Harry Potter. It is played in the Harry Potter universe by witches and wizards both professionally and just for fun and is made up of two teams on broomsticks.

  Not only is it played at Hogwarts but also in professional teams. The Quidditch World Cup, established in 1473, is held every four years and features teams from around the world. In Harry Potter and the Goblet of Fire, Harry Potter attends the 422nd game. Harry is also the Seeker for Gryffindor's team at Hogwarts and becomes the captain in his sixth year.

  Quidditch Field
  Quidditch matches are played in an oval-shaped arena, similar to the diagram below. The field is 500 feet long with a center circle (the core) that is two feet in diameter. A line down its center marks mid-field.

  Each end of the Quidditch field features three hoops at varying heights: one is 30 feet, the other 40 feet, and the third is 50 feet tall. Shaded areas around the goalposts mark the scoring area, which also serves as a boundary in which the Keepers can play.

  Quidditch field diagram © Lisa Koski
  Quidditch field diagram © Lisa Koski | Source
  Did You Know?
  The word 'Quidditch' is derived from Queerditch Marsh, the location of the first recorded game.

  Quidditch gear from the movie adaptations of the Harry Potter novels.
  Quidditch gear from the movie adaptations of the Harry Potter novels. | Source
  What Equipment Is Needed?

  Quidditch features three different types of balls:
  the quaffle
  the bludger
  the snitch

  The quaffle is circular with four large dimples. It is also scarlet in color (to give it a better contrast with mud) and 12 inches in diameter. Quaffles are enchanted so that they fall slower and are easy to grasp, which makes them easier for Quidditch players to retrieve when it is dropped. There is only one quaffle used in a Quidditch game. If a Chaser manages to get it past the Keeper and into one of the hoops at the opposing team's end, they score 10 points for their team.

  The bludger is 10 inches in diameter, round, jet black, and made of iron. Quidditch games feature two bludgers, which are enchanted to fly on their own and attempt to knock players off of their brooms. They serve as obstacles for all players, no matter which team they are on. Beaters carry around short wooden clubs to help beat them out of the way of their teammates, usually toward the opposing team.

  The golden snitch is the smallest of the Quidditch game equipment, at about one inch in diameter. It is golden with silver wings and is enchanted to zip around the field, avoiding capture. The Seekers try to catch the snitch. Once it is caught, that team scores 150 points and the match is over.

  Other Quidditch game equipment includes broomsticks, short wooden clubs, and uniforms.

  Quidditch Players
  A Quidditch match is played by two teams made up of seven players. There are three Chasers, two Beaters, one Keeper, and one Seeker. Chasers keep possession of the quaffle and try to score a point by throwing it through one of three hoops on the opposing team's side. They can pass the ball to each other but only one is allowed in the scoring area at any time.

  The Keeper protects the hoops from an oncoming quaffle by flying in front of them in the scoring area. Beaters protect their teammates by hitting bludgers away from them and usually toward the opposing team. They are not allowed to aim at referees, crowds, or the Keeper, unless the quaffle happens to be in the scoring area.

  The Seeker's job may sound easy but it is probably the most important and equally difficult position of the game. They're in charge of capturing the ever-elusive golden snitch, which happens to be about the size of a walnut and tries its best to keep away from players. Once the Seeker successfully catches the snitch, they earn their team 150 points and end the game. Most times, whichever team catches the snitch wins.

  Fun Fact
  The longest ever Quidditch game supposedly lasted about three months.

  How to Play Quidditch
  Quidditch games are played in the air on broomsticks.

  The game starts when a referee releases the quaffle, bludgers, and snitch. While Beaters keep bludgers at bay and the Seeker goes off in search of the snitch, Chasers try to get the quaffle through a hoop at the opposing team's end of the field. The Keeper blocks the hoops. If a goal is scored, they toss the quaffle back into play.

  All players must avoid the bludgers and the snitch. If any player but one of the Seekers come in contact with the snitch, it is a foul. The length of the game varies depending on how soon the Seeker is able to catch the snitch.

  Games may also end by mutual consent between team captains.

  There's no doubt that Quidditch sounds like a fun game to play. While we muggles may not have enchantments or flying brooms, there are still many real-life versions of the game out there, including Muggle Quidditch, that we can actually play. There are even teams, tournaments, and an International Quidditch Association.


  Are There Fouls in Quidditch?
  There are 700 Quidditch fouls listed in the Department of Magical Games and Sports records but most are not open to the public for fear that witches and wizards 'might get ideas.'", author_id: user11.id)
  story10.save!

  story11 = Story.new(title: 'Top 10 Strongest Magical Creatures', body: "Used by both the Order of the Phoenix and Voldemort's forces, we've seen these mystical monsters fight for good as well as evil, and many remain some of the series' strongest adversaries. But with dozens of magical creatures running rampant, which titans reign supreme? These are the ten strongest monsters you would not want to cross in Hogwarts! Spoilers ahead.

  10. Thestral
  First Appearance: Harry Potter and the Order of the Phoenix

  As Luna Lovegood explains to Harry, thestrals are a unique breed of winged horse-like creatures with reptilian features and can only be seen by those who have witnessed a human's death. While Thestrals are normally gentle, that doesn't mean you'd want to get in one's way. Not only are they sizable, capable of comfortably seating two adults, but they can also fly, and if you haven't witnessed anyone die, you wouldn't even be able to see one hunting you!

  The Harry Potter wiki notes how thestrals wield 'sharp fangs used to seize and slash their prey', and Hagrid describes the beasts as 'clever,' meaning you'd be hard-pressed to outwit one as you might, say, a troll. They also live in herds, so if you agitated one, you'd probably be facing an entire congregation, and while they don't seem to generally target humans, Professor Grubbly-Plank notes their carnivorous nature. But speaking of winged mammals...

  9. Hippogriff
  First Appearance: Harry Potter and the Prisoner of Azkaban

  'Half horse, half eagle creatures, immensely proud and extremely dangerous.'
  —Pottermore's description of Hippogriffs

  With the wings, head, and talons of an eagle complementing the body and hind legs of a horse, Hippogriffs are fierce predators whose size, agility, and pride makes them a dangerous band. They're noted as 'extremely dangerous' until tamed, and even then, wizards and witched must be careful not to offend them (as Draco Malfoy learned the hard way). Hagrid's Hippogriff Buckbeak played a crucial role in Sirius Black's escape from Azkaban, and it also helped defend Harry and Hermione from an out-of-control Remus Lupin in werewolf form.

  But as dangerous as Hippogriffs can be, they make staunch and loyal allies, perfectly complementing a Gryffindor's traits. Case in point: Buckbeak (as well as several thestrals) helped Harry during the Battle of Hogwarts in the Deathly Hallows finale.

  8. Giant
  First Appearance: Harry Potter and the Order of the Phoenix

  Giants are an odd lot, and calling them 'creatures' isn't quite accurate; they're smarter than trolls but much less so than humans. While giants tend to live in tribes, Hagrid (half-giant himself) notes their bloodlust often leads to them killing each other, helping account for their dwindling numbers, though some giants, like Grawp, can be taught a degree of restraint.

  Giants are immensely large, powerful, and resistant to spells, and some believe them at least equal in strength to dragons, considering Hagrid was able to ignore six stunning spells—and he's only half-giant! Six is the same number Sirius claims is the minimum necessary for wizards needed to subdue a full-grown dragon, leading to many debates over which species would triumph in a battle. That said, giants appear to have a weak point in their eyes, a vulnerability that the Ministry of Magic's wizards used during the first Wizarding War to combat the giants who had allied with Voldermort. Definitely a force to be reckoned with, but lower in today's list considering their weaknesses and semi-sentient status.

  7. Hidebehind
  First Appearance: Fantastic Beasts and Where to Find Them

  'A vicious, nocturnal beast adept at both disguise and disembowelling. The result of accidental breeding between a Demiguise and a ghoul.'
  —Pottermore's description of Hidebehinds

  The aptly-named Hidebehind was granted its title due to its ability to shapeshift, letting it hide behind virtually any object. This useful skill helps the creature stalk its prey, and guess what it prefers—humanoids. As if that weren't bad enough, Hidebehinds are nocturnal forest-dwellers, likely to track you then dismember you while you sleep. Hidebehinds are actually a man-made species, created with smuggler Phineas Fletcher's Demiguise escaped and bred with a ghoul, and their base form appears ape-like with silver fur.

  6. Dementor
  First Appearance: Harry Potter and the Prisoner of Azkaban

  Dementors are another semi-sentient species, and little is known of their society. Until Kingsley Shacklebolt reformed the regulations, Dementors served as the guards in the prison Azkaban. The floating, reaper-like Dementors are some of the most lethal monsters in Harry Potter; merely being near one can drain you of happiness, the emotion they feed off. If you suffer a Dementor's 'kiss' for a lengthy span, you can be placed into a soulless, vegetative state that apparently has no cure.

  In the plot, the Azkaban Dementors switched to Voldermort's side after realizing he'd let them prey on more victims. Luckily, the Patronus charm forms a strong barrier against them, but this is a rare spell that most wizards and witches can only master with considerable practice. A single Dementor may not be a huge threat against a prepared wizard, but they tend to attack in swarms, and as the Harry Potter wiki chillingly notes, 'they seemingly cannot be destroyed,' meaning you can only fend them off, never actually eradicating them.

  5. Phoenix
  First Appearance: Harry Potter and the Chamber of Secrets

  At first glance, phoenixes don't seem very intimidating. They're relatively small and generally peaceful creatures. But if you examine all their abilities, you can easily see why you'd never want to disturb one. Most famously, phoenixes can revive themselves from death (or at least severe injuries), granting incredible lifespans and recovering from old age or wounds. Speaking of which, their tears have immense healing properties, which would let them rejuvenate themselves or allies even if you managed to damage one.

  As Fawkes proved against the Basilisk, phoenixes are agile creatures capable of tearing off great chunks of flesh with their sharp talons, and they're far stronger than they look; Fawkes carried Harry, Ron, Ginny, and Gilderoy Lockhart with no visible signs of strain. They appear intelligent, as Fawkes obeyed Dumbledore's orders and apparently knew Harry would need the Basilisk's eyes disabled to stand any chance against it. Phoenixes may also possess latent magic defenses considering their immunity to the Basilisk's paralyzing gaze and how their feathers construct powerful wand cores.

  4. Acromantula
  First Appearance: Harry Potter and the Chamber of Secrets

  Like Ron Weasley, many real-life people suffer from arachnophobia, the fear of spider. Imagine their horror if they ever encountered an eighteen-foot monstrosity like an Acromantula. These giant spiders grow to massive lengths and are intelligent, even capable of communicating with humans. They're also willing to cooperate; if you thought facing one was bad enough, consider confronting an entire swarm.

  We see Hagrid's Acromantula Aragog during the second book/film, an encounter Harry and Ron barely escape from alive. Oh, and did I mention that as big as Aragog is (at least 18 feet upon his death in Half-Blood Prince), females are even larger? As if their size, intelligence, and swarming weren't bad enough, Acromantulas are also venomous, and it was long (yet falsely) believed that Aragog had been the monster used in the attacks regarding the Chamber of Secrets that resulted in Moaning Myrtle's death.

  3. Thunderbird
  First Appearance: Fantastic Beasts and Where to Find Them

  A close relative of the phoenix, Thunderbirds are larger avians who can create storms when they fly. In addition to their thunderous abilities, they have an innate danger sense, giving them foreknowledge about impending threats. This trait even transfers to wands built with Thunderbird cores, which are difficult to master but skilled at Transfiguration and capable of casting curses automatically when sensing danger.

  Giant storm bird with talons? Check. Storms upon command? Check. And due to their relation, it's fair to assume Thunderbirds possess at least a portion of the incredible strength that phoenixes possess; imagine the havoc one could wreak if angered. Luckily, Thunderbirds can also be used for good, as Newt Scamander's ally Frank proves in the Fantastic Beasts movie.

  2. Dragon
  First Appearance: Harry Potter and the Sorcerer's Stone (Norbert)

  Dragons are a creature so dangerous that the Ministry generally bans even attempting to raise one and grants them the biggest danger classification of XXXXX. In particular, the Hungarian Horntail is renowned for being the largest and most formidable breed, but all forms ravage foes with massive claws, brute force, surprisingly quick aerial capabilities, and the ability to breath scorching flames. Dragon components form a variety of potent tools, from intellect-boosting powered dragon claws to spell-deflecting dragon hide armor to dragon heartstring wand cores.

  Fans likely remember Harry Potter's famous encounter against a Hungarian Horntail during his first challenge in Goblet of Fire's Triwizard Tournament. While Horntails are considered the deadliest species, Peruvian Vipertooths are venomous, and Ukrainian Ironbelly are the biggest, making them potent threats as well.

  1. Basilisk
  First Appearance: Harry Potter and the Chamber of Secrets

  The true monster of the Chamber of Secrets, the Basilisk is a giant serpent-like predator whose poison murders within a matter of minutes. As if that weren't bad enough, simply looking at its eyes instantly kills a victim; even using barriers like a camera lens or water reflection will still induce a comatose state. Due to their snake nature, a skilled Parselmouth may command a Basilisk (as Tom Riddle did), although Parselmouth Harry failed to control it, though it's not clear whether this is from loyalty to Riddle or Harry's inexperience.

  Although phoenix tears can heal one from Basilisk venom if applied quickly, the Basilisk's teeth are one of few weapons capable of destroying a Horcrux. Harry struggled to defeat Riddle's Basilisk, only narrowly succeeding with the aid of Fawkes and Godric Gryffindor's sword; even then, he suffered a wound that would have killed him without Fawkes's tears. Basilisks can grow up to fifty feet in length, squeeze into pipes despite their massive size, and their tough scales reflect most spells similarly to dragon hide. As if they weren't deadly enough already, Basilisks have a keen sense of smell to detect prey even if their sight is disabled and can live for over 1000 years. As was once written in blood, enemies of the heir, beware.", author_id: user7.id)
  story11.save!

  story12 = Story.new(title: 'The Love Room Mystery', body: "While traversing through the Department of Mysteries, Harry and his friends come across several rooms, all dedicated to the study of a particular area, of relative mystery. We can actually name the several elements studied in the various rooms the group goes through. These include: Prophecy, Time, Thought, Space, Death and implicitly Love.

  What Happens in the Department of Mysteries
  Upon arriving at the Entrance of the Department of Mysteries, the group faces 12 doors. They go through four of the twelve doors, trying to find the supposed location of Sirius. The first one they go in is revealed later to be the Brain Room, and they go back to the entrance. The second one is the Death Chamber, where they linger for a while before going back to the entrance again. The third one is locked, and neither Hermione's Alohomora, nor Harry's penknife are able to open it. Harry's penknife actually dissolves when he tries to put it in the lock. They move on and enter the fourth door, that Harry recognizes from his visions, which turns out to be the Time Room. They go through the Time Room, and on the other side is the door which leads to the Hall of Prophecies. Upon being ambushed by the Death Eaters the gang manages to run away but gets separated. Harry, Hermione and Neville go back to the Time Room, but Ron, Ginny and Luna go to the Space Chamber. They are reunited in the Brain Room, and then the battle moves to the Death Chamber, where the Order of the Phoenix appears to render assistance. Finally upon all of the Death Eaters being defeated, only Bellatrix remains who runs off to the Ministry Atrium. Harry pursues, is blindsided by Voldemort, who then battles Dumbledore in the Atrium.

  Once the battle between the two ends, and Voldemort tries to possess Harry but fails, and escapes, Harry and Dumbledore have a great discussion inside Dumbledore's office regarding Sirius' death, and the true meaning of the prophecy. Near the end of the discussion Harry asks what great power does he have that the prophecy alluded to. Dumbledore explains what that power is with the following quote:

  “There is a room in the Department of Mysteries, that is kept locked at all times. It contains a force that is at once more wonderful and more terrible than death, than human intelligence, than forces of nature. It is also, perhaps, the most mysterious of the many subjects for study that reside there. It is the power held within that room that you possess in such quantities and which Voldemort has not at all. That power took you to save Sirius tonight. That power also saved you from possession by Voldemort, because he could not bear to reside in a body so full of the force he detests. In the end, it mattered not that you could not close your mind. It was your heart that saved you.”

  What the Love Room Holds
  This room, as it turns out, is actually the room that Harry tried to open inside the Ministry, but couldn't. And as Dumbledore so cryptically implies, the power that it holds is Love. But how is that possible? How can a room hold an emotion, the emotion of Love in particular? And how come it's locked at all times? Who goes in there, if anyone?

  Well, actually the names of the rooms and the powers inside them are often not to be taken literally. The Time Room does not hold Time itself, it holds several time-turners, as well as the crystal bell jar which makes any being grow younger and older in an endless cycle. The Space Chamber does not hold Space, but instead models of the planets and also enchantments that make visitors feel as they're floating. And the Death Chamber contains merely a barrier between the world of the living and the realm of the dead.

  So, the Love Room may hold something that somehow materializes the emotion of Love, and not the emotion itself, but still, what is it? Well, as it happens, J.K. Rowling has actually answered this question in an interview, and here is what she had to say:

  'I think what’s in the Love room, it’s the place where they study what love means. So that room, I believe, would have at its center a kind of fountain or well containing a love potion, a very powerful love potion. You know that the first time they ever enter Slughorn’s Potions class, and he starts talking about Amortentia, the love potion, and he says it’s the most dangerous one in the room, well, that’s what they would have found in the Love room.

  So you would see wizards and witches taking it, they would study the effects. The room of course has to be locked. And, you know, again, there’s this thread running through the books, what love does, and it raises people to the heights of absolute heroism, as in Lily, Harry, Neville, and it also leads them into acts of foolishness and even evil, which is Bellatrix and also Dumbledore. He became foolish, he lost his center, his moral center, when he became infatuated. So that’s what it does, that’s what makes it dangerous. In Bellatrix it was- as I think is clear, but I doubt that people will be particularly shocked to hear- because I’m sure they’ve deduced that Bellatrix is madly romantically in love with Voldemort. This is, that’s the obsession of her life.'


  The Giant Fountain of Amortentia
  So, presumably, inside the Love Room we would find a giant fountain of Amortentia. This fountain would be used by the Unspeakables (the workers of the Department of Mysteries) to study the effects of Love, and how it causes certain behaviours and actions on those who feel it and on others, as well as the magical properties of Love, which seem to be of a massive scale in the Harry Potter universe. The reason the room is locked is to prevent the effects of the fountain from spreading throughout the entire Ministry.

  And, as crazy as it may seem to argue with J.K. Rowling, who holds top authority regarding her universe, don't get me wrong, this possibility confuses me. And this is why: we've already been introduced to Amortentia in Slughorn's classroom. Both Harry and Hermione are so close to the potion that they feel it's effects just by smelling it. For something that is kept under lock and key at the Ministry, and that is supposably the most powerful and dangerous magical mystery of all to be showcased in classrooms, comes off as strange, not to mention anti-climactic. And also, Slughorn states that Amortentia does not recreate actual love. This makes Dumbledore's speech to Harry seem a little false. The Love Room does not hold Love, nor does it hold something that so much as imitates Love. It just has within it a dangerously large supply of Amortentia.

  Why This Makes Sense
  In a way, this makes sense. For Love to be an extremely powerful force, it would be weird if men were able to just recreate it. The fact that the room contains something that alludes to the idea of Love but can never actually imitate it is somewhat logical.

  But I imagine, or at least I like to imagine, that if the Love Room actually has within it a fountain of Amortentia, then that Amortentia would not be regular Amortentia. I reckon the Unspeakables would try to tweak the potion as they study it's effects, and as such, that version of Amortentia would be the truest and most powerful of them all. It just would make the effect of Dumbledore's speech stronger, if what that room holds turned out to be the actual emotion of Love materialized in some manner, and as such, more powerful than what we saw in Slughorn's classroom.", author_id: user2.id)
  story12.save!

  story13 = Story.new(title: '8 Best Hogwarts Professors', body: "8. Sybill Trelawney
  Trelawney is the teacher of Divination in Hogwarts, though it has been constantly debated on how much she actually knows about the subject. Proclaiming herself to be a gifted seer, she was the reason why we have the story in the first place.

  It was she who made the prophecy to Dumbledore based on which Voldemort killed Harry's parents and marked him, thus beginning the battle between Harry and Voldemort. If it weren't for her, we would not have the story.

  If nothing else, I am sure you will agree that it was really fun to read Harry and Ron's conversations with Trelawney. Especially the part where they are given homework to predict their future, do they make up stories and present them to her, and in turn she applauds them.

  7. Filius Flitwick
  What was the first spell that Harry, or for that matter you, learned at Hogwarts?

  It was likely Wingardium Leviosa, the spell that allows wizards to move small objects through the air with their wands.

  And who taught it? The Charms professor of Hogwarts, Filius Flitwick. It is through him that Harry enters the magical world. Due to his short height, it has been theorized that perhaps he was a goblin descendant. He was always good to Harry and therefore made a good professor.

  6. Horace Slughorn
  Professor Slughorn was brought in as Hogwarts' potions teacher in Harry's sixth year. His fascination with popular students quickly made Harry one of his favourites. This was good as it ultimately led Slughorn to inform Harry about Tom Riddle's horcruxes. His role was therefore of great importance because ultimately, it was knowledge of horcruxes that helped Harry defeat Voldemort, which otherwise would have been an impossible task.

  Remember the way Harry got the information extracted out of Slughorn at Aragog's funeral? Hilarious, wasn't it?

  5. Remus Lupin
  Professor Lupin, the Defence Against the Dark Arts teacher was probably the best teacher Harry could ever have. Harry was declared jinxed and none of the other teachers could provide the required essence for hum. Then came Lupin, who was liked by one and all.

  Harry's first foray into dark arts was through him. He taught Harry the patronus charm for which he was so famous. He served as a very good mentor for Harry and was always present to clear any doubts that would rise in Harry's mind. He fought valiantly in the battle against Voldemort and died an honorable death.

  The fact that he was a werewolf would make him scary, but he actually came across as a very amiable werewolf after all.

  4. Minerva McGonagall
  Professor McGonagall, the lady with the pointed hat and a cat-like face, initially appeared strict. Both the head of Gryffindor and the teacher of Transfiguration, she was the reason why Harry got a chance to play quidditch. She noticed him first and gave him an opportunity to represent the house team during his first year.

  Though being a headmaster of a house, she was never partial to the Gryffindors and always acted in a manner befitting the occasion. She was always a supporter of all the right things. In the last part, the way she reached out in support for Harry is really praiseworthy and commands respect.

  3. Rubeus Hagrid
  Rubeus Hagrid, the cool half-giant and adorable gamekeeper of Hogwarts would definitely occupy the third position.

  The Care of Magical Creatures teacher is the one who introduces Harry—and in turn us—to the world of magic. Always standing up in support of Harry, he is hilarious in his interactions with the different magical creatures. Be it Fang, Grawp, Buckbeak, or Aragog, his pets always provided hearty laughter for viewers. Also, readers were delighted at the dismal condition of Malfoy at the end of most of Hagrid's classes.

  Hagrid was always there to listen to Harry and guide him as a friend, thereby becoming a good teacher.

  2. Severus Snape
  Snape probably failed as a professor in the first six parts, given to his partiality towards Slytherin and Malfoy and his tendency to always insult Harry at the first instant, but because of the last part, you have to give it to him.

  Severus Snape, the strict, oily haired, ever cross-faced wizard is the potions teacher and the head of the Slytherin house. His character is famous for all the wrong reasons. Right from Harry's first year, the two have been constantly at loggerheads with each other. Snape has never missed a single opportunity to ridicule Harry and his friends.

  However, when our hatred was reaching its pinnacle, it is revealed that all this while Snape was actually trying to protect Harry. Snape had purposely and consciously distanced himself from Harry so that through him Voldemort does not get to Harry. The mental strength required to constantly be the object of someone's hatred is not easy to acquire. Snape did it and in return he expected nothing. He sacrificed his life for Harry, the son of the woman he loved. He sacrificed his life for Harry, the son of the man he hated.

  At last, we see even Harry acknowledging Snape by naming his son after him and calling him one of the best headmasters of Hogwarts. It would be amazing to see Snape live and how he would interact with Harry after his truth has been revealed.

  1. Albus Dumbledore
  Albus Dumbledore, headmaster of Hogwarts School of Witchcraft and Wizardry has to win this one. What do you think? Harry's favourite professor, Dumbledore is the reason for Harry to be alive. Right from the beginning, when Dumbledore ordered Hagrid to take infant Harry to the Dursley's where he would be the safest, to the end, when he told Harry everything about Voldemort so that Harry could finish him, he was a stellar character. Dumbledore has been there for Harry throughout.

  Dumbledore has always been a good decision maker and impartial teacher, not just for Harry but for all his students. His judgment is always based on proper reasoning. He has supported all things for their righteousness. His support for the muggle community is noteworthy, thus making him the perfect embodiment of leadership and the most inspiring teacher ever.

  He is the only wizard who even Voldemort was afraid of. The owner of the Elder wand, Dumbledore was the greatest wizard of all time and the most amazing personality ever.", author_id: user2.id)
  story13.save!

  story14 = Story.new(title: 'Fastest Brooms', body: "While most wizards and witches use Apparition (teleportation) to travel, brooms offer great alternatives to underage teenagers. They're also used for sport, primarily Quidditch—which reign supreme? These are the ten fastest broomsticks throughout the Harry Potter universe!

  10. Australian Flyabout 50
  Used By: Australian Quidditch Team

  Little is known regarding this broom, other than it was flown by the Australian Quidditch team in the 1994 World Championships. Australia didn't win the tournament (none of their actual results are stated), but seeing professional usage highlights the device's speed.

  9. Transylvanian Barb
  Used By: Transylvanian Quidditch Team

  Again, little is know about this equipment, but it's cited as a world-class broom. And while the Transylvanian team didn't win the 1994 championship (Ireland did), we do know they absolutely destroyed the English team, scoring 390 points against just 10.

  8. Nimbus 2000
  Used By: Japanese Quidditch Team

  The fastest broom of its time, the Nimbus 2000 debuted in 1991, and Harry received one as gift from Professor McGonagall to help him succeed as Gryffindor's new Seeker. It was also used by the Japanese Quidditch team in the 1994 World Championships.

  7. Nimbus 2001
  Used By: Slytherin Quidditch Team

  With a black paint job and longer bristles, the 2001 improved upon the Nimbus 2000 to briefly become the fastest broom of all time. In exchange for putting him on the team, Draco Malfoy bought the Slytherin Quidditch team several of these brooms.

  While eventually dethroned by the Firebolt, many professional teams are known to still use 2001s, likely because of the expenses and rarity of Firebolts.

  6. Firebolt
  Used By: Bulgarian and Irish Quidditch Teams

  The fastest broom for several years, Sirius Black sends Harry a Firebolt to replace his old Nimbus, and both of the 1994 finalist teams rode them. Firebolts can travel fly at 150 miles per hour and incorporate several useful features, like a powerful Braking Charm that allows for precision movement and fast stops. They partially contain goblin-forged metal that contributes to their quality (and price).

  5. Starsweeper XXI
  Used By: American Quidditch Team

  The American team utilized Starsweepers during the 2014 World Championships, notably the first year the Americans were thought to have a chance at victory. While they didn't end up winning, they ultimately placed 4th out of 16, defeating Jamaica and Liechtenstein before losing to Brazil.

  4. Yajirushi
  Used By: Japanese Quidditch Team

  Japan unveiled a new type of broomstick at the 2014 tournament, leading them to third place overall. Only the Bulgarian tournament winners (featuring the return of Viktor Krum) defeated Japan, who in turn beat Poland, Nigeria, and (in their third-place playoffs) the USA .

  3. Varápidos
  Used By: Brazilian Quidditch Team

  The Brazilian Quidditch team has long been a powerhouse, chalking up five World Championship wins. While they didn't take home the gold medal in 2014, they still earned second place and displayed the capabilities of their unique broomsticks.

  2. Thunderbolt VII
  Used By: Nigerian Quidditch Team

  The Nigerians entered the 2014 tourney with these tools, stated to rival even the fastest of brooms. That said, many believe Thunderbolt construction sacrifices safety for speed, displayed when the Nigerian Seeker had their broom split in two by a Bludger.

  Broomsticks are supposed to withstand Bludger hits, and that fatal moment likely cost Nigeria their match against Japan. Still, Thunderbolts are undeniably quick and helped Nigeria defeat Fiji in their first game.

  1. Firebolt Supreme
  Used By: Bulgarian Quidditch Team

  The updated version of the previous king, Firebolt Supremes guided the Bulgarians to victory in the 2014 World Championship, fulfilling the lifelong dream of Viktor Krum. Presumably, they offer and improve upon the previous model, providing the fastest ride the Wizarding World has ever seen.", author_id: user1.id)
  story14.save!

  story15 = Story.new(title: 'The Most Recognizable Spells and Charms', body: "Accio: Also known as the summoning charm, Accio summons any object to the user within a certain distance. In the Goblet of Fire Harry uses Accio to summon his broomstick during the first Triwizard Challenge.

  Alohomora: Also known as the unlocking charm, Alohomora enables its user to open any lock. The charm is first used in the Philosopher's Stone and after this regularly makes an appearance in the later books.

  Expecto Patronum: Also known as the Patronus charm, Expecto Patronum conjures a Patronus; an animal-shaped mass of energy that repels dementors. Harry first learns the Patronus charm during the Prisoner of Azkaban, which is considered impressive given his young age and the difficulty of the charm.

  Expelliarmus: Also known as the disarming charm, Expelliarmus is arguably the most recognisable of any Harry Potter spell. The spell, which causes the victim's wand to fly out of their hand, becomes almost a trademark for Harry and is the charm that he uses to kill Voldemort.

  Horcrux Curse: The incantation is never specified, but it's known that the Horcrux Curse splits the user's soul and allows them to trap a piece in an object. This allows them to live even if their mortal body is destroyed, effectively rendering them immortal unless the Horcruxes are destroyed. Voldemort's immortality is due to his use of the Horcrux Curse to make seven Horcruxes.

  Lumos: Lights the tip of the user's wand.

  Petrificus Totalus: Also known as the full-body-bind spell, Petrificus Totalus renders its victim totally paralysed. Hermione Granger uses this spell on Neville Longbottom during the Philosopher's Stone.

  Protego: Casts a magical forcefield around the user, repelling spells cast at it. Protego is one of the most commonly used defensive spells.
  Stupefy: Stuns an opponent, rendering them unconscious. This is one of the most popular duelling spells and is used frequently throughout the series. In the Half-Blood Prince, Professor McGonagall is hit by four stunners and must recover in St. Mungos Hospital.

  Wingardium Leviosa: Causes an object to fly. This is one of the first spell taught to the first-year students at Hogwarts. In the words of Hermione Granger; 'It's leviOsa, not levioSA.'

  The Unforgivable Curses

  The Unforgivable Curses are a trifecta of spells that are outlawed in the wizarding world due to their dangerous, gruesome nature. They are as follows:

  The Cruciatus Curse (Crucio): Puts the victim in immeasurable pain. This is the spell that was used by Voldemort's followers to torture Frank and Alice Longbottom to insanity.

  The Imperius Curse (Imperio): Puts a person under another's control. Voldemort's followers used this curse to turn witches and wizards to their side.

  The Killing Curse (Avada Kedavra): As the name suggests, this spell kills its victim immediately and irreversibly. Only one person is known to ever have survived the killing curse; Harry Potter.

  Lord Voldemort tried to kill Harry Potter using 'Avada Kedavra,' but failed, turning Harry into a living legend.

  Duelling Spells
  These spells are designed to be used in Wizarding duels and fights. Some are offensive in nature, while others are defensive.

  Confringo: Causes fireballs to shoot from the user's wand.

  Confundo: Causes confusion and disorientation. In the Order of the Phoenix,
  Hermione uses this spell on Quidditch hopeful Cormac McLaggen to ensure that Ron beats him in the Quidditch tryouts.

  Densaugeo: Causes the victim's teeth to enlarge dramatically. Draco Malfoy uses this spell on Hermione, causing her great distress.

  Depulso: Pushes an object away with a powerful blast.

  Diffindo: Slices through objects such as rope.

  Duro: Turns objects or people into stone.

  Expulso: Makes an object violently explode.

  Fiendfyre: The incantation for this curse isn't known, but the effect certainly is. Fiendfyre is cursed wildlife that east through anything it touches. The flames take the form of wild animals, such as serpents and dragons, which have a solid form and are able to target specific objects or people. In the Deathly Hallows, Crabbe unleashes Fiendfyre in the Room of Requirement, killing himself and almost Harry, Ron, Hermione, Draco, and Goyle along with him.

  Finite: A general-counter spell that can reverse some minor damage.

  Furnunculus: Causes painful boils to appear on the victim's skin.

  Immobulus: Freezes an object or person.

  Impedimenta: Slows an advancing object for a brief amount of time.

  Incarcerous: Binds the victim head-to-foot in thick ropes.

  Jelly-Legs Jinx: Causes the victim's legs to wobble like jelly, preventing them from walking.

  Levicorpus: Dangles the victim in their air by their foot. This jinx was invented by Severus Snape and was subsequently used against him by James Potter, as shown in a flashback during the Half-Blood Prince.

  Liberacorpus: The counter-jinx to Levicorpus; returns the victim to the ground.

  Locomotor Mortis: Paralyses an opponent's legs. Locomotor Mortis is the weaker version of Petrificus Totalus, the full-body-bind curse.

  Oppugno: When used in conjunction with Avis, this causes the victim to be attacked by a flock of birds. It's used by Hermione Granger during the Order of the Phoenix to attack Ron Weasely.

  Piertotum Locomotor: Animates suits of armour and statues, causing them to fight for the caster. This spell is used by Professor McGonagall during the battle for Hogwarts.

  Protego Horribilis: A variation of Protego that protects against dark magic. This spell is cast by the Hogwarts teachers during the battle for Hogwarts.

  Protego Maxima: Another variation of Protego that protects even more strongly against dark magic. This spell is cast by the Hogwarts teachers during the battle for Hogwarts.

  Protego Totalum: Another variation of Protego that shields a particular area rather than a person.

  Reducto: Blasts solid objects to the side. In the Order of the Phoenix, it's revealed that Ginny Weasley can cast Reducto so powerfully that it disintegrates objects.

  Rictusempra: Also known as the tickling charm, Rictusempra causes the victim to buckle over laughing. Harry Potter uses this charm on Draco Malfoy during their duel in the Chamber of Secrets.

  Ridikkulus: Banishes boggarts; magical creatures that take the appearance of whatever the viewer is the most afraid of.

  Salvio Hexia: Repels hexes.

  Sectumsempra: Slashes the victim. This spell was invented by Severus Snape and used by Harry Potter on Draco Malfoy during the Half-Blood Prince.

  Serpensortia: Conjures a snake that attacks the victim. Draco Malfoy uses this spell on Harry Potter during their duel in the Chamber of Secrets.

  Slugulus Eructo: Also known as the slug-vomiting curse, Slugulus Eructo causes the victim to uncontrollably vomit slugs. Ron Weasely attempts to use this curse on Draco Malfoy during the Chamber of Secrets but ends up accidentally cursing himself due to his broken wand.

  Stinging Jinx: Causes the victim to swell up to the point of being unrecognisable. In the Deathly Hallows, Hermione Granger uses this jinx on Harry to disguise his identity from the Death Eaters.

  Tarantallegra: Causes the victim's legs to dance uncontrollably.

  Waddiwasi: Unsticks objects. In the Prisoner of Azkaban, Remus Lupin uses this spell to unstick chewing gum from a lock.

  Miscellaneous Spells
  This is a list of spells that don't quite fit into any other category, but are fantastic all the same:

  Aguamenti: Conjures a stream of water from the user's wand.

  Anapneo: Un-chokes a person, allowing them to breathe again by removing whatever's obstructing their airway.

  Arresto Momentum: Presumably slows or stops a person's fall. In the Prisoner of Azkaban film, Dumbledore uses this spell to stop Harry from falling to his death after he passes out on his broom.

  Ascendio: Moves an object upwards.

  Avis: Conjures a flock of small birds.

  Bombarda: Causes a violent explosion.

  Bubble-Head Charm: Creates a bubble of air around the user's head, allowing them to breathe underwater. It was used by Cedric and Fleur during the second Triwizard challenge to enable them to swim t the bottom of the Great Lake.

  Caterwauling Charm: Imposes a magical curfew on a restricted area; if anyone breaks the charm by emerging from their house, apparating or disapparating it sets off a loud wailing. In the Deathly Hallows Harry, Ron, and Hermione trigger a Caterwauling Charm when they apparate into Hogsmeade.

  Collorportus: Used to lock doors. In the Order of the Phoenix Hermione uses the charm in an attempt to lock out the Death Eaters that chase them through the Ministry of Magic.

  Cushioning Charm: Cushions a fall.

  Deletrius: The counter charm to Priori Incantatum, Deletrius disperses the smoke that represents the user's last spell.

  Deprimo: Blasts a hole in the floor of wherever the user is standing. In the Deathly Hallows, Hermione uses this charm to escape the Lovegood's house.

  Descendo: Moves an object downwards.

  Disillusionment Charm: The disillusionment charm renders the user invisible by camouflaging them into their surroundings perfectly. In Order of the Phoenix Alistair Moody casts this charm on Harry to make him invisible.

  Dissendium: Opens a specific secret passageway in Hogwarts, which is designed in the hump of a statue.

  Engorgio: Causes an object or person to swell to a greater size.

  Episkey: Episkey allows the user to heal bones.

  Erecto: Erects a tent automatically.

  Evanesco: Makes things vanish.

  Ferula: Conjures bandages and binds them around an injury. In the Prisoner of
  Azkaban, this spell is used to bandage Ron Weasley's broken leg.

  Fidelius Charm: A complex charm that involves hiding a secret inside someone. The secret is kept unless the subject willingly reveals it. Peter Pettigrew's betrayal of James and Lilly Potter centred around this charm.

  Flagrate: Burns writing or shapes onto objects. In the Order of the Phoenix Hermione Granger uses this charm to mark doors.

  Flying Charm: The Flying Charm is what allows broomsticks to levitate.

  Gemino: Casting Gemino on an object causes it to multiply rapidly. In the Deathly Hallows Harry, Ron, and Hermione are almost crushed to death by rapidly multiplying treasure in Bellatrix Lestrange's Gringotts vault.

  Glisseo: Causes stairs to flatten, turning them into a slide or chute.

  Homenum Revelio: Alerts the user to nearby human presence.

  Hot Air Charm: Shoots a jet of hot air from the caster's wand.

  Hover Charm: Causes an object to hover. In the Chamber of Secrets Harry is almost expelled from Hogwarts when he is mistakenly thought to have cast this charm in the presence of his Aunt and Uncle.

  Hurling Hex: Hurls a flier from their broom. In the Philosopher's Stone, Professor Quirrell likely casts this spell to try and unseat Harry from his broom during his first Quidditch match,

  Impervius: Creates a kind of forcefield around objects upon which it is cast. For example, Hermione casts Impervius on Harry's glasses to make them repel rain.

  Incendio: Conjures fire from the user's wand.

  Intruder Charm: Alerts the user to when an intruder has entered a house or a specific location.

  Langlock: Glues the user's tongue to the roof of their mouth. This spell was invented by Severus Snape during his days at Hogwarts

  Legilimens: Allows the user to see into another's mind, provided that they're not adept at Occlumency (protecting their mind from invasion).

  Locomotor: Moves objects.

  Lumos Maxima: Throws a ball of light from the user's lit wand.

  Meteolojinx Recanto: Reverses weather-related spells. In the Deathly Hallows, Hermione recommends that Ron try this spell to stop a Ministry employee's office from raining.

  Mimblewimble: Tongue ties its victim, causing them to be unable to say a certain thing.

  Mobiliarbus: Similar to locomotor in that it moves objects.

  Mobilicorpus: Moves a person or body.

  Morsmorde: Conjures the Dark Mark; the symbol of Voldemort and his followers.

  Muffliato: Fills the air around the user with a buzzing noise, preventing anyone from eavesdropping.

  Nox: The counter-charm to Lumos; extinguishes the user's lit wand.

  Obliviate: Wipes the victim's memory. In the Chamber of Secrets Gilderoy Lockhart loses his memory after this charm backfires on him.

  Obscuro: Conjures a blindfold that obscures the recipient's vision.

  Orchideous: Summons a bunch of orchids to the user's wand-tip.

  Periculum: Conjures red sparks from the tip of the owner's wand.

  Permanent Sticking Charm: Sticks posters, paintings and other items to walls for an indefinite amount of time. In Harry Potter and the Deathly Hallows it's revealed that Sirius Black stuck posters to his bedroom wall with a permanent sticking charm, to avoid his mother taking them down.

  Point Me: Makes the user's wand spin in their hand to point north. In the Goblet of Fire Harry uses this spell in the last triwizard challenge to help navigate the maze.

  Portus: Turns an item into a Portkey; a magically enchanted object that teleports the user from one place to another.
  Priori Incantatem: Reveals the last spell that a wand cast.

  Quietus: The counter-charm to Sonorous; causes the caster's voice to quieten after being magically amplified.

  Reducio: The counter-charm to Engorigo; reduces an object's size.

  Relashio: Forces something gripping the user to release. In the Goblet of Fire Harry uses this spell to force Grindylows in the Great Lake to release his feet.

  Rennervate: Causes a person to return to consciousness after being stunned or otherwise knocked out.

  Reparo: Repairs a broken item. In the Philosopher's Stone, Hermione fixes Harry's glasses on the Hogwarts Express using Reparo, making it one of the first spells to be identified and used in the series.

  Repello Muggletum: Repells muggles from a specific location. This is used by Harry, Ron, and Hermione when camping in the muggle world during the Deathly Hallows. Presumably, it's also the spell that was cast on Hogwarts to deter muggles from finding its location.

  Revelio: Reveals hidden objects, messages, or writing.

  Scourgify: Cleans an item. In the Order of the Phoenix, Tonks uses this spell to clean Hedwig's cage.

  Silencio: Renders an animal or person unable to make a sound.

  Sonorous: Amplifies the user's voice. In the Goblet of Fire, Ludo Bagman uses this spell while commentating on the Quidditch World Cup.

  Teleportation Spell: Teleports items from one place to another. Although it's never revealed what the incantation is, this spell is used by Dumbledore to transport Harry's trunk and owl to the Burrow.

  Tergeo: Cleans items.

  Trip Jinx: Causes the victim to trip.

  Unbreakable Vow: Kills the participant or participants if they break a promise. In the Half-Blood Prince, Severus Snape swears an Unbreakable Vow to assist Draco Malfoy in killing Dumbledore.

  Undetectable Extension Charm: Causes an object to expand on the inside while remaining the same size on the outside. Arthur Weasley performs this charm on his car in order to fit his entire family in it as they drive to Kings Cross station.

  Vulnera Sanentur: Returns a person's blood to their body after it's spilled. This is used by Severus Snape to heal Draco Malfoy after Harry attacks him in the Half-Blood Prince.", author_id: user8.id)
  story15.save!

  story16 = Story.new(title: 'The Sword of Gryffindor', body: "The sword of Gryffindor was made a thousand years ago by goblins, the magical world’s most skilled metalworkers, and is therefore enchanted. Fashioned from pure silver, it is inset with rubies, the stone that represents Gryffindor in the hour-glasses that count the house points at Hogwarts. Godric Gryffindor’s name is engraved just beneath the hilt.

  The sword was made to Godric Gryffindor’s specifications by Ragnuk the First, finest of the goblin silversmiths, and therefore King (in goblin culture, the ruler does not work less than the others, but more skillfully). When it was finished, Ragnuk coveted it so much that he pretended that Gryffindor had stolen it from him, and sent minions to steal it back. Gryffindor defended himself with his wand, but did not kill his attackers. Instead he sent them back to their king bewitched, to deliver the threat that if he ever tried to steal from Gryffindor again, Gryffindor would unsheathe the sword against them all.

  The goblin king took the threat seriously and left Gryffindor in possession of his rightful property, but remained resentful until he died. This was the foundation for the false legend of Gryffindor’s theft that persists, in some sections of the goblin community, to this day.

  The question of why a wizard would need a sword, though often asked, is easily answered. In the days before the International Statute of Secrecy, when wizards mingled freely with Muggles, they would use swords to defend themselves just as often as wands. Indeed, it was considered unsporting to use a wand against a Muggle sword (which is not to say it was never done). Many gifted wizards were also accomplished duellists in the conventional sense, Gryffindor among them.

  There have been many enchanted swords in folklore. The Sword of Nuadu, part of the four legendary treasures of Tuatha Dé Danann, was invincible when drawn. Gryffindor’s sword owes something to the legend of Excalibur, the sword of King Arthur, which in some legends must be drawn from a stone by the rightful king. The idea of fitness to carry the sword is echoed in the sword of Gryffindor’s return to worthy members of its true owner’s house.", author_id: user4.id)
  story16.save!

  story17 = Story.new(title: 'Quotes from Albus Dumbledore', body: "After revelations about Dumbledore’s past that emerged in The Deathly Hallows, debates continue to rage over Dumbledore’s motivations, but this is a discussion for another article. Dumbledore polarizes fans, yet no matter one’s personal feelings about this character, it is impossible not to admire the wisdom, wittiness, and insight that flow from his mouth. Through my multiple readings of Rowling’s novels, I have discovered ten quotes that have encouraged me in tough times, changed my outlook on life, and nourished my soul.

  “After all, to the well-organized mind, death is but the next great adventure.”

  From: Harry Potter and the Sorcerer's Stone.

  Context: When Dumbledore visits Harry in the hospital, he explains that he and Nicholas Flamel planned to thwart Voldemort by destroying the sorcerer's stone and that Flamel will die in the process. Dumbledore is telling Harry that Flamel's death will not be a tragedy but rather a carefully planned and welcomed sacrifice for the greater good.

  Meaning Within Context: Voldemort doesn't have the kind of wisdom that Dumbledore and Flamel have, the kind exemplified in the quote. Voldemort's fear of death controls him and makes him sacrifice everything, including sanity, in order to cling to life. This is just one more example of how Voldemort is controlled by fear, and how his fear deranges him.

  Personal Meaning: All humans fear death, because we doubt what may come after this life is finished. Is there an afterlife, or is this it? Dumbledore reassures us that there is life after death, and not just any life, but an adventurous life of hope and joy. Philosophy teaches us that the overwhelming consensus of human thought and religion believes in the reality of an afterlife.

  “Do not pity the dead, Harry. Pity the living, and, above all, those who live without love.”

  From: Harry Potter and the Deathly Hallows.

  Context: When Harry is killed by Voldemort, he finds himself in another world, one that is calm and peaceful, where Dumbledore is waiting for him with these words.

  Meaning Within Context: In this moment, Harry has to choose between life and death, and he feels torn. Part of him wants to stay with Dumbledore. If he returns to life, it will be hard, dark, and painful. But if he chooses life, he can try to do something to stop Voldemort and prevent him from victimizing others. It is a hard decision made easier by the fact that Harry has people in life whom he loves. Voldemort, on the other hand, loves and is loved by nobody, and so his existence is the most pitiful.

  Personal Meaning: Recently, I witnessed a funeral procession that many people stopped to watch drive by. I could see pity in the faces of several people. After walking for less than a minute, I saw a man lying in a side alley, covered with newspapers. His jeans were torn and filthy, his face aged by the weather and the brutality of life, and his hair matted with muck. This was a man who had been shown little love in life, and though his plight was obvious to all on the street, not one person took pity on his situation. As my eyes filled with tears, I looked up and saw skyscrapers. Suddenly, I realized that even among those hallways of offices of corporations wander some unfortunate souls who are struggling to live a hollow life devoid of love. Dumbledore understood this and said as much: It is the unloved living who suffer most.


  “It is a curious thing, Harry, but perhaps those who are best suited to power are those who have never sought it. Those who, like you, have leadership thrust upon them, and take up the mantle because they must, and find to their own surprise that they wear it well.”

  From: Harry Potter and the Deathly Hallows.

  Context: This quote comes in the same scene as above, after Voldemort has killed the Horcrux inside Harry. Dumbledore and Harry have a long conversation in a peaceful, quiet world that looks like King's Cross Station.

  Meaning Within Context: Dumbledore tells Harry that the next move is his choice: Harry can stay in this afterlife and perhaps catch a train to somewhere else, or he can go back to his body and continue to fight the hard fight. In other words, he can choose to escape or to go back and lead the fight. Harry hasn't yet embraced his role as leader of the battle against Voldemort—Harry often feels conflicted about leading—and Dumbledore is explaining that the best leaders are not those who seek power (like Voldemort) but those take the responsibility for doing the right thing in the moment (like Harry).

  Personal Meaning: This quote by Dumbledore is quickly validated by a brief examination of history. The greatest leaders arose from unexpected backgrounds to lead peoples, tribes, nations, and empires.

  “Differences of habit and language are nothing at all if our aims are identical and our hearts are open.”

  From: Harry Potter and the Goblet of Fire.

  Context: After Voldemort kills Cedric Diggory, Dumbledore addresses everyone—the students at Hogwarts plus students who came from other schools to participate in the Triwizard Tournament—to announce what has happened.

  Meaning Within Context: Cedric's death triggers rumors and fear amongst the students. Once again, Voldemort's actions manage to sow distrust and discord amongst the wizarding community. Dumbledore's speech seeks to repair this break and bring the students together again. He reminds them that although they come from different places, know different customs, and speak different languages, they share certain core values. Remembering this will help them form bonds and fight together for common goals and ideals.

  Personal Meaning: This is a message that I believe all of America needs to hear. We live in an age in which politics is divisive instead of unifying. What we must all realize is that conservatives, liberals, republicans, democrats, capitalists, and socialists are all striving toward the same ultimate goal: to make this beautiful country we live in a better place. If we take Dumbledore’s advice and open our hearts and minds up to those who think differently, then perhaps we will begin to sincerely work to build better communities, stronger states, and a healing nation for a brighter tomorrow.

  “It does not do to dwell on dreams and forget to live.”

  From: Harry Potter and the Philosopher's Stone.

  Context: Dumbledore finds Harry looking in the Mirror of Erised again. He warns Harry that the mirror 'shows us nothing more or less than the deepest and most desperate desires of our hearts.' He also warns, 'This mirror gives us neither knowledge nor truth. Men have wasted away in front of it, even gone mad.' He says he is going to move the mirror and asks Harry not to try to find it again.

  Meaning Within Context: Having lost his parents as an infant, Harry is susceptible to getting lost in the past, in what-ifs and what-might-have-beens. Instead of living in the present moment, Harry feels drawn to sit on the hard floor in a cold room for hours, not moving, lost in the fantasy depicted in the mirror. He is at risk of choosing fantasy over reality and becoming addicted to his dream.

  Personal Meaning: Dumbledore reminds us that having dreams is important, but focusing on your dreams too much can hinder life every day. We are meant to enjoy life to the fullest every day! Do not let your dreams for the future suffocate your life in the present.


  “It is important to fight and fight again, and keep fighting, for only then can evil be kept at bay though never quite eradicated.”

  From: Harry Potter and the Philosopher's Stone and Harry Potter and the Half-Blood Prince.

  Context: These words were spoken after Harry met Voldemort for the first time since Voldemort killed his parents when Harry and Dumbledore discussed the odds of winning against the Dark Lord. Later, in Harry Potter and the Half-Blood Prince, Harry remembers these words and reflects on how many battles have been fought against the Dark Lord since that first encounter.

  Meaning Within Context: Dumbledore knows that there may be too much evil to kill it all at once but we must continue striving, in small ways and large, to fight against wrong. Dumbledore admits that he does not know if evil can ever be thwarted completely but it is important to keep trying, no matter how hopeless the cause might feel.

  Personal Meaning: Dumbledore realizes that the world is a dangerous place full of evil, and that, at times, we must be willing to fight against that evil whether it is slavery, Nazism, communism, or terrorism. We must be willing to confront poverty and brokenness. We must never give up hope when all seems hopeless. Dumbledore triumphed over Grindelwald and Harry triumphed over Voldemort. Good will triumph over evil.

  “Dark times lie ahead of us and there will be a time when we must choose between what is easy and what is right.”

  From: Harry Potter and the Goblet of Fire.

  Context: Dumbledore says this line to the students at Hogwarts, just after the traumatic death of Cedric Diggory and the frightful return of Lord Voldemort.

  Meaning Within Context: Dumbledore knows that if everyone is willing to make sacrifices and cling to what is good, that's how victory will be achieved.

  Personal Meaning: Likewise, in a world that is inundated with temptation, we must strive to live with integrity and stand up for what we know is right even if we are the only ones standing.

  “It is our choices that show what we truly are, far more than our abilities.”

  From: Harry Potter and the Chamber of Secrets.

  Context: After prevailing in the chamber of secrets, Dumbledore speaks to Harry in his office. Harry worries aloud about the similarities he noticed between himself and Tom Riddle, and Dumbledore speaks these words.

  Meaning Within Context: Harry and Voldemort have a lot of things in common, but it is their choices that define them and make them different and unique.

  Personal Meaning: In the Harry Potter series, many characters are judged by their blood (pure bloods, half-bloods, and mudbloods). Other characters define themselves by their magical abilities or financial situations. Dumbledore reminds us that who we are and the direction of our lives do not depend on our past, the amount of money we make, our parents, our ability to sing, our mental capacity to learn, our looks, or our athletic ability. Rather, it is our choices that determine our character, personality, and the satisfaction we derive from life.

  “Happiness can be found in the darkest of times, if one only remembers to turn on the light.”

  From: Harry Potter and the Prisoner of Azkaban.

  Context: Dumbledore says these words during the first dinner of the school year at Hogwarts. He explains that the school will host several dementors who are there purportedly to guard the students.

  Meaning Within Context: Dumbledore knows that dark times are coming, and he takes this opportunity to alert the students. He's trying to give them the information they will need to defend themselves against the dementors and other dark creatures.

  Personal Meaning: When I lost my cousin in a car accident, when I lost my best friend when he moved away, and when my great-grandmother suddenly died, this quote reminded me to look at all the good that came from my relationships with these incredible people. When you are struggling with anything in life, try to search for the glimmers of hope that can illuminate your heart.


  “It’s the unknown we fear when we look upon death and darkness, nothing more.”

  From: Harry Potter and the Half-Blood Prince.

  Context: The full quote goes like this: There is nothing to be feared from a body, Harry, any more than there is anything to be feared from the darkness... It is the unknown we fear when we look upon death and darkness, nothing more.

  Meaning Within Context: Like Voldemort, Harry has to deal with his fear of death. Dumbledore reassures him that this fear is ultimately misplaced and meaningless. This quote also offers foreshadowing, however, since this is the book in which Dumbledore dies.

  Personal Meaning: In this quote, Dumbledore explains one of our most common fears: the uncertainty of what happens after death. Humans crave certainty. We need to know what the weather is going to be so that we can make plans. We need to know that we have a job, shelter, food, something to do, a stable government, and a future. We cannot see in darkness; therefore, many fear it. And we don’t know exactly what’s coming when we die. Death is something that we must all face, and we must face it alone. However, realizing that death itself is not to be feared is a comforting thought.", author_id: user3.id)
  story17.save!

  story18 = Story.new(title: "Hermione's Time-Turner may have saved the day, but it also glorified burnout", body: "Like many an overachieving tween suckup growing up in the late 1990s, I identified deeply with Hermione Granger. The heroine of J.K. Rowling’s mega-franchise and I had a lot in common. For one, I looked just like her: My buck teeth and frizzy brown hair, once a source of insecurity, quickly came to represent something special as the series exploded into pop culture, first as books and then film adaptations. Hermione’s shameless brilliance, thirst for excellence and ability to solve problems well beyond her grade level — not to mention the validation she got from teachers and, eventually, other students — helped me and plenty of others come to terms with being a little less cool, a little more into books and school, than everyone else.

  The identification has stuck with me over the years, so much so that in high school, one of my best friends got me a replica of Hermione’s Time-Turner for my birthday. I was beside myself with glee. The little necklace, a tiny hourglass embedded in a delicate three-ringed gyroscope, looked exactly like the one in the film adaptation of Harry Potter and the Prisoner of Azkaban, given to Hermione by Professor McGonagall so she can take twice as many classes as her peers. That I now owned one myself, albeit a Muggle replica, was intoxicating; it was beautiful, of course, but just imagine how much more I could do, how many Advanced Placement courses and extracurricular activities I could take up while still having time for a social life and sleep. If only a teacher would entrust a magic-functional one to my care!

  But I didn’t expect that, in the years since, as my peers and I have grown from obsessive pre-teens into ambitious, overextended adults, the Time-Turner would become part of a cultural ethos, even when it isn’t explicitly mentioned. In college, when we pulled all-nighters with regularity, we’d mainline Red Bull and Adderall to churn out term papers and cram for finals. Now, as adults, we still constantly overbook our social lives, committing to drinks dates and dropping them at the last minute. I bite off more than I can chew at work, accepting more projects than I can reasonably squeeze in, for fear of not making enough as a freelancer, and fall behind on my deadlines as a result. We’re a generation of overachievers epitomized by Hermione’s IRL counterpart, Emma Watson, who transitioned from her successes as a millionaire child star to an Ivy Leaguer juggling a Hollywood career before becoming an ambassador to the U.N. and the occasional face of brands like Burberry.

  In the original version of the story, Hermione suffers from her double life in the same way we suffered from our all-nighters in the real world. She becomes irritable and impatient, even disrespecting her Divination teacher, Professor Trelawney, after weeks of tea-leaf readings and other “silly” lessons on fortune-telling. Mostly, Time-Turner Hermione walks around like an exhausted zombie, to the point where her typically oblivious friends — all still in the dark about how she’s been managing — start worrying about her.

  In the movie, though, apart from one Divination blow-up and a much-deserved punching of a racist classmate, she shows no signs of burnout. Her wits are as sharp as ever when she and Harry go back three hours in time to save both their past selves and their friends’ futures. In both the book and film, the professor who gave her the device and the headmaster, Professor Dumbledore, encourage her long-term overburdening without providing any alternative sources of relief. Sure, this might be because Hermione convinced them she could handle it, but Hermione was 13 years old. By the end of the book/movie, at which point it’s implied, not specified, that she voluntarily relinquishes the Time-Turner, readers and audiences are left to believe that the experience has been a net positive for her — it may have nearly killed her, but in the name of good grades and proving herself superhuman, it was worth it.

  But It’s also worth asking how Hermione’s teacher-sanctioned burnout in Prisoner of Azkaban — and specifically, the Time-Turner itself — might have contributed to the education of a generation defined by unhealthy expectations. J.K. Rowling knows well the impact pop culture has on society’s collective psyche; it’s why she’s spent a decade proclaiming Dumbledore gay and now endorses the idea of Hermione being black, though neither appears as such in the books or movies. But her consideration of the Time-Turner in the years after the final book came out has dealt only with the problems that the possibility of time travel presents to her narrative. (After all, plot is rendered irrelevant when a character could simply prevent a problem from ever happening.) Rowling’s decision to destroy all the remaining Time-Turners in a later book had nothing to do with mental health — and the impact on young readers of painting burnout in a positive light — and everything to do with quantum physics. As she wrote on the fan site Pottermore, “[W]hen writing fantasy novels, one must be careful what one invents. For every benefit, there is usually a drawback.”

  And the drawbacks of a glorified burnout machine are very real. Millennials are, without a doubt, the most stressed generation yet. Twenty- and thirty-something women are burning out left and right; many in the young workforce of Silicon Valley lean heavily on Adderall and other “smart drugs” to better compete with their peers. As millennials, we’ve taken a lot longer to learn our own boundaries than past generations, mostly because past generations had those lines defined for them. I don’t pull energy-drink-fueled all-nighters anymore, and I’m doing my best to work smarter rather than more, but I’ve been wired in the opposite direction for at least half my life, so the transition does and will continue to require substantial effort.

  Maybe it’s a good thing my Time-Turner broke a few years back.", author_id: user11.id)
  story18.save!
end
