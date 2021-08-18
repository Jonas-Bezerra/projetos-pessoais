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
    
    pokemonsArray = [[NSArray alloc] initWithObjects:@"Bulbasaur", @"Ivysaur",@"Venusaur",@"Charmander",@"Charmeleon",@"Charizard",@"Squirtle",@"Wartortle",@"Blastoise",@"Squirtle",@"Bulbasaur", @"Ivysaur",@"Venusaur",@"Charmander",@"Charmeleon",@"Charizard",@"Squirtle",@"Wartortle",@"Blastoise",@"Squirtle", nil];
    nameImageArray = [[NSArray alloc] initWithObjects:@"bulbasaur",@"Ivysaur",@"venusaur",@"charmander",@"Charmeleon",@"charizard",@"squirtle",@"wartortle",@"blastoise2",@"squirtle",@"bulbasaur",@"Ivysaur",@"venusaur",@"charmander",@"Charmeleon",@"charizard",@"squirtle",@"wartortle",@"blastoise2",@"squirtle", nil];
    idPokemon = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",nil];
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
    
    if ([[pokemonsArray objectAtIndex:indexPath.row] isEqual:@"Squirtle"]) {
        cell.contentView.backgroundColor = [UIColor colorNamed:@"water"];
    } else {
        cell.contentView.backgroundColor = [UIColor whiteColor];
    }
    
    cell.labelCell.text = [pokemonsArray objectAtIndex:indexPath.row];
    cell.countLabel.text = [idPokemon objectAtIndex:indexPath.row];
    [cell.imageCell setImage: [UIImage imageNamed: [NSString stringWithFormat:@"%@.png", [nameImageArray objectAtIndex:indexPath.row]]]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CGSize constraint = CGSizeMake(152, CGFLOAT_MAX);
    CGSize boundingBox = [[nameImageArray objectAtIndex:indexPath.row] boundingRectWithSize:constraint options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:25.0]}  context:nil].size;
    
    NSLog(@"%f", ceil(boundingBox.height));
    
    if (ceil(boundingBox.height) < 80) {
        return 80;
    } else {
        return ceil(boundingBox.height) + 4;
    }
}

@end
