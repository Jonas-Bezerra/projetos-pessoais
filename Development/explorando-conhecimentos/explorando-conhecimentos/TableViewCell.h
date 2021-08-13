//
//  TableViewCell.h
//  explorando-conhecimentos
//
//  Created by Jonas Junior on 12/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelCell;
@property (weak, nonatomic) IBOutlet UIImageView *imageCell;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@end

NS_ASSUME_NONNULL_END
