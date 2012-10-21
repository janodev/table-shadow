
#import "TableVC.h"

@implementation TableVC

@synthesize tableView = _tableView;
@synthesize array = _array;


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.array count];
}

- (UITableViewCell *)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    int row = [indexPath row];
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [self.array objectAtIndex:row];
    
    cell.textLabel.backgroundColor = [UIColor clearColor];
	cell.detailTextLabel.backgroundColor = [UIColor clearColor];
    cell.backgroundView = [[GradientView alloc] initWithFrame:cell.frame];
    
    return cell;
}

#pragma mark - UIViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

-(void) viewDidLoad {
    [super viewDidLoad];
    self.array = [NSArray arrayWithObjects:@"one",@"two",@"three",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",@"x",nil];
}

@end
