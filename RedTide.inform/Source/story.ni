"Red Tide" by Josh Parsons

The story headline is "A solemn meditation".

The story description is "This island is all there is, all that is left, all that is known. In this cramped mess of concrete and ingenuity, whatever semblance of normalcy we've scrounged for ourselves balances precariously on a knife's edge.

Red Tide is a parser-based science fiction narrative. A solemn meditation on the limits of endurance."

The story genre is "Science Fiction".

Volume 1 - Preface

Book 1 - Uses and Includes

Use American dialect and the serial comma.

Include Gender Options by Nathanael Nerode.
[Include Brief Room Descriptions by Gavin Lambert.]
Include Conversation Package by Eric Eve.

Book 2 - Intro, Help, and About

When play begins:
	say "The intro goes here. The help also goes here.[paragraph break]You hear a piercing ring nearby...";
	[The game starts with a call from Widd to retrieve on the comms device.]
	now the comms device is ringing;
	count-unread-messages;
	[the comms device act-1-pod-stops-ringing in four turns from now.]

Every turn:
	[Don't think I will have an unread message at the start of the game]
	count-unread-messages;
	if the count-of-unread-messages of the comms device is greater than 0:
		now the comms device is unread;

[At the time when the comms device act-1-pod-stops-ringing:
	say "Adding a message to the comms device."]

Book 3 - Misc global things

[Understand the printed name property as describing a person.]
A person can be known or unknown.

A thing can be examined or unexamined.
Carry out examining something:
	now the noun is examined.

Check going:
	[Constance should always be carrying the comms device when leaving]
	if the player does not enclose the comms device:
		say "As you're about to leave, you instinctively reach down to check what you're carrying, and you realize that you don't have your comms device." instead.

Book 4 - Actions

[reminder to use a thesaurus]

Part 1 - Pressing

Pressing is an action applying to one visible thing. Understand "press [something preferably held]" as pressing.

Before pressing a button when the player does not enclose a comms-device:
	if the player can touch a comms-device (called the current-comms-device):
		say "(first taking [the current-comms-device])[line break]";
		silently try taking the current-comms-device;
	otherwise:
		say "You don't have a comms device handy."

Check pressing when the noun is not a button:
	say "[The noun] [aren't] something that can be pressed." instead.

Check pressing an end button when the player does not reach someone:
	say "You're not on the line with anyone, so the END button will do nothing." instead.

Check pressing a mentor button when the player reaches someone:
	say "You are already connected to [the other party of the player], so the MENTOR button will do nothing." instead;

Carry out pressing a button (called the target-button):
	let the current-comms-device be a random comms-device which can be touched by the player;
	say "You press [the target-button] on [the current-comms-device][run paragraph on]";
	[end]
	if the target-button is an end button:
		say ". You hear a click on the comms device and the call ends.";
		now the player does not reach anyone;
	otherwise if the target-button is a mentor button:
		[call]
		if the current-comms-device is not-ringing:
			[don't like hardcoding Widd here]
			if the player does not reach Widd:
				if the player reaches someone:
					[assuming Constance can call other people]
					say ", so you tell [the other party of the player] that you need to call someone else. 'Gotta go, need to call someone else.'";
					now the player does not reach anyone;
				say " and connect to Widd.";
				now the player reaches Widd;
				if Act I is happening:
					Initiate a conversation with Widd at act-1-widd-node;
		[answer]
		otherwise:
			if the current-comms-device is not-ringing:
				say ", but your comms device is not currently ringing." instead;
			otherwise:
				if the player does not reach anyone:
					if Widd is not seen:
						now Widd is seen;
					say " and connect to Widd.";
					now the player reaches Widd; [Could somebody else call Constance?]
					if the current-comms-device is ringing:
						now the current-comms-device is not-ringing;
					if Act I is happening:
						Initiate a conversation with Widd at act-1-widd-node;
	[messages]
	otherwise if the target-button is a messages button:
		count-unread-messages;
		if the count-of-unread-messages of the comms device is 0:
			say ".[paragraph break]The display panel on [the current-comms-device] reads: [fixed letter spacing]No messages.[variable letter spacing]";
		otherwise:
			say ".[paragraph break]A list of messages on [the current-comms-device] appears on the display panel:[line break]";
			repeat through the Table of Comms Device Messages:
				if the is-visible entry is true:
					if the has-read entry is false:
						say "[fixed letter spacing]  Message #[message-number entry]: [message-subject entry] (unread)[variable letter spacing][line break]";
					otherwise:
						say "[fixed letter spacing]  Message #[message-number entry]: [message-subject entry][variable letter spacing][line break]".

Part 2 - Pushing a button

Instead of pushing a button (called the target-button):
	try pressing the target-button;

Part 3 - Hanging up

[TODO: implement 'hang it up', 'hang up' on nothing, 'end call']
Hanging up is an action applying to one visible thing. Understand "hang up [something preferably held]" and "hang up" as hanging up.

Instead of hanging up:
	try pressing an end button.

Part 4 - Calling it by name on

Calling it by name on is an action applying to one visible thing and one thing. Understand "call [any known person]" and "call [any known person] on [something preferably held]" as calling it by name on.

Check calling it by name on:
	if the second noun is not a comms-device:
		say "[The second noun] cannot be used to make calls." instead;
	otherwise if the noun is in the location:
		say "[The noun] [are] right here." instead;
	otherwise if the noun is not Widd:
		say "[The noun] cannot be called with the comms device." instead.

Instead of calling Widd by name on the comms device:
	try pressing a mentor button.

Part 5 - Answering

Answering is an action applying to one thing and requiring light. Understand "answer [something preferably held]" and "answer call" as answering.

[Need to be careful about the ambiguity of "answer" (to a person)]
Check answering when the noun is not a comms-device:
	say "Answering [the noun] does not work." instead.

Instead of answering the comms device:
	try pressing a mentor button.

Part 6 - Listing messages from

Listing messages from is an action applying to one visible thing.
Understand "list messages from [something preferably held]" and "list msgs from [something preferably held]" and "check messages from [something preferably held]" and "check msgs from [something preferably held]" and "list messages" and "list msgs" and "check messages" and "check msgs" as listing messages from.

Check listing messages from when the noun is not a comms-device:
	say "[The noun] [aren't] something you can list messages from." instead.

Instead of listing messages from the comms device:
	try pressing the messages button instead.

Part 7 - Reading it from

[TODO fix:
>[19] read msg from journal
You can't see any such thing.]
Reading it from is an action applying to one number and one visible thing. Understand "read message [a number] from [something preferably held]" and "read msg [a number] from [something preferably held]" and "read message [a number]" and "read msg [a number]" as reading it from.

Before reading a number from a comms-device when the player does not enclose a comms-device:
	if the player can touch a comms-device (called the current-comms-device):
		say "(first taking [the current-comms-device])[line break]";
		silently try taking the current-comms-device;
	otherwise:
		say "You don't have a comms device handy."

Check reading it from when the second noun is not a comms-device:
	say "[The second noun] [aren't] something you can read messages from." instead.

Carry out reading it from when the second noun is a comms-device:
	if the number of rows in the Table of Comms Device Messages is less than the number understood:
		say "You speak into the comms device, 'Read message [number understood].' But the display panel shows an error message: [fixed letter spacing]Message number [number understood] does not exist.[variable letter spacing][paragraph break]";
	otherwise:
		choose row the number understood in the Table of Comms Device Messages;
		if the is-visible entry is false:
			say "The display display panel shows an error message: [fixed letter spacing]Message number [number understood] does not exist.[variable letter spacing]";
		otherwise:
			say "You speak into the comms device, 'Read message [number understood].' An artificially cheery voice from the comms device says, [italic type]'Retrieving message [number understood]...'[roman type][paragraph break]The recorded message plays through the speaker:[line break]  [italic type]'[message-body entry]'[roman type][paragraph break]";
			if the has-read entry is false:
				decrement the count-of-unread-messages of the comms device;
				if the count-of-unread-messages of the comms device is 0:
					now the comms device is read;
				now the has-read entry is true;
				let unread-messages-in-words-in-caps be "[the count-of-unread-messages of the comms device in words]" in upper case;
				say "The cheery voice ends by saying, [italic type]'You now have [unread-messages-in-words-in-caps] unread message[s].'[roman type][paragraph break]".

Part 8 - Putting it under

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

Part 9 - Making

Making is an action applying to one thing and requiring light. Understand "make [something]" as making.

Check making:
	say "[The noun] [aren't] something that can be made." instead.

Book 5 - Phrases

To say comms-device-is-expensive:
	say "Not wanting to unnecessarily damage an expensive piece of equipment integral to your job, you think better of doing that."

To count-unread-messages:
	now the count-of-unread-messages of the comms device is 0;
	repeat through the Table of Comms Device Messages:
		if the has-read entry is false and the is-visible entry is true:
			increment the count-of-unread-messages of the comms device;
	if the count-of-unread-messages of the comms device is greater than 0:
		now the comms device is unread;
	otherwise:
		now the comms device is read.

To say move-small-bed-text:
	say "You briefly consider moving the bed, but you'd rather not unnecessarily scrape the walls. You're pretty sure there isn't anything hidden behind the bed anyway."

To say list-wooden-table-stuff:
	let L be the list of visible things on the wooden table;
	if the number of entries in L > 0:
		say ". On the wooden table you can see [a list of visible things on the wooden table]".

Book 6 - Relations and Verbs

Part 1 - Connection and to reach

Connection relates one thing to another (called the other party). The verb to reach means the connection relation.

After deciding the scope of the player while the player reaches someone:
	place the other party of the player in scope, but not its contents.

Book 7 - Rules

Part 1 - Visibility when calling over the line

To decide whether acting through the line:
	if the noun is something and the location of the noun is not the location of the player:
		yes;
	if the second noun is something and the location of the second noun is not the location of the player:
		yes;
	no.

Visibility rule when acting through the line:
	there is insufficient light.

Rule for printing a refusal to act in the dark when acting through the line:
	say "Your comms device isn't capable of seeing [the other party of the player], so you can only communicate verbally." instead.

A rule for reaching inside a room (called destination):
	if the other party of the player is enclosed by the destination:
		say "Though you're on the line with [the other party of the player], you can't physically reach where [they] [are].";
		deny access.

Part 2 - Supplying missing nouns

[what happens if there are two comms devices that can be touched? Might need to be really strict about what comms devices can be picked up.]

Rule for supplying a missing noun while hanging up:
	if the player can touch a comms-device (called the current-comms-device):
		say "([the current-comms-device])[line break]";
		now the noun is the current-comms-device;
	otherwise:
		say "You need a comms device in order to hang up."
		
Rule for supplying a missing second noun while calling someone by name on:
	if the player can touch a comms-device (called the current-comms-device):
		say "(on [the current-comms-device])[line break]";
		now the second noun is the current-comms-device;
	otherwise:
		say "You don't have a comms device handy to call someone."

Rule for supplying a missing noun while answering:
	if the player can touch a comms-device (called the current-comms-device):
		say "([the current-comms-device])[line break]";
		now the noun is the current-comms-device;
	otherwise:
		say "You don't have a comms device handy to answer."

Rule for supplying a missing noun while listing messages from:
	if the player can touch a comms-device (called the current-comms-device):
		say "(from [the current-comms-device])[line break]";
		now the noun is the current-comms-device;
	otherwise:
		say "You don't have a comms device handy to list messages from."

Rule for supplying a missing second noun while reading a number from:
	if the player can touch a comms-device (called the current-comms-device):
		say "(from [the current-comms-device])[line break]";
		now the second noun is the current-comms-device;
	otherwise:
		say "You don't have a comms device handy to read a message from."

Part 3 - Locale descriptions

[what if I have it so that Widd calls but Constance chooses not to pick up, Widd leaves a message...]
[can it be buzzing and ringing at the same time? I guess if I allow a Widd call to leave to a message then, yes.]
Before printing the locale description of a room (called the locale):
	if the locale encloses the comms device:
		if the comms device is ringing and the comms device is unread:
			say "The comms device is ringing and buzzing simultaneously, generating a cacophony of dissonant sounds.";
		otherwise if the comms device is ringing:
			say "[one of]The comms device is ringing.[or]The comms device rings again, seemingly louder than the first time.[or]The comms device rings again.[stopping]";
		otherwise if the comms device is unread:
			say "You hear [if the player encloses the comms device]and feel [end if]the buzzing of the comms device.".

Part 4 - Inventory details

[might be overdoing it/too noisy, but maybe scoping this to inventory is fine]
Rule for printing inventory details of the comms device:
	[can it be buzzing and ringing at the same time? Probably.]
	if the comms device is unread and the comms device is ringing:
		say " (which is currently buzzing and ringing at the same time)[run paragraph on]";
	otherwise if the comms device is unread:
		say " (which is currently buzzing)[run paragraph on]";
	otherwise if the comms device is ringing:
		say " (which is currently ringing)[run paragraph on]";

Book 8 - Model World

Part 1 - Regions

The Tenement is a region.
The Farm Compound is a region.

Part 2 - Objects

Chapter 1 - Comms Device

Section 1 - Object

A comms-device is a kind of thing. A comms-device can be either unread or read. A comms-device can be either ringing or not-ringing. A comms-device has a number called the count-of-unread-messages.

Understand "communications device" and "walkie-talkie" and "walkie talkie" as a comms-device.
Understand "buzzing" and "vibrating" as a comms-device when a comms-device is unread.
Understand "ringing" as a comms-device when a comms-device is ringing.
Understand "push [comms-device]" and "press [comms-device]" as a mistake ("[bracket]There are three different buttons on the comms device: the MESSAGES button, the MENTOR button, and the END button. You can [bold type]press messages[roman type], [bold type]press mentor[roman type], or [bold type]press end[roman type], to press these buttons, respectively. Alternatively, if you know the message number on the comms device you want to read, you can [bold type]read message #[roman type] or [bold type]read msg #[roman type], replacing [bold type]#[roman type] with the message number.[close bracket]")

Section 2 - Action Processing, Rules, and Phrases

Before taking the comms device for the first time:
	if the comms device is unexamined:
		say "You pick up the thin, lightweight comms device. It has a speaker, a digital display panel, and at the bottom, three buttons labeled MESSAGES, MENTOR, and END.";
		now the comms device is examined.

Check dropping when the noun is a comms-device:
	say "[comms-device-is-expensive]" instead.

Check throwing it at when the noun is a comms-device:
	say "[comms-device-is-expensive]" instead.

Check inserting it into when the noun is a comms-device:
	say "[comms-device-is-expensive]" instead.

Section 3 - Messages on Comms Device

[TODO: need to include a help guide for listing/reading it]
Table of Comms Device Messages
has-read	is-visible	message-number	message-subject	message-body
false	true	"1"	"Welcome"	“Constance, welcome to the team. I just, er, wanted to say hello. Making sure your device works. Look forward to seeing you at the compound and showing you the ropes.”
false	false	"2"	"URGENT"	“This is an urgent message.”
false	false	"3"	"Need help"	“Hey, I need help.”
false	false	"4"	"Instructions"	“I need you to go do this then go do that.”

Chapter 2 - Journal

The journal is a thing.

Part 3 - Rooms

Chapter 1 - Pod

Section 1 - Objects in the room

The Pod is a room in the Tenement. The description is "Your pod is a spartan and austere dwelling, which provides you basic shelter and limited amenities. This claustrophobic box of a room spans wider from east to west than north to south, with an uncomfortably low ceiling encroaching overhead. The walls of the room are thin, depressingly drab, and unadorned.[paragraph break]A small bed is tightly nestled along the eastern wall. In the center of the room, a wooden table and a [wooden chair] sit paired together. A shadeless, electric light attached to the end of a chain dangles annoyingly close to the table from the low ceiling. On the wooden table, you see a [comms device] and a [journal].[paragraph break]A [pod door] to the west leads out into the hallway."

[
The brief description of the Pod is "A small bed is nestled along the eastern wall. A wooden table and a wooden chair are in the center of the room. A shadeless, electric light hangs from the ceiling over the wooden table."
]

Constance is a known woman in the Pod. The player is Constance.

The uncomfortably low ceiling is scenery in the Pod.

The thin walls are scenery in the Pod. The description is "The walls are so narrow in your pod, you can touch the north and south walls simultaneously with your outstretched arms. All of the walls are painted in a dull taupe, bear no decorations, and flecks of its paint are clearly chipping off." Understand "thin", "narrow", "wall", "north wall", "south wall", "drab", "unadorned", "dull", "taupe", "narrow", "fleck", and "flecks" as the thin walls. 

[TODO: implement listen descriptions]

The small bed is an enterable scenery supporter in the Pod. The description is "A small, standard-issue bed, snugly nestled on the eastern end of the room. So snugly that it would probably scrape the walls if it had to be pulled out. Thin sheets lie on top of a firm mattress, slightly crumpled and unmade." Understand "east wall", "eastern wall", "standard-issued", "standard", "issued", "nestled", "bed frame", "bedframe", "crumpled", "sheet", "thin sheet", "sheets", "thin sheets", "firm", and "mattress" as the small bed.

The comms device is a comms-device. The comms device is on the wooden table. The description of the comms device is "A thin, rectangular communications device. It's lightweight and fits comfortably in your hand. There's a small, oval-shaped speaker at the top, a digital display panel below the speaker, and three round buttons at the bottom: one labeled MESSAGES, one labeled MENTOR, and one labeled END.[if the comms device is unread][paragraph break]The comms device is currently buzzing and the display panel says:[line break][fixed letter spacing]  Press MESSAGES to list messages[variable letter spacing][end if][if the comms device is ringing][paragraph break]The comms device is currently ringing and the display panel says:[line break][fixed letter spacing]  Press MENTOR to answer call[variable letter spacing][end if]".
Understand "flat", "thin", "lightweight", "digital", "display", "panel", "oval-shaped", "round buttons", "round button", "button", and "speaker" as the comms device.

A button is a kind of thing.
A messages button, a mentor button, and an end button are buttons. A messages button, a mentor button, and an end button are parts of the comms device.
Understand "message" as the messages button.
The printed name of a messages button is "MESSAGES button". The printed name of a mentor button is "MENTOR button". The printed name of an end button is "END button".

[If I introduce another comms device later, I need to be careful about making the other ones distinct]
Does the player mean doing something with the comms device:
	it is very likely.

The journal is on the wooden table.

The wooden table is a scenery supporter in the Pod. The description is "Sturdy and worn, with a solid square top perched on top of a pedestal base. Like the nearby wooden chair, the table is uniformly stained in a dark ebony finish." Understand "pedestal" as the wooden table.

The wooden chair is an enterable supporter in the Pod. The description is "Not the most comfortable seat, but still reasonably well-crafted and sturdy. Like its wooden table counterpart, the wooden chair is uniformly stained in a dark ebony finish."

The shadeless electric light is scenery in the Pod. Understand "light", "bulb", "lightbulb", "electrical", "shade less", and "chain" as the shadeless electric light.

The pod door is an closed openable door. The pod door is west of the Pod and east of the South Hallway 45th Floor.

Section 2 - Action Processing, Rules, and Phrases

Check looking under the small bed:
	say "There's nothing under the bed. Besides, the gap under the bed frame is too narrow to stow anything." instead.

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

Chapter 2 - South Hallway 45th Floor

Section 1 - Objects in the room

The South Hallway 45th Floor is a room in the Tenement. The description is "Outside of your assigned pod, at the southern end of the 45th floor hallway of the tenement, dozens of squatty pod entrances stacked two-high extend down both sides of the long hallway. A steel catwalk wraps around the hallway, allowing residents to access the upper tier of pod entrances on this floor. Fluorescent lights on the ceiling chain all the way down the hallway, inundating the area in a blistering and harsh light. The hard floor below is barely padded with a thin layer of dark grey carpeting on top of concrete.[paragraph break]A ladder nearby leads up onto the steel catwalk. The hallway continues north. Your pod is through the pod door to the east."

[
The brief description of the South Hallway 45th Floor is "A ladder nearby leads up onto a steel catwalk that wraps all the way around the hallway. The hallway continues north. Your pod is through the pod door to the east."
]

[TODO: implement listen descriptions]

[TODO: Need to fix is/are grammar. As written, this would display 'Jule are' for [They] [are] text substitutions]
Jule is an ambiguously plural, plural-named person in the South Hallway 45th Floor. "Jule is standing outside of their pod." The description is "[regarding the noun][They] [are] quite something. [Their] demeanor is calm." The printed plural name is "they".
Jule is not male, not female, and not neuter.

[Initiate open convnode upon entering, Jule/Gillian know that Constance is on her way to her new job. Constance can either engage in conversation or just keep going. If Constance leaves before talking, have them say something to the effect of "busy day ahead of you, eh? well, catch you later!" Something like that.]

Gillian is a woman in the South Hallway 45th Floor.

A baby is a kind of person. A baby can be portable. A baby is usually portable.
Eternity is a baby in the South Hallway 45th Floor. Eternity is male, not female, and not neuter.

The fluorescent lights are scenery in the South Hallway 45th Floor. [strain]

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
	say "'Constance? Widd here.'"

Response for act-1-widd-node when asked about where to go:
	say "Widd answers, 'You need to go to the farm compound.'".

node-termination for act-1-widd-node when saying goodbye to Widd:
	say "[leavenode]You sign off by saying, 'Bye.' Widd replies, 'See you at the farm compound.'";
	try pressing an end button;

Volume 2 - Act I - The Apprenticeship

Book 1 - Pod

Act I is a scene. Act I begins when play begins.

Check going during Act I:
	[At the beginning of the game, Constance needs to answer Widd's call]
	if the Pod encloses the player and the comms device is ringing:
		[TODO: what about if the comms device is ringing and buzzing?]
		say "You start to head out, but then you feel awkward leaving the ringing comms device unanswered." instead;

Volume 3 - Debugging space and unfinished ideas

[
Every turn:
	let N be the count-of-unread-messages of the comms device;
	showme N.
	[let T be act-1-answered-call;
	showme T;]
]

[Act I: Pod]

test list-msg with "list messages / list msgs / check messages / check msgs / list messages from comms device / put comms on table / list msgs".
test list-bad with "list messages from journal".
test read-msg with "read msg 1 / read message 1 / read msg 1 from comms / read message 1 from comms".
test read-bad with "read msg 10 / read msg from journal".
test comms-bad with "take comms / drop comms / throw comms at door / insert comms into door".
test pod-answering with "answer comms / ask about where to go / bye".
test hang-up with "push mentor / a where to go / hang up".
test after-bye-bad with "push end / answer call / call widd / push end / push mentor / ask about where to go / goodbye".

test a1-pod-happy with "test list-msg / test read-msg / test pod-answering / test hang-up / w".
test a1-pod-full with "w / test list-msg / test list-bad / test read-msg / test read-bad / test comms-bad / test pod-answering / test hang-up / test after-bye-bad / w".