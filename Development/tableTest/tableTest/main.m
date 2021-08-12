//
//  main.m
//  tableTest
//
//  Created by Jonas Junior on 10/08/21.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

////
////  TableViewController.m
////  Desafio2
////
////  Created by Jonas Junior on 09/08/21.
////
//
//#import "TableViewController.h"
//
//@interface TableViewController ()
//
//@end
//
//@implementation TableViewController {
//    NSArray *figures;
//}
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//   
//    figures = [NSArray arrayWithObjects:@"Happy", @"Sad", @"Angry", @"Seasick", @"Sad", @"Angry", @"Seasick", nil];
//}
//
//
//// O número de linhas da tabela é igual ao número de itens do array
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return [figures count];
//}
//
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    static NSString *simpleTableIdentifier = @"SimpleTableCell";
//
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
//    }
//
//    cell.textLabel.text = [figures objectAtIndex:indexPath.row];
//    return cell;
//}
//
//
//@end
