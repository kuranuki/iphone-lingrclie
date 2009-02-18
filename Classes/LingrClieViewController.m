#import "LingrClieViewController.h"
#import "Lingr.h"

@implementation LingrClieViewController

- (IBAction)login:(id)sender {
	
	[roomTextField resignFirstResponder];
	[passwordTextField resignFirstResponder];
	[nicknameTextField resignFirstResponder];
	
	NSString* room = [roomTextField text];
	NSString* pass = [passwordTextField text];
	NSString* nickname = [nicknameTextField text];
	
	sessionID = [NSString stringWithString:[Lingr createSession]];
	[messageLabel setText:sessionID];

	room_ticket =
	[NSString stringWithString:[Lingr callAPI:@"room/enter"
	inputParameter:[NSString stringWithFormat:@"session=%@&id=%@&password=%@&nickname=%@", sessionID, room, pass, nickname]
		resultPath:@"/response/ticket"]];
	[roomLabel setText:room_ticket];

	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
	[self.view addSubview:chatView];
	[UIView commitAnimations]; 
}

- (IBAction)logout:(id)sender {

	[messageLabel setText:[Lingr destroySession:sessionID]];
	sessionID = nil;
		
	[chatView removeFromSuperview];		
}

- (IBAction)say:(id)sender {
	
	NSString* comment = [commentTextField text];
	NSString* viewText = [saidTextView text];
	NSString* currentTime = [[NSDate date] description];
	
	[Lingr callAPI:@"room/say"
	inputParameter:[NSString stringWithFormat:@"session=%@&ticket=%@&message=%@", sessionID, room_ticket, comment]
		resultPath:@"/response/status"];
	
	[saidTextView setText:[NSString stringWithFormat:@"%@ :\n%@\n%@", currentTime, comment, viewText]];
	
	[commentTextField setText:nil];
	[commentTextField resignFirstResponder];
}

@end
