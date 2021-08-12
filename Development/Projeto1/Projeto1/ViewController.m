//
//  ViewController.m
//  Projeto1
//
//  Created by Jonas Junior on 06/08/21.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()



@end

@implementation ViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//}
- (IBAction)nextPage:(id)sender {
    NSLog(@"Indo para a próxima página");
    
    NextViewController *nextViewController = [[NextViewController alloc] init];
    
    [self presentViewController:nextViewController
                    animated:YES
                    completion:nil];
}

-(void) AlertComDecisao: (NSString * ) msg {
  UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle: @"Tem certeza?"
                                 message: msg
                                 preferredStyle: UIAlertControllerStyleAlert
                                ];
  UIAlertAction * action = [UIAlertAction
                            actionWithTitle: @"Cancelar"
                            style: UIAlertActionStyleCancel
                            handler: ^ (UIAlertAction * _Nonnull action) {
                            NSLog(@ "Cancelando");
                            }
                           ];
    UIAlertAction * action2 = [UIAlertAction
                              actionWithTitle: @ "Confirmar"
                              style: UIAlertActionStyleDestructive
                              handler: ^ (UIAlertAction * _Nonnull action2) {
                              NSLog(@ "Confirmando");
                              }
                             ];
    [alert addAction: action];
    [alert addAction: action2];
  [self presentViewController: alert animated: true completion: nil];
}

- (IBAction)btnAlert:(id)sender {
    [self AlertComDecisao:@"Se eu fosse você cancelaria!"];
}
@end
