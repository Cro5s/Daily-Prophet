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
  user1 = User.create!(username: "TheHP", name: "Harry Potter", email: "harryp@email.com", password: "password")

  user2 = User.create!(username: "HGranger", name: "Hermione Granger", email: "hermioneg@email.com", password: "password")

  user3 = User.create!(username: "Reasley", name: "Ron Weasley", email: "ronw@email.com", password: "password")

  user4 = User.create!(username: "HeadMaster", name: "Albus Dumbledore", email: "albusd@email.com", password: "password")

  user5 = User.create!(username: "HalfBloodPrince", name: "Severus Snape", email: "severuss@email.com", password: "password")

  user6 = User.create!(username: "ImmortalNic", name: "Nicolas Flamel", email: "nicolasf@email.com", password: "password")

  user7 = User.create!(username: "BeastMaster", name: "Rubeus Hagrid", email: "rubeush@email.com", password: "password")

  user8 = User.create!(username: "MasterWandsmith", name: "Garrick Ollivander", email: "garricko@email.com", password: "password")

  user9 = User.create!(username: "PureBlood", name: "Draco Malfoy", email: "dracom@email.com", password: "password")

  user10 = User.create!(username: "Lestrange", name: "Bellatrix Lestrange", email: "bellatrixl@email.com", password: "password")

  user11 = User.create!(username: "Muggle", name: "Mikaela Renshaw", email: "mikaelar@email.com", password: "password")

  guest = User.create!(username: "Guest", name: "Guest User", email: "guest@email.com", password: "password")


  # Stories
  Story.destroy_all
  story1 = Story.new(title: "Seven Things That Make Me More Okay with Being a Muggle", body: "1. 11-year-olds are not given potentially deadly weapons.
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
  story1.image.attach(io: open("https://daily-prophet-dev.s3.amazonaws.com/Hermione-Potions.png"), filename: "Hermione-Potions.png")
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
  story2.image.attach(io: open("https://daily-prophet-dev.s3.amazonaws.com/Darmoni-Hogwarts.jpg"), filename: "Darmoni-Hogwarts.jpg")
  story2.save!

  story3 = Story.new(title: "Hello From Harry Potter", body: "When I drop off James and Albus for the new school year, I’m so looking forward to seeing you and delivering the Golden Snitch that I signed for the silent auction. I hope it raises a few galleons toward refurbishing the Sorting Hat, which was looking dodgy even back in the day, when it gave me a sword to kill that basilisk in the Chamber of Secrets. Mad times—but I’m glad I was able to help, in whatever small ways, to save Hogwarts from destruction.

  I write, however, on another subject. This fall, James will begin his third year on the Gryffindor quidditch team, but he has yet to start a game. I would never ask you to intercede with the coach, of course, but, as you know, wizarding universities expect to see many extracurricular boxes checked, and James’s only other activity is his work with stained glass. His teachers say he’s turning out cathedral-quality stuff, but we’re told that art achievements alone won’t cut it—even his (unobjective-parent alert!) spectacular depiction of me and my friends rescuing the Philosopher’s Stone.

  Let me first acknowledge the obvious: last year, James struggled with his broom-flying. Happily, we have solved that problem. He has been diagnosed with flying-attention deficit—he’s overly distracted by birds, clouds, and whatnot. So, in a fit of inspiration, I contacted Firebolt broom-makers (I confess I played the “H.P.” card), who made James a special broom that gives him a minor electric jolt when his attention wanders. His strides using it this summer have been absolutely phenomenal. However, to ride it in official school games, it looks like he will require a brief letter from you (which I’m happy to compose) to the Quidditch Society, explaining that he really does need this special accommodation.

  Having not played last year, James understandably has developed some anxiety around quidditch, so we’ve had Nobbler, our house elf, certified as an emotional-support elf (you won’t believe how cute his little vest is). On the rarest of occasions—it’s not likely, and almost certainly won’t happen—James may need Nobbler to ride behind him on his broom. And he’ll require the house master to sign off on Nobbler living with him—I believe this might qualify him for a single this year? We don’t want any special treatment, of course, but Nobbler does need to sing James to sleep and we wouldn’t want to disturb any other students.

  I hope you’ll forgive a father these requests. More than anyone, I know what a privilege it is for my kids to attend my alma mater. After all, I had to drop out of school to collect the horcruxes and unite the Deathly Hallows before defeating Voldemort. I envy this generation, who are able to enjoy their student years unimpeded. But then a peaceful world in which children can be children was always our shared goal, wasn’t it? It also happens to be the subject of James’s latest stained-glass piece, which, by the way, would look stunning in the Gryffindor common room. We would probably have to crane it in, but that’s for a later discussion.

  As an aside, when I see you in September, I’d like to pick your brain about my memoirs. My dream is to use the book proceeds to build a new, fifth house at Hogwarts, to maximize the school’s potential—we currently have to reject too many good (and full-paying) applicants owing to lack of space. I’ve heard people say that the house should be named after me, an absurd idea that I’d strenuously oppose, but I do think “The McGonagall Visitors Center at Potter House” has a lovely ring to it.
  Bill Weasley sends his regards. Currently his wife, Fleur, is headmaster at Beauxbatons Academy of Magic, and is always joking that I should send our kids there. A laughable notion, given my history with Hogwarts, but I did visit recently and, wow, their new quidditch field is spectacular.", author_id: user1.id)
  story3.image.attach(io: open("https://daily-prophet-dev.s3.amazonaws.com/LaZebnik--HarryPotter.jpg"), filename: "LaZebnik--HarryPotter.jpg")
  story3.save!

  story4 = Story.new(title: "Love Will Win", body: "Voldemort, if you’re listening, I have harnessed an ancient and powerful magic called love.", author_id: user1.id)
  story4.image.attach(io: open("https://daily-prophet-dev.s3.amazonaws.com/HP-debate.jpg"), filename: "HP-debate.jpg")
  story4.save!

  story5 = Story.new(title: "University Team Finds New Evidence of Wand Use in Ancient Egypt", body: "On the heels of the highly successful St. Andrews archaeological expedition at Alexandria comes new evidence that ancient Egyptian wizards may have used wands and staves for magic. The leader of the expedition, Professor Edward Faraday, spoke from Medinet al-Faiyum, where the majority of their recent archaeological work has been done over the past eighteen months. He said that a new tomb for a high priest of Seth revealed four magical objects that could only be described as wands. “These were made from carefully crafted wood, and exhibited actual cores when examined. They were as well made as any wand produced today, and we’ve also uncovered manuscripts that will unlock what magic they were able to perform with them. It’s an incredibly surprising thing.”

  The Professor said the discovery of the tomb was made by two former Hogwarts students now working as team members for the expedition. “The discovery was not pure luck. Using research and deduction, researchers Paul and Chyler MacLeod were able to find an almost intact tomb with many hundreds of artifacts that are now being examined by the team. Their hard work has led to this discovery, and will be invaluable into how we think of magic and magical research today, as well as giving us an insight into powerful magical societies that existed in antiquity.” The expedition originally was looking only to expand an existing dig site, but the team discovered the new site some distance from the expeditions camp. The cooperative venture between the Egyptian Museum of Magic, and St. Andrews will soon be releasing more information and possibly organizing an exhibit of the artifacts.", author_id: user8.id)
  story5.image.attach(io: open("https://daily-prophet-dev.s3.amazonaws.com/wands.jpeg"), filename: "wands.jpeg")
  story5.save!
  
  story6 = Story.new(title: "Wizangamot Education Committee Meets with Board of Hogwarts Governors", body: "Fenton Falls: A week-long conference between a dozen members of the Wizangamot and the dozen Board of Hogwarts Governors has begun in Fenton Falls, not far from the school itself. The resort town has played host to meetings of this sort before, during the Reconstruction era for the school, as well as the Darkness Crisis a few yeas ago. Sources say the Wizangamot and Governors are meeting over a number of new educational directives that have come from the Ministry and how best to manage the school. Spokeswitch Raven Cumberbatch said the Wizangamot has been increasingly concerned with the volume of strident communications to the Wizangamot in recent weeks, and a sudden spate of discipline problems at the school.

  Cumberbatch also said the discovery of several corrupt Ministry officials assigned to the school, as well as investigations by an independent Judicial task force have yielded some disturbing results. With the departure of several Ministry appointees to the school, rumors have circulated that several were actually extremist wizards of dubious character and professional qualifications. “The Wizangamot will also be inviting Professor Spriggletuft to the conference to defend or condemn the recent measures taken by the Ministry,” said Cumberbatch. “The intent here is to ensure that Hogwarts remains a great school with equal opportunity for all witches and wizards that come here,” she said.", author_id: user4.id)
  story6.image.attach(io: open("https://daily-prophet-dev.s3.amazonaws.com/hogwarts-castle-.jpg"), filename: "hogwarts-castle-.jpg")
  story6.save!

  story7 = Story.new(title: "Top 10 Potions ", body: "At Hogwarts, students advance their magical skills in a variety of areas, whether learning dueling techniques in Defense Against the Dark Arts, transforming themselves and objects in Transfiguration, or developing flying prowess with Quidditch practice.

  Yet an often-underrated subject is Potions, a magical field that teaches wizards and witches to brew several wondrous concoctions ranging from mystical to deadly. Although Professor Snape is a strict teacher to non-Slytherin students, Potions remains an interesting class that Harry managed to receive an "Exceeds Expectations" in during his O.W.L. exam, and various potions helped the Chosen One in his travels more than once. But with dozens of mysterious tonics encountered throughout the Wizarding World, which spirits reign supreme? These are the 10 most powerful potions: 

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

  If you think it's "cheating" or morally wrong to unnaturally advance your own looks, consider that people do it in real life all the time (make-up, wigs, etc.) and that Hermione once took advantage of a shrinking potion to reduce her slightly-large front teeth to a more normal size.

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

  That said, Veritaserum can be resisted with a corresponding antidote or sufficient Occlumency skill, often rendering it ineffective in court proceedings. Despite these counters, in Goblet of Fire, Dumbledore used Veritaserum on Barty Crouch Jr. to reveal his impersonation of Alastor "Mad-Eye" Moody. As fierce as this secret-divulging concoction is, Crouch used an even stronger potion to maintain his charade...

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
  story7.image.attach(io: open("https://daily-prophet-dev.s3.amazonaws.com/potions.jpeg"), filename: "potions.jpeg")
  story7.save!

  story8 = Story.new(title: "", body: "", author_id:)
  story8.image.attach(io: open(), filename: "")
  story8.save!

  story9 = Story.new(title: "", body: "", author_id:)
  story9.image.attach(io: open(), filename: "")
  story9.save!

  story10 = Story.new(title: "", body: "", author_id:)
  story10.image.attach(io: open(), filename: "")
  story10.save!

  story11 = Story.new(title: "", body: "", author_id:)
  story11.image.attach(io: open(), filename: "")
  story11.save!

  story12 = Story.new(title: "", body: "", author_id:)
  story12.image.attach(io: open(), filename: "")
  story12.save!

  story13 = Story.new(title: "", body: "", author_id:)
  story13.image.attach(io: open(), filename: "")
  story13.save!

  story14 = Story.new(title: "", body: "", author_id:)
  story14.image.attach(io: open(), filename: "")
  story14.save!

  story15 = Story.new(title: "", body: "", author_id:)
  story15.image.attach(io: open(), filename: "")
  story15.save!

  story16 = Story.new(title: "", body: "", author_id:)
  story16.image.attach(io: open(), filename: "")
  story16.save!

  story17 = Story.new(title: "", body: "", author_id:)
  story17.image.attach(io: open(), filename: "")
  story17.save!

  story18 = Story.new(title: "", body: "", author_id:)
  story18.image.attach(io: open(), filename: "")
  story18.save!

  story19 = Story.new(title: "", body: "", author_id:)
  story19.image.attach(io: open(), filename: "")
  story19.save!

  story20 = Story.new(title: "", body: "", author_id:)
  story20.image.attach(io: open(), filename: "")
  story20.save!
end