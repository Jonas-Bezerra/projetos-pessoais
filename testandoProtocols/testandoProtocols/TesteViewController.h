//
//  TesteViewController.h
//  testandoProtocols
//
//  Created by Jonas Junior on 20/08/21.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TesteViewController : UIViewController
@property (nonatomic, retain) MainViewController *mainViewController;
-(void) openAlert:(MainViewController *) dialog;
@end

NS_ASSUME_NONNULL_END
