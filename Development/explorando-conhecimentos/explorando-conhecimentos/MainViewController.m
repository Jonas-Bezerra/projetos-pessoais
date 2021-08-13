//
//  MainViewController.m
//  explorando-conhecimentos
//
//  Created by Jonas Junior on 12/08/21.
//

#import "MainViewController.h"
#import "TableViewController.h"
#import "ModalViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}



- (IBAction)goingToTable:(UIButton *)sender {
    TableViewController *tvc = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:nil];

        [[self navigationController] pushViewController:tvc animated:YES];
}

- (IBAction)openModal:(UIButton *)sender {
    ModalViewController *mvc = [[ModalViewController alloc] init];
    
    [self presentViewController:mvc
                    animated:YES
                    completion:nil];
}
@end
