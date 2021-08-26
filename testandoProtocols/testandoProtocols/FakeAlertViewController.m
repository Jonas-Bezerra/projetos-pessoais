//
//  FakeAlertViewController.m
//  testandoProtocols
//
//  Created by Jonas Junior on 19/08/21.
//

#import "FakeAlertViewController.h"

@interface FakeAlertViewController ()
@end

@implementation FakeAlertViewController

@synthesize labelMessage;
@synthesize myDelegate;

- (void)viewDidLoad {

    [super viewDidLoad];
    
    labelMessage.text = [myDelegate getMessageString];
    
//    _appDalegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
//    UIColor *colorTransparant = [UIColor blackColor];
//    colorTransparant = [colorTransparant colorWithAlphaComponent:0.0f];
//
//
//      [self.view setBackgroundColor:colorTransparant];
}


- (IBAction)protocolBtn2:(UIButton *)sender {
        [myDelegate yellowColor];
}

- (IBAction)protocolBtn1:(UIButton *)sender {
        [myDelegate blueColor];
}

- (IBAction)prottocolBtn3:(UIButton *)sender {
        [myDelegate redColor];
}


//-(void) openAlert:(MainViewController *) dialog{
//    mainViewController = dialog;
//    
//    UIColor *colorAlpha = [UIColor blackColor];
//    colorAlpha = [colorAlpha colorWithAlphaComponent:0.5f];
//    
//    UIColor *colorTransparant = [UIColor blackColor];
//    colorTransparant = [colorTransparant colorWithAlphaComponent:0.0f];
//    
//    [self.view setFrame: _appDalegate.window.bounds];
//    [self.view setBackgroundColor:colorTransparant];
//    [self.view setContentScaleFactor: 0.6f];
//    [_appDalegate.window addSubview: self.view];
//
//    [UIView animateWithDuration: 0.3f animations: ^{
//       [self.view setBackgroundColor:colorAlpha];
//       [self.view setContentScaleFactor: 1.0f];
//   }];
//}




@end
