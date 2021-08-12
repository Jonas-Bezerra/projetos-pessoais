//
//  ViewController.m
//  tableTest
//
//  Created by Jonas Junior on 10/08/21.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController
//@synthesize tableView = _tableView;
//@synthesize customCell = _customCell;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
     
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:[CustomCell reuseIdentifier]];
    if (cell == nil) {
        [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = _customCell;
        _customCell = nil;
    }
     
    cell.labelLeft.text = @"I am labelL";
    cell.labelRight.text = @"and I'm on the bottom";
     
    return cell;
}



@end
