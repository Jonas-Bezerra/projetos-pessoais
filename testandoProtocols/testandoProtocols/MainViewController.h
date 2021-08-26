//
//  MainViewController.h
//  testandoProtocols
//
//  Created by Jonas Junior on 19/08/21.
//

#import <UIKit/UIKit.h>
#import "FakeAlertViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController<MyDelegate>

@property (nonatomic, retain) NSString *message;
@property (nonatomic, strong) FakeAlertViewController *fakeAlertViewController;
@property (weak, nonatomic) IBOutlet UITextField *textFiel;

@end

NS_ASSUME_NONNULL_END
