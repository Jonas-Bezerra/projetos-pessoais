//
//  TesteViewController.m
//  testandoProtocols
//
//  Created by Jonas Junior on 20/08/21.
//

#import "TesteViewController.h"
#import "MainViewController.h"

@interface TesteViewController ()

@end

@implementation TesteViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)btnTeste:(UIButton *)sender {
    NSLog(@"teste");
}

-(void) openAlert:(MainViewController *) dialog{
    _mainViewController = dialog;
    
    UIColor *colorAlpha = [UIColor blackColor];
    colorAlpha = [colorAlpha colorWithAlphaComponent:0.5f];
    
    UIColor *colorTransparant = [UIColor blackColor];
    colorTransparant = [colorTransparant colorWithAlphaComponent:0.0f];
    
    [self.view setFrame: _mainViewController.view.window.bounds];
    [self.view setBackgroundColor:colorTransparant];
    [self.view setContentScaleFactor: 0.6f];
    [_mainViewController.view.window addSubview: self.view];

    [UIView animateWithDuration: 0.3f animations: ^{
       [self.view setBackgroundColor:colorAlpha];
       [self.view setContentScaleFactor: 1.0f];
   }];
}


@end
