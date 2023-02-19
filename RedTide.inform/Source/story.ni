"Red Tide" by Josh Parsons

The story headline is "A solemn meditation".

The story description is "This island is all there is, all that is left, all that is known. In this cramped mess of concrete and ingenuity, whatever semblance of normalcy we've scrounged for ourselves balances precariously on a knife's edge.

Red Tide is a parser-based science fiction narrative. A solemn meditation on the limits of endurance."

The story genre is "Science Fiction".

Volume 1 - Preface

Book 1 - Uses and Includes

Use American dialect and the serial comma.

Include Gender Options by Nathanael Nerode.
Include Brief Room Descriptions by Gavin Lambert.
Include Conversation Package by Eric Eve.

Book 2 - Intro, Help, and About

When play begins:
	say "The intro goes here. The help also goes here.[paragraph break]You hear a piercing ring nearby...";
	[The game starts with a call from Widd to retrieve on the comms device.]
	now the comms device is ringing;
	[the comms device act-1-pod-stops-ringing in four turns from now.]
	
[At the time when the comms device act-1-pod-stops-ringing:
	say "Adding a message to the comms device."]

Book 3 - Global properties, rules, and phrases

A thing can be examined or unexamined.
Carry out examining something:
	now the noun is examined.

Check going:
	if the player does not enclose the comms device:
		say "As you leave, you realize that you don[']t have the comms device." instead;

Book 4 - New Actions

[remember to use a thesaurus]

Chapter 1 - Pressing

Pressing is an action applying to one thing and requiring light. Understand "press [something]" as pressing.
Check pressing:
	say "[The noun] [aren't] something that can be pressed." instead.

Chapter 2 - Putting it under

Putting it under is an action applying to two things and requiring light. Understand "put [something] underneath/beneath/under [something]", "push [something] underneath/beneath/under [something]", "place [something] underneath/beneath/under [something]", "set [something] underneath/beneath/under [something]", "position [something] underneath/beneath/under [something]", "drop [something] underneath/beneath/under [something]", and "hide [something] underneath/beneath/under [something]" as putting it under.
Check putting it under:
	say "[The noun] can't be put under the [second noun]." instead.

Chapter 3 - Making

Making is an action applying to one thing and requiring light. Understand "make [something]" as making.
Check making:
	say "[The noun] [aren't] something that can be made." instead.
	
Book 5 - Model World

Part 1 - Regions

Chapter 1 - Tenement

The Tenement is a region.

Part 2 - Objects

Chapter 1 - Comms Device

Section 1 - Actions

Checking messages is an action applying to nothing. Understand "check messages" and "check msgs" as checking messages.
Listing messages is an action applying to nothing. Understand "list messages" and "list msgs" as listing messages.
Listing messages from is an action applying to one thing. Understand "list messages from [something preferably held]" and "list msgs from [something preferably held]" as listing messages from.
Reading it from is an action applying to one number and one visible thing. Understand "read message [a number] from [something preferably held]" and "read msg [a number] from [something preferably held]" as reading it from.
Reading message is an action applying to one number. Understand "read message [a number]" and "read msg [a number]" as reading message.
Answering is an action applying to one visible thing. Understand "answer [something preferably held]" as answering.
		
Section 2 - Object

The comms device is a thing.
The comms device can be either unread or read. The comms device can be either ringing or not-ringing.
The messages button and the mentor button are parts of the comms device.
The comms device has a number called unread-messages. The unread-messages of the comms device is 0.
Understand "message" as the messages button. Understand "mentor" as the mentor button.
The description of the comms device is "Your comms device is a thin, rectangular communications device. It's lightweight and fits comfortably in your hand. There's a small, oval-shaped speaker at the top, a digital display panel below the speaker, and two round buttons at the bottom: one labeled MESSAGES and one labeled MENTOR.[if the comms device is unread][paragraph break]The comms device is currently buzzing and the display panel says, 'Press MESSAGES to list messages.'[end if][if the comms device is ringing][paragraph break]The comms device is currently ringing and the display panel says, 'Press MENTOR to answer call.'[end if]".
Understand "communications", "flat", "thin", "walkie-talkie", "walkie talkie", "lightweight", "digital", "display", "panel", "oval-shaped", "round buttons", "round button", and "speaker" as the comms device.
Understand "buzzing" and "vibrating" as the comms device when the comms device is unread.
Understand "ringing" as the comms device when the comms device is ringing.
Understand "push [comms device]" and "press [comms device]" as a mistake ("[bracket]There are two different buttons on the comms device: the MESSAGES button and the MENTOR button. You can [bold type]push messages[roman type], [bold type]press messages[roman type], [bold type]push mentor[roman type], or [bold type]press mentor[roman type], to push either of these buttons. Alternatively, if you know the message number on the comms device you want to read, you can [bold type]read message #[roman type] or [bold type]read msg #[roman type], replacing [bold type]#[roman type] with the message number.[close bracket]")

Section 3 - Action Processing, Rules, and Phrases

Check dropping when the noun is the comms device:
	say "[comms-device-is-expensive]" instead.

Check throwing it at when the noun is the comms device:
	say "[comms-device-is-expensive]" instead.
	
Check inserting it into when the noun is the comms device:
	say "[comms-device-is-expensive]" instead.

To say comms-device-is-expensive:
	say "Not wanting to unnecessarily damage an expensive piece of equipment integral to your job, you think better of doing that."

Check listing messages from when the noun is not the comms device:
	say "[The noun] [aren't] something you can list messages from." instead.
		
Check reading it from when the second noun is not the comms device:
	say "[The second noun] [aren't] something you can read messages from." instead.
	
[Need to be careful about the ambiguity of "answer" (to a person)]
Check answering when the noun is not the comms device:
	say "Answeing [the noun] does not work." instead.

Before pushing the mentor button:
	if the location of the comms device is the location of the player:
		locate-comms-device;
	otherwise:
		say "You need the comms device in order to talk to your mentor." instead.

Before pushing the messages button:
	if the location of the comms device is the location of the player:
		locate-comms-device;
	otherwise:
		say "You need the comms device in order to list its messages." instead.

Before reading the number understood from the comms device:
	if the location of the comms device is the location of the player:
		locate-comms-device;
	otherwise:
		say "You need the comms device in order to read a message." instead.
		
Before answering the comms device:
	if the location of the comms device is the location of the player:
		locate-comms-device;
	otherwise:
		say "You need the comms device in order to answer it." instead.

[Funnel all message listing to list messages from comms device]
Instead of listing messages or checking messages:
		say "(from the comms device)[paragraph break]";
		try listing messages from the comms device.

Before listing messages from the comms device:
	if the location of the comms device is the location of the player:
		locate-comms-device;
	otherwise:
		say "You need the comms device in order to list its messages." instead.

To locate-comms-device:
	if the player does not enclose the comms device:
		say "(first taking the comms device)[paragraph break]";
		silently try taking the comms device.
	
[Funnel button pressing to pushing]
Instead of pressing the messages button:
	try pushing the messages button.

Instead of pushing the messages button:
	try listing messages from the comms device.

Carry out listing messages from when the noun is the comms device:
	say "You push the MESSAGES button on the [if the comms device is unread]buzzing [end if]comms device. [run paragraph on]";
	count-unread-messages;
	if the unread-messages of the comms device is 0:
		say "The display panel reads: 'No messages.'";
	otherwise:
		say "A summary of its messages appears on the display panel:[paragraph break]";
		repeat through the Table of Comms Device Messages:
			if the is-visible entry is true:
				if the has-read entry is false:
					say "Message #[message-number entry]: [message-subject entry] (unread)[line break]";
				otherwise:
					say "Message #[message-number entry]: [message-subject entry][line break]".

To count-unread-messages:
	now the unread-messages of the comms device is 0;
	repeat through the Table of Comms Device Messages:
		if the has-read entry is false and the is-visible entry is true:
			increase the unread-messages of the comms device by 1;
	if the unread-messages of the comms device is greater than 0:
		now the comms device is unread;
	otherwise:
		now the comms device is read.

[Funnel mentor interactions to pushing the mentor button]
Instead of pressing the mentor button:
	try pushing the mentor button.
	
Instead of answering the comms device:
	try pushing the mentor button.

Instead of reading message when the number understood is a number:
	try reading the number understood from the comms device.
	
Carry out reading it from when the second noun is the comms device:
	if the number of rows in the Table of Comms Device Messages is less than the number understood:
		say "The display display panel shows an error message: 'Message number [number understood] does not exist.'";
	otherwise:
		choose row the number understood in the Table of Comms Device Messages;
		if the is-visible entry is false:
			say "The display display panel shows an error message: 'Message number [number understood] does not exist.'";
		otherwise:
			say "You speak into your comms device, 'Read message [number understood].' An artificially cheery voice from the comms device says, 'Retrieving message [number understood]...'[paragraph break]'[italic type][message-body entry]'[roman type][paragraph break]";
			if the has-read entry is false:
				decrement the unread-messages of the comms device;
				now the has-read entry is true;
				let unread-messages-in-words-in-caps be "[the unread-messages of the comms device in words]" in upper case;
				say "The cheery voice ends by saying, 'You now have [unread-messages-in-words-in-caps] unread message[s].'".

[Every turn:
	[let N be the unread-messages of the comms device;
	showme N.]
	[let T be act-1-answered-call;
	showme T;]]

[what if I have it so that Widd calls but Constance chooses not to pick up, Widd leaves a message...]
[can it be buzzing and ringing at the same time? I guess if I allow a Widd call to drop to a message then, yes.]
[After doing anything other than examining the comms device:
	if the comms device is touchable and the comms device is ringing:
		say "[one of]The comms device is ringing nearby.[or]The comms device rings again, this time even louder than before.[or]The comms device continues to ring and it seems like it[']s not going to stop.[stopping]";
	if the comms device is touchable and the comms device is unread:
		say "You hear the buzzing of the comms device.";]

Rule for printing the name of the comms device:
	if the comms device is visible:
		[can it be buzzing and ringing at the same time?]
		if the comms device is unread and the comms device is ringing:
			say "[printed name of the comms device] (which is currently buzzing and ringing at the same time)[run paragraph on]";
		otherwise if the comms device is unread:
			say "[printed name of the comms device] (which is currently buzzing)[run paragraph on]";
		otherwise if the comms device is ringing:
			say "[printed name of the comms device] (which is currently ringing)[run paragraph on]";
		otherwise:
			say "[printed name of the comms device][run paragraph on]".
			
After taking the comms device for the first time:
	if the comms device is unexamined:
		try examining the comms device;
		
After pushing the mentor button:
	say "You push the MENTOR button on the [if the comms device is ringing]ringing [end if]comms device to answer the call[run paragraph on]";
	if the comms device is ringing:
		[Can I do this without moving Widd? Look into Example 226, Four Cheeses]
		move Widd to the location of the player;
		try saying hello to Widd;
	otherwise:
		say ", but Widd is not available to talk right now."

Section 4 - Messages on Comms Device

[TODO: need to include a help guide for listing/reading it]
Table of Comms Device Messages
has-read	is-visible	message-number	message-subject	message-body
false	false	"1"	"Welcome"	“Constance, welcome to the team. I just, er, wanted to say hello. Making sure your device works. Look forward to seeing you at the compound and showing you the ropes.”
false	false	"2"	"URGENT"	“This is an urgent message.”
false	false	"3"	"Need help"	“Hey, I need help.”
false	false	"4"	"Instructions"	“I need you to go do this then go do that.”

Chapter 2 - Journal

The journal is a thing.

Part 3 - People

Understand the printed name property as describing a person.

Chapter 1 - Widd

Section 1 - Actions

Section 2 - Object

Widd is a man. The node of Widd is act-1-pod-answer-call-widd-node.

Section 3 - Action Processing, Rules, and Phrases

After saying hello to Widd:
	now the comms device is not-ringing;
	say ", then speak into the comms device, 'Hello?'[paragraph break][italic type]'Constance! Widd here!'[roman type] a husky voice through the speaker exclaims. [italic type]'Ready for your first day?'[roman type][paragraph break]";

Section 4 - Conversations

where to go is a familiar thing.
act-1-pod-answer-call-widd-node is a closed convnode.
the ask-suggestions are { where to go }.

Response for act-1-pod-answer-call-widd-node when asked about where to go:
	say "Widd answers, 'You need to go to the farm compound.'".
		
node-termination for act-1-pod-answer-call-widd-node when saying goodbye to Widd:
	say "[leavenode]You sign off by saying, 'Bye.' Widd replies, 'See you at the farm compound.'";
	now Widd is nowhere;

Part 4 - Rooms

Chapter 1 - Pod

Section 1 - Objects

The Pod is a room in the Tenement. The description is "Your pod is a spartan and austere dwelling, which provides you basic shelter and limited amenities. This claustrophobic box of a room spans wider from east to west than north to south, with an uncomfortably low ceiling encroaching overhead. The walls of the room are thin, depressingly drab, and unadorned.[paragraph break]A small bed is tightly nestled along the eastern wall. In the center of the room, a [wooden table] and a wooden chair sit paired together[list-wooden-table-stuff]. A shadeless, electric light attached to the end of a chain dangles annoyingly close to the table from the low ceiling.[paragraph break]A pod door to the west leads out into the hallway."

The brief description of the Pod is "A small bed is nestled along the eastern wall. A [wooden table] and a wooden chair are in the center of the room[list-wooden-table-stuff]. A shadeless, electric light hangs from the ceiling over the wooden table.[paragraph break]A pod door to the west leads out into the hallway."

Constance is a woman in the Pod. The player is Constance.

The uncomfortably low ceiling is scenery in the Pod.

The thin walls are scenery in the Pod. The description is "The walls are so narrow in your pod, you can touch the north and south walls simultaneously with your outstretched arms. All of the walls are painted in a dull taupe, bear no decorations, and flecks of its paint are clearly chipping off." Understand "thin", "narrow", "wall", "north wall", "south wall", "drab", "unadorned", "dull", "taupe", "narrow", "fleck", and "flecks" as the thin walls. 

[listen]

The small bed is an enterable scenery supporter in the Pod. The description is "A small, standard-issue bed, snugly nestled on the eastern end of the room. So snugly that it would probably scrape the walls if it had to be pulled out. Thin sheets lie on top of a firm mattress, slightly crumpled and unmade." Understand "east wall", "eastern wall", "standard-issued", "standard", "issued", "nestled", "bed frame", "bedframe", "crumpled", "sheet", "thin sheet", "sheets", "thin sheets", "firm", and "mattress" as the small bed.

The journal is on the wooden table.

The comms device is on the wooden table.

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

To say move-small-bed-text:
	say "You briefly consider moving the bed, but you'd rather not unnecessarily scrape the walls. You're pretty sure there isn't anything hidden behind the bed anyway."

To say list-wooden-table-stuff:
	let L be the list of visible things on the wooden table;
	if the number of entries in L > 0:
		say ". On the wooden table you can see [a list of visible things on the wooden table]".

Before listing nondescript items of the Pod:
	if the wooden chair is marked for listing:
		now the wooden chair is not marked for listing;
	if the pod door is marked for listing:
		now the pod door is not marked for listing.
		
Chapter 2 - South Hallway 45th Floor

Section 1 - Objects

The South Hallway 45th Floor is a room in the Tenement. The description is "Outside of your assigned pod, at the southern end of the 45th floor hallway of the tenement, dozens of squatty pod entrances stacked two-high extend down both sides of the long hallway. A steel catwalk wraps around the hallway, allowing residents to access the upper tier of pod entrances on this floor. Fluorescent lights on the ceiling chain all the way down the hallway, inundating the area in a blistering and harsh light. The hard floor below is barely padded with a thin layer of dark grey carpeting on top of concrete.[paragraph break]A ladder nearby leads up onto the steel catwalk. The hallway continues north. Your pod is through the pod door to the east."

The brief description of the South Hallway 45th Floor is "A ladder nearby leads up onto a steel catwalk that wraps all the way around the hallway. The hallway continues north. Your pod is through the pod door to the east."

[listen]

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

Section 1 - Objects

The South Hallway 45th Floor Upper Tier is a room in the Tenement.

Kai is a man in the South Hallway 45th Floor Upper Tier.

Chapter 4 - Central Hallway 45th Floor

Section 1 - Objects

Central Hallway 45th Floor is a room in the Tenement. Central Hallway 45h Floor is north of South Hallway 45th Floor.

Volume 2 - Act I - The Apprenticeship

Book 1 - Pod

Check going from the Pod:
	[Constance needs to answer Widd's call and be holding the comms device (global rule) to leave]
	otherwise if the comms device is ringing:
		say "You reach for the pod door to leave, but you should answer the call that's coming in." instead.

Volume 3 - Debugging Space

[Act I: Pod]
[test act-1-comms-device with "w / list messages from comms device / read message 1 / read message 1 from comms device / e / list messages / check messages / drop / list messages from comms device / drop comms device / read message 1 / read msg 1 / drop comms device / read message 3 from comms device / list messages from journal / read message journal / read message journal from journal / read message 3 from journal / read msg 3 from journal / read message 4 / read message 6 / list messages from comms device"]

test act-1-widd-conversation with "answer comms device / a where to go / goodbye / drop comms device / put comms device on table / w / pick up comms device / w"