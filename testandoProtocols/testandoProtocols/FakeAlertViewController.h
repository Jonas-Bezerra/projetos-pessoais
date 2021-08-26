//
//  FakeAlertViewController.h
//  testandoProtocols
//
//  Created by Jonas Junior on 19/08/21.
//

#import <UIKit/UIKit.h>
@protocol MyDelegate <NSObject>

-(NSString *) getMessageString;
-(void)redColor;
-(void)yellowColor;
-(void)blueColor;
@end


NS_ASSUME_NONNULL_BEGIN


@interface FakeAlertViewController : UIViewController

@property (nonatomic, retain) id <MyDelegate> myDelegate;
@property (weak, nonatomic) IBOutlet UILabel *labelMessage;

- (IBAction)prottocolBtn3:(UIButton *)sender;
- (IBAction)protocolBtn2:(UIButton *)sender;
- (IBAction)protocolBtn1:(UIButton *)sender;


@end

NS_ASSUME_NONNULL_END
