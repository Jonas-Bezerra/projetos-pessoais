//
//  TableViewController.m
//  explorando-conhecimentos
//
//  Created by Jonas Junior on 12/08/21.
//

#import "TableViewController.h"
#import "TableViewCell.h"

@interface TableViewController () {
    NSArray *pokemonsArray;
    NSArray *nameImageArray;
    NSArray *idPokemon;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    pokemonsArray = [[NSArray alloc] initWithObjects:@"Bulbasaur", @"Ivysaur",@"Venusaur",@"Charmander",@"Charmeleon",@"Charizard",@"Squirtle",@"Wartortle",@"Blastoise", nil];
    nameImageArray = [[NSArray alloc] initWithObjects:@"bulbasaur",@"Ivysaur",@"venusaur",@"charmander",@"Charmeleon",@"charizard",@"squirtle",@"wartortle",@"blastoise2", nil];
    idPokemon = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [pokemonsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    if (!cell) {
        [tableView registerNib: [UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    }
    
    cell.labelCell.text = [pokemonsArray objectAtIndex:indexPath.row];
    cell.countLabel.text = [idPokemon objectAtIndex:indexPath.row];
    [cell.imageCell setImage: [UIImage imageNamed: [NSString stringWithFormat:@"%@.png", [nameImageArray objectAtIndex:indexPath.row]]]];
    
    return cell;
}






@end
