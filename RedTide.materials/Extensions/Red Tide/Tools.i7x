Tools by Red Tide begins here.

Use authorial modesty.

Volume 1 - Core Mechanics

Book 1 - Tools

Chapter 1 - The Comms-Device

Section 1 - Properties

[should this have a tunable frequency?]
A comms-device is a kind of thing. A comms-device can be either unread or read. A comms-device can be either ringing or not-ringing. A comms-device has a number called the count-of-unread-messages. A comms-device has a number called the rings-until-voicemail.

Understand "communications" and "device" and "communications device" and "walkie-talkie" and "walkie talkie" as a comms-device.
Understand "buzzing" and "vibrating" as a comms-device when a comms-device is unread.
Understand "ringing" as a comms-device when a comms-device is ringing.
Understand "push [comms-device]" and "press [comms-device]" as a mistake ("[bracket]There are three different buttons on the comms device: the MESSAGES button, the CALL button, and the END button. You can [bold type]press messages[roman type], [bold type]press call[roman type], or [bold type]press end[roman type], to press these buttons, respectively. Alternatively, if you know the message number on the comms device you want to read, you can [bold type]read message #[roman type] or [bold type]read msg #[roman type], replacing [bold type]#[roman type] with the message number.[close bracket]")

Section 2 - Connecting to or calling another person

[From Example 226 - Four Cheeses. The comms device will basically be like a mobile phone, but will operate more like a walkie-talkie when connecting to someone.]
Connection relates one thing to another (called the other party). The verb to reach means the connection relation.

After deciding the scope of the player while the player reaches someone:
	place the other party of the player in scope, but not its contents.

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

Calling it by name on is an action applying to one visible thing and one thing. Understand "call [any known person]" and "call [any known person] on [something preferably held]" as calling it by name on.

Check calling it by name on:
	if the second noun is not a comms-device:
		say "[The second noun] cannot be used to make calls." instead;
	otherwise if the noun is in the location:
		say "[The noun] [are] right here." instead;
	[otherwise if the noun is not Widd:]
	otherwise if the noun does not enclose a comms-device:
		say "[The noun] cannot be called with the comms device." instead.

[Need to be careful about the unintended confusion of "answering" a person]
Answering on is an action applying to one thing and requiring light. Understand "answer on [something preferably held]" and "answer call on [something preferably held]" and "answer [something preferably held]" and "answer call" as answering on.

Check answering on when the noun is not a comms-device:
	say "Answering on [the noun] does not work." instead.

Instead of answering on the comms device:
	[need to be really careful if there are multiple comms devices the player can touch]
	let the current-comms-device be a random comms-device which can be touched by the player;
	if the current-comms-device is ringing:
		try pressing a call button;
	otherwise:
		say "The comms device is not currently ringing, so there is no call to answer."

[what happens if there are two comms devices that can be touched? Might need to be really strict about what comms devices can be picked up.]

Rule for supplying a missing noun while hanging up:
	if the player can touch a comms-device (called the current-comms-device):
		say "([the current-comms-device])[command clarification break]";
		now the noun is the current-comms-device;
	otherwise:
		say "You need a comms device in order to hang up."
		
Rule for supplying a missing second noun while calling someone by name on:
	if the player can touch a comms-device (called the current-comms-device):
		say "(on [the current-comms-device])[command clarification break]";
		now the second noun is the current-comms-device;
	otherwise:
		say "You don't have a comms device handy to call someone."

Rule for supplying a missing noun while answering on:
	if the player can touch a comms-device (called the current-comms-device):
		say "(on [the current-comms-device])[command clarification break]";
		now the noun is the current-comms-device;
	otherwise:
		say "You don't have a comms device handy to answer."

Section 3 - Button interactions

A button is a kind of thing.
[might need to call it a call/answer button]
A messages button, a call button, and an end button are buttons. A messages button, a call button, and an end button are parts of the comms device.

Understand "message" as the messages button.
The printed name of a messages button is "MESSAGES button". The printed name of a call button is "CALL button". The printed name of an end button is "END button".

Pressing is an action applying to one visible thing. Understand "press [something preferably held]" as pressing.

Instead of pushing a button (called the target-button):
	try pressing the target-button;

Before pressing a button when the player does not enclose a comms-device:
	if the player can touch a comms-device (called the current-comms-device):
		say "(first taking [the current-comms-device])[command clarification break]";
		silently try taking the current-comms-device;
	otherwise:
		say "You don't have a comms device handy."

Check pressing when the noun is not a button:
	say "[The noun] [aren't] something that can be pressed." instead.

Check pressing an end button when the player does not reach someone:
	say "You're not on the line with anyone, so pressing the END button will do nothing." instead.

Check pressing a call button when the player reaches someone:
	say "You are already connected to [the other party of the player], so the CALL button will do nothing." instead;

Carry out pressing a button (called the target-button):
	let the current-comms-device be a random comms-device which can be touched by the player;
	say "You press [the target-button][run paragraph on]";
	[end]
	if the target-button is an end button:
		say ". You hear a click on the comms device and the call ends.";
		now the player does not reach anyone;
	otherwise if the target-button is a call button:
		[call]
		if the current-comms-device is not-ringing:
			[don't like hardcoding Widd here]
			if the player does not reach Widd:
				if the player reaches someone:
					[assuming Constance can call other people]
					say ", and you tell [the other party of the player] that you need to call someone else, 'Gotta go, need to call someone else.'";
					now the player does not reach anyone;
				if Widd is not seen:
					now Widd is seen;
				say " and connect your call.[no line break]";
				now the player reaches Widd;
				if Act I is happening:
					Initiate a conversation with Widd at act-1-widd-node;
		[answer]
		otherwise:
			if the current-comms-device is not-ringing:
				say ", but [the current-comms-device] is not currently ringing so there is nothing to answer." instead;
			otherwise:
				if the player does not reach anyone:
					if Widd is not seen:
						now Widd is seen;
					say " and then speak into the comms device, 'Hello?'[no line break]";
					now the player reaches Widd; [Could somebody else call Constance?]
					if the current-comms-device is ringing:
						now the current-comms-device is not-ringing;
					if Act I is happening:
						Initiate a conversation with Widd at act-1-widd-node;
	[messages]
	otherwise if the target-button is a messages button:
		count-unread-messages;
		if the count-of-unread-messages of the comms device is 0:
			say ".[paragraph break]The display panel on [the current-comms-device] reads:[line break][fixed letter spacing]  No messages.[variable letter spacing][line break]";
		otherwise:
			say ".[paragraph break]The display panel shows a list of messages on [the current-comms-device] with further instructions:[line break][fixed letter spacing][run paragraph on]";
			repeat with N running from 1 to the number of rows in the Table of Comms Device Messages:
				choose row N from the Table of Comms Device Messages;
				if there is a message-subject entry and the is-visible entry is true:
					if the has-read in row N of the Table of Comms Device Messages is false:
						say "  Message [N]: [message-subject entry] (unread)[line break]";
					otherwise:
						say "  Message [N]: [message-subject entry][line break]";
			say "  Speak the command 'READ MESSAGE #' to read a message. Substitute # with message number.[variable letter spacing]";


[TODO: implement 'hang it up', 'hang up' on nothing, 'end call']
Hanging up is an action applying to one visible thing. Understand "hang up [something preferably held]" and "hang up" as hanging up.

Instead of hanging up:
	try pressing an end button.

Section 4 - Recorded messages

Table of Comms Device Messages
has-read (a truth state)	is-visible (a truth state)	message-subject (some text)	message-body (some text)
with 10 blank rows

To record (new-message-subject - text) and (new-message-body - text) in (target-table - table name):
	choose a blank row in the target-table;
	now the has-read entry is false;
	now the is-visible entry is true;
	now the message-subject entry is new-message-subject;
	now the message-body entry is new-message-body;
	
To count-unread-messages:
	now the count-of-unread-messages of the comms device is 0;
	repeat through the Table of Comms Device Messages:
		if the has-read entry is false and the is-visible entry is true:
			increment the count-of-unread-messages of the comms device;
	if the count-of-unread-messages of the comms device is greater than 0:
		now the comms device is unread;
	otherwise:
		now the comms device is read.
		
Reading it from is an action applying to one number and one visible thing.
Understand "read message [a number] from [something preferably held]" as reading it from.
Understand "read msg [a number] from [something preferably held]" as reading it from.
Understand "read message [a number]" as reading it from.
Understand "read msg [a number]" as reading it from.

Before reading a number from a comms-device when the player does not enclose a comms-device:
	if the player can touch a comms-device (called the current-comms-device):
		say "(first taking [the current-comms-device])[command clarification break]";
		silently try taking the current-comms-device;
	otherwise:
		say "You don't have a comms device handy."

Check reading it from when the second noun is not a comms-device:
	say "[The second noun] [aren't] something you can read messages from." instead.

Carry out reading it from when the second noun is a comms-device:
	if the number of filled rows in the Table of Comms Device Messages is less than the number understood:
		say "You speak into the comms device, 'Read message [number understood].' But the display panel shows an error message:[line break][fixed letter spacing]  Message number [number understood] does not exist.[variable letter spacing][paragraph break]";
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
				say "The cheery voice ends by saying, [italic type]'You now have [unread-messages-in-words-in-caps] unread message[s].'[roman type]".

Message reading is an action applying to nothing. Understand "read message" and "read messages" and "read msg" and "read msgs" and "list message" and "list messages" as message reading.

Instead of message reading:
	say "(No specific message number specified. Will now try to list all messages from the comms device.)[command clarification break]";
	try pressing a messages button.
	
Listing messages from is an action applying to one visible thing.
Understand "list messages from [something preferably held]" and "list msgs from [something preferably held]" and "check messages from [something preferably held]" and "check msgs from [something preferably held]" and "list messages" and "list msgs" and "check messages" and "check msgs" as listing messages from.

Check listing messages from when the noun is not a comms-device:
	say "[The noun] [aren't] something you can list messages from." instead.

Instead of listing messages from the comms device:
	try pressing the messages button instead.

Reading messages from is an action applying to one visible thing. Understand "read message from [something preferably held]" and "read messages from [something preferably held]" and "read msg from [something preferably held]" and "read msgs from [something preferably held]" and "list message from [something preferably held]" and "list messages from [something preferably held]" as reading messages from.

Check reading messages from when the noun is not a comms-device:
	say "[The noun] [aren't] something you can read or list messages from." instead.

Instead of reading messages from a comms device:
	say "(No specific message number specified. Will now try to list all messages from the comms device.)[command clarification break]";
	try pressing a messages button.

Rule for supplying a missing noun while listing messages from:
	if the player can touch a comms-device (called the current-comms-device):
		say "(from [the current-comms-device])[command clarification break]";
		now the noun is the current-comms-device;
	otherwise:
		say "You don't have a comms device handy to list messages from."

Rule for supplying a missing second noun while reading a number from:
	if the player can touch a comms-device (called the current-comms-device):
		say "(from [the current-comms-device])[command clarification break]";
		now the second noun is the current-comms-device;
	otherwise:
		say "You don't have a comms device handy to read a message from."

Section 5 - Behavioral rules

Before printing the locale description of a room (called the locale):
	if the locale encloses the comms device:
		say note-comms-device-state;

Print-comms-device-buzzing is a number that varies. Print-comms-device-buzzing is 3.

To say note-comms-device-state:
	if the comms device is ringing and the comms device is unread:
		say "The comms device is ringing and buzzing simultaneously, generating a cacophony of dissonant sounds[if the player encloses the comms device] and buzzing sensations throughout your body[end if].";
	otherwise if the comms device is ringing:
		say "[one of]You hear the ringing jingle of the comms device.[or]The comms device rings again, seemingly louder than the first time.[or]The comms device continues to ring.[stopping]";
	otherwise if the comms device is unread:
		decrease print-comms-device-buzzing by 1;
		if the print-comms-device-buzzing is 0:
			say "[one of]The comms device buzzes[if the player encloses the comms device], which sends a sharp tingle throughout your body in the process[end if].[or]The comms device buzzes once again[if the player encloses the comms device], sending another buzz coursing through your body as you carry the device[end if].[or]The comms device continues buzzing.[stopping]";
			now the print-comms-device-buzzing is 3.

Tools ends here.