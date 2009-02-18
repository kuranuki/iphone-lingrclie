#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface LingrClieViewController : UIViewController {
	
	NSString* sessionID;
	NSString* room_ticket;

    IBOutlet UIView *chatView;

	IBOutlet UITextField* roomTextField;
	IBOutlet UITextField* passwordTextField;
	IBOutlet UITextField* nicknameTextField;
	IBOutlet UILabel* messageLabel;
	IBOutlet UILabel* roomLabel;
	
	IBOutlet UITextField* commentTextField;
	IBOutlet UITextView* saidTextView;
}

- (IBAction)login:(id)sender;
- (IBAction)logout:(id)sender;

- (IBAction)say:(id)sender;

@end
