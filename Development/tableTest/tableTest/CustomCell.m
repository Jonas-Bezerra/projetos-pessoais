//
//  CustomCell.m
//  tableTest
//
//  Created by Jonas Junior on 10/08/21.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+ (NSString *)reuseIdentifier {
    return @"CustomCellIdentifier";
}
@end
