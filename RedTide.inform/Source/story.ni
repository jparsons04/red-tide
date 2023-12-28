"Red Tide" by Josh Parsons

The story headline is "A solemn meditation".

The story description is "This island is all there is, all that is left, all that is known. In this cramped mess of concrete and ingenuity, whatever semblance of normalcy we've scrounged for ourselves balances precariously on a knife's edge.

Red Tide is a parser-based science fiction narrative. A solemn meditation on the limits of endurance."

The story genre is "Science Fiction".

Volume 1 - Preface

Book 1 - Uses and Includes

Use American dialect and the serial comma.
Use OMIT_UNUSED_ROUTINES of 1.

[Include Brief Room Descriptions by Gavin Lambert.]
Include Gender Options by Nathanael Nerode.
Include Gender Speedup by Nathanael Nerode.
Include Non-Binary Genders by Rainmaze. [With suggested fixes at https://intfiction.org/t/custom-pronouns-break-the-world/44993]
Include Conversation Package by Eric Eve.

Book 2 - Source Files

Include Tools by Red Tide.

Book 3 - Intro, Help, and About

Every turn:
	[Don't think I will have an unread message at the start of the game, so this would be ok]
	count-unread-messages;
	if the count-of-unread-messages of the comms device is greater than 0:
		now the comms device is unread;

Book 4 - Misc global things

A person can be known or unknown.

[
A thing can be examined or unexamined.
Carry out examining something:
	now the noun is examined.
]

Check going:
	[Constance should always be carrying the comms device when leaving]
	if the player does not enclose the comms device:
		say "As you're about to leave, you instinctively reach down to check what you're carrying, and you realize that you don't have your comms device." instead.

Book 5 - Actions

[TODO: thesaurus the stuff here]

Part 1 - Calling it by name on

Instead of calling Widd by name on the comms device:
	try pressing a call button.

Part 2 - Putting it under

Putting it under is an action applying to two things.
Understand "put [something] underneath/beneath/under [something]" as putting it under.
Understand "drop [something] underneath/beneath/under [something]"as putting it under.
Understand "hide [something] underneath/beneath/under [something]" as putting it under.
Understand "position [something] underneath/beneath/under [something]"as putting it under.
Understand "push [something] underneath/beneath/under [something]"as putting it under.
Understand "place [something] underneath/beneath/under [something]"as putting it under.
Understand "set [something] underneath/beneath/under [something]"as putting it under.

Check putting it under:
	say "[The noun] can't be put under the [second noun]." instead.

Part 3 - Making

Making is an action applying to one thing and requiring light. Understand "make [something]" as making.

Check making:
	say "[The noun] [aren't] something that can be made." instead.

Book 6 - Adjectives and Lexicon

[There's an interesting idea from Example 357 - The Eye of the Idol if I want to distinguish in-place and out-of-place objects on supporters in room descriptions]
Definition: A supporter is occupied if something is on it.

Book 7 - Rules

Part 1 - Inventory details

[might be overdoing it/too noisy, but maybe scoping this to inventory is fine]
Rule for printing inventory details of the comms device:
	[can it be buzzing and ringing at the same time? Probably.]
	if the comms device is unread and the comms device is ringing:
		say " (which is currently buzzing and ringing at the same time)";
	otherwise if the comms device is unread:
		say " (which is currently buzzing)";
	otherwise if the comms device is ringing:
		say " (which is currently ringing)";

Book 8 - Model World

Part 1 - Regions

The Tenement is a region.
The Farm Compound is a region.

Part 2 - Objects

Chapter 1 - Journal

The journal is a thing.

Part 3 - Rooms

Chapter 1 - Pod

Section 1 - Objects in the room

The Pod is a room in the Tenement. The description is "Your pod is a spartan and austere dwelling, which provides you basic shelter and limited amenities. This claustrophobic box of a room spans wider from east to west than north to south, with an uncomfortably low ceiling encroaching overhead. The walls of the room are thin, depressingly drab, and unadorned.[paragraph break]A small bed is tightly nestled along the eastern wall. In the center of the room, a wooden table and a [wooden chair] sit paired together.[if the wooden table is occupied] On the wooden table, you see [a list of things on the wooden table].[end if] A shadeless, electric light attached to the end of a chain dangles annoyingly close to the table from the low ceiling.[paragraph break]A [pod door] to the west leads out into the hallway."

[
The brief description of the Pod is "A small bed is nestled along the eastern wall. A wooden table and a wooden chair are in the center of the room. A shadeless, electric light hangs from the ceiling over the wooden table."
]

Constance is a woman in the Pod. The player is Constance.

The uncomfortably low ceiling is scenery in the Pod.

The thin walls are scenery in the Pod. The description is "The walls are so narrow in your pod, you can touch the north and south walls simultaneously with your outstretched arms. All of the walls are painted in a dull taupe, bear no decorations, and flecks of its paint are clearly chipping off." Understand "thin", "narrow", "wall", "north wall", "south wall", "drab", "unadorned", "dull", "taupe", "narrow", "fleck", and "flecks" as the thin walls. 

[TODO: implement listen descriptions]

The small bed is an enterable scenery supporter in the Pod. The description is "A small, standard-issue bed, snugly nestled on the eastern end of the room. So snugly that it would probably scrape the walls if it had to be pulled out. Thin sheets lie on top of a firm mattress, slightly crumpled and unmade." Understand "east wall", "eastern wall", "standard-issued", "standard", "issued", "nestled", "bed frame", "bedframe", "crumpled", "sheet", "thin sheet", "sheets", "thin sheets", "firm", and "mattress" as the small bed.

The comms device is a comms-device. The comms device is on the wooden table. The description of the comms device is "A thin, rectangular communications device. It's lightweight and fits comfortably in your hand. There's a small, oval-shaped speaker at the top, a digital display panel below the speaker, and three round buttons at the bottom: one labeled MESSAGES, one labeled CALL, and one labeled END.[if the comms device is unread][paragraph break]The comms device is currently buzzing and the display panel says:[line break][fixed letter spacing]  Press MESSAGES to list messages[variable letter spacing][end if][if the comms device is ringing][paragraph break]The comms device is currently ringing and the display panel says:[line break][fixed letter spacing]  Press CALL to answer call[variable letter spacing][end if]".
Understand "flat", "thin", "lightweight", "digital", "display", "panel", "oval-shaped", "round buttons", "round button", "button", and "speaker" as the comms device.

The journal is on the wooden table.

The wooden table is a scenery supporter in the Pod. The description is "Sturdy and worn, with a solid square top perched on top of a pedestal base. Like the nearby wooden chair, the table is uniformly stained in a dark ebony finish." Understand "pedestal" as the wooden table.

The wooden chair is an enterable supporter in the Pod. The description is "Not the most comfortable seat, but still reasonably well-crafted and sturdy. Like its wooden table counterpart, the wooden chair is uniformly stained in a dark ebony finish."

The shadeless electric light is scenery in the Pod. Understand "light", "bulb", "lightbulb", "electrical", "shade less", and "chain" as the shadeless electric light.

The pod door is an closed openable door. The pod door is west of the Pod and east of the South Hallway 45th Floor.

Section 2 - Action Processing, Rules, and Phrases

Check looking under the small bed:
	say "There's nothing under the bed. The gap under the bed frame is too narrow to stow anything." instead.

Check putting something under the small bed:
	say "That wouldn't be practical. The gap between the bed frame and the floor is so narrow, anything stowed under the bed would be difficult to get back." instead.

Check making the small bed:
	say "You glance over at the unmade sheets strewn about on your bed, briefly consider putting forth a modicum of energy to straighten them out, and then promptly discard the idea from your mind." instead.

Check pulling the small bed:
	say "[move-small-bed-text]" instead.

Check pushing the small bed:
	say "[move-small-bed-text]" instead.

Check turning the small bed:
	say "[move-small-bed-text]" instead.

Check taking the small bed:
	say "[move-small-bed-text]" instead.

To say move-small-bed-text:
	say "You briefly consider moving the bed, but you'd rather not unnecessarily scrape the walls. You're pretty sure there isn't anything hidden behind the bed anyway."

Chapter 2 - South Hallway 45th Floor

Section 1 - Objects in the room

The South Hallway 45th Floor is a room in the Tenement. The description is "Outside of your assigned pod, at the southern end of the 45th floor hallway of the tenement, dozens of squatty pod entrances stacked two high extend down both sides of the long hallway. A steel catwalk wraps around the hallway, allowing residents to access the upper tier of pod entrances on this floor. Fluorescent lights on the ceiling chain all the way down the hallway, inundating the area in a blistering and harsh light. The hard floor below is barely padded with a thin layer of dark grey carpeting on top of concrete.[paragraph break]A ladder nearby leads up onto the steel catwalk. The hallway continues north. Your pod is through the pod door to the east."

[
The brief description of the South Hallway 45th Floor is "A ladder nearby leads up onto a steel catwalk that wraps all the way around the hallway. The hallway continues north. Your pod is through the pod door to the east."
]

[TODO: implement listen descriptions]

[Something to be on the lookout for: verb conjugations in the singular they in parser output. The use of [do not] in Conversational Defaults, for example, causes default give-show responses to read "Jule do not respond" so these cases have to be explicitly overridden.]
Jule is a plural-named enby in the South Hallway 45th Floor. "Jule is standing outside of their pod." The description is "[regarding the noun][They] [are] quite something. [Their] demeanor is calm."

[Initiate open convnode upon entering, Jule/Gillian know that Constance is on her way to her new job. Constance can either engage in conversation or just keep going. If Constance leaves before talking, have them say something to the effect of "busy day ahead of you, eh? well, catch you later!" Something like that.]

Gillian is a woman in the South Hallway 45th Floor.

A baby is a kind of person. A baby can be portable. A baby is usually portable.
Eternity is a baby in the South Hallway 45th Floor. Eternity is male, not female, and not neuter.

The fluorescent lights are scenery in the South Hallway 45th Floor. [make sure to include note about eye strain here]

The hard floor is scenery in the South Hallway 45th Floor.

The steel catwalk is scenery in the South Hallway 45th Floor. [can comment about the ceiling height here]

The squatty pod entrances are scenery in the South Hallway 45th Floor.

The ladder is an open unopenable door in the South Hallway 45th Floor. The ladder is up from the South Hallway 45th Floor and down from the South Hallway 45th Floor Upper Tier.

Section 2 - Action Processing, Rules, and Phrases

When play begins:
	now Gillian carries Eternity.

Chapter 3 - South Hallway 45th Floor Upper Tier

Section 1 - Objects in the room

The South Hallway 45th Floor Upper Tier is a room in the Tenement.

Kai is a man in the South Hallway 45th Floor Upper Tier.

Chapter 4 - Central Hallway 45th Floor

Section 1 - Objects in the room

Central Hallway 45th Floor is a room in the Tenement. Central Hallway 45h Floor is north of South Hallway 45th Floor.

Chapter 5 - Farm Compound Administrative Chamber

Section 1 - Objects in the room

Farm Compound Administrative Chamber is a room in the Farm Compound.

Widd is a known man in the Farm Compound Administrative Chamber. Understand "mentor" as Widd.

widd-comms-device is a comms-device in the Farm Compound Administrative Chamber.

Section 2 - Action Processing, Rules, and Phrases

Does the player mean calling Widd by name on the comms device:
	it is very likely.

When play begins:
	now Widd carries widd-comms-device.

Book 9 - Conversations

Part 1 - Widd

where to go is a familiar thing.
act-1-widd-node is a closed convnode.
the ask-suggestions are { where to go }.

node-introduction for act-1-widd-node:
	say "A voice responds, 'Constance? Widd here.'"

Response for act-1-widd-node when asked about where to go:
	say "Widd answers, 'You need to go to the farm compound.'".

node-termination for act-1-widd-node when saying goodbye to Widd:
	say "[leavenode]You sign off by saying, 'Bye.' Widd replies, 'See you at the farm compound.'";
	try pressing an end button;

Part 2 - Jule

default ask-tell response for Jule:
	say "'Let's talk about that some other time,' they suggest."

default ask-for response for Jule:
	say "'Sorry, I can't help you with that right now,' they tell you."

default yes-no response for Jule:
	say "'Sorry?' Jule asks, puzzled. 'I didn't ask anything.'"

default give-show response for Jule:
	say "Jule looks curiously at [the noun] you're holding out, then they glance back up at you with an amused look. 'Are you... giving this to me or do you want me to tell you about it?' They chuckle and say, 'In any case, I don't need that, and I don't have anything useful to say about it.'"

Volume 2 - Act I - The Apprenticeship

Book 1 - Pod

Act I is a scene. Act I begins when play begins.

When play begins:
	say "The intro goes here. The help also goes here.";
	[The game starts with a call from Widd to retrieve on the comms device.]
	now the rings-until-voicemail of the comms device is 5;
	now the comms device is ringing;
	count-unread-messages;

Check going during Act I:
	[At the beginning of the game, Constance needs to answer Widd's call]
	if the Pod encloses the player:
		if the comms device is ringing or the comms device is unread:
			say "You start to head out, but then you feel awkward leaving behind the [if the comms device is ringing and the comms device is unread]simultaneously ringing and buzzing[otherwise if the comms device is ringing]ringing[otherwise if the comms device is unread]buzzing[end if] comms device." instead;

Every turn:
	if the comms device is ringing and the location of the player is the location of the comms device:
		decrement the rings-until-voicemail of the comms device;
		if the rings-until-voicemail of the comms device is 0:
			now the rings-until-voicemail of the comms device is 3;
			now the comms device is not-ringing;
			[TODO: This if statement is just a placeholder for now, needs to be more flexible]
			if Act I is happening:
				say "The comms device stops ringing, but a few moments later, it buzzes three times in quick succession.";
				record "Welcome" and “Constance, hi, Widd here. I just, er, wanted to reach out and welcome you aboard. I'm excited to have you join our crew here. Also probably a good time to make sure your device works too, which... appears to be the case. Anyway, you've probably got a lot on your mind, so don't worry too much about missing this call. We'll have plenty of time to talk through things when you get here. Looking forward to seeing you here at the farm compound and showing you around. See you soon.” in the Table of Comms Device Messages;
				now the comms device is unread;
	say note-comms-device-state;

Volume 3 - Debugging space and unfinished ideas

[
After taking the comms device for the first time:
	if the comms device is unexamined:
		now the comms device is examined;
		say "You pick up a thin, lightweight communications device. It has a speaker, a digital display panel, and at the bottom, three buttons labeled MESSAGES, CALL, and END.";
]

[
Check dropping when the noun is a comms-device:
	say "[comms-device-is-expensive]" instead.

Check throwing it at when the noun is a comms-device:
	say "[comms-device-is-expensive]" instead.

Check inserting it into when the noun is a comms-device:
	say "[comms-device-is-expensive]" instead.

To say comms-device-is-expensive:
	say "Not wanting to unnecessarily damage an expensive piece of equipment integral to your job, you think better of doing that."
]

[Act I: Pod]

test list-msg with "list messages / x comms / list msgs / check messages / check msgs / list messages from comms device / put comms on table / list msgs / z / z / z".
test list-bad with "list messages from journal".
test read-msg with "read msg 1 / read message 1 / read msg 1 from comms / read message 1 from comms / read messages / read msgs from comms".
test read-bad with "read msg 10 / read msg from journal / push comms / press comms".
test comms-bad with "take comms / drop comms / throw comms at door / insert comms into door".
test pod-answering with "push call / ask about where to go / bye".
test hang-up with "push call / a where to go / hang up".
test after-bye-bad with "push end / answer call / call widd / push end / push call / ask about where to go / goodbye".

test a1-pod-happy with "test list-msg / test read-msg / test pod-answering / test hang-up / w".
test a1-pod-full with "w / test list-msg / test list-bad / test read-msg / test read-bad / test comms-bad / test pod-answering / test hang-up / test after-bye-bad / w".