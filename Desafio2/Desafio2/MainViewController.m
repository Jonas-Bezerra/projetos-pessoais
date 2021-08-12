//
//  MainViewController.m
//  Desafio2
//
//  Created by Jonas Junior on 09/08/21.
//

#import "MainViewController.h"
#import "TableViewController.h"

@interface MainViewController ()


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void) createAlert:(NSString * ) title :(NSString * ) msg :(NSString *) btnOne :(NSString *)btnTwo{
    UIAlertController* alert = [UIAlertController
                                alertControllerWithTitle:title
                                message: msg
                                preferredStyle:UIAlertControllerStyleAlert];
     
    UIAlertAction* btnOneAction = [UIAlertAction actionWithTitle:btnOne style:UIAlertActionStyleDestructive handler:^(UIAlertAction * action) {NSLog(@"btnOne foi pressionado.");}];
    
    UIAlertAction* btnTwoAction = [UIAlertAction actionWithTitle:btnTwo style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {NSLog(@"btnTwo foi pressionado.");}];
     
    [alert addAction:btnOneAction];
    [alert addAction:btnTwoAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (IBAction)alertando:(UIButton *)sender {
    NSLog(@"Alertando");
    
    [self createAlert:@"Você pode estar vunerável" :@"Deseja continuar mesmo assim?" :@"Confirmar" :@"Cancelar"];
}

- (IBAction)goinToTable:(UIButton *)sender {
    NSLog(@"Indo para a tabela.");
    
    TableViewController *tvc = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:nil];

        [[self navigationController] pushViewController:tvc animated:YES];
}
@end
