//
//  CustomCell.h
//  tableTest
//
//  Created by Jonas Junior on 10/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomCell : UITableViewCell
+ (NSString *) reuseIdentifier;
@property (weak, nonatomic) IBOutlet UILabel *labelLeft;
@property (weak, nonatomic) IBOutlet UILabel *labelRight;
@property (weak, nonatomic) IBOutlet UIImageView *viewRight;

@end

NS_ASSUME_NONNULL_END
