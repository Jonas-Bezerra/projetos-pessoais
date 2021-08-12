//
//  ViewController.h
//  tableTest
//
//  Created by Jonas Junior on 10/08/21.
//

#import <UIKit/UIKit.h>
#import "CustomCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewController : UIViewController
@property (assign, nonatomic) IBOutlet CustomCell *customCell;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
