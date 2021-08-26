//
//  MainViewController.m
//  testandoProtocols
//
//  Created by Jonas Junior on 19/08/21.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize message;
@synthesize fakeAlertViewController;
@synthesize textFiel;

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (IBAction)btnAlerta:(UIButton *)sender {
    message = textFiel.text;
    
   // [ textField resignFirstResponder ]; //volta o teclado quando o botão é clicado
    
    fakeAlertViewController = [[FakeAlertViewController alloc] init];
    
    fakeAlertViewController.myDelegate = self;
    
    [[self navigationController] pushViewController:fakeAlertViewController animated:YES];

    
}

-(void)redColor{
    [self.view setBackgroundColor:UIColor.redColor];
  
}

-(void)yellowColor{
    [self.view setBackgroundColor:UIColor.yellowColor];
   
}

-(void)blueColor{
    [self.view setBackgroundColor:UIColor.blueColor];
   
}

-(NSString *) getMessageString{
    return message;
}

@end
