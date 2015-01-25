//
//  MasterViewController.m
//  Ch3 SpinCity
//
//  Created by Diana Michelle on 1/24/15.
//  Copyright (c) 2015 DianaMichelle. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Album.h"
#import "AlbumDataController.h"

@interface MasterViewController ()

@property (nonatomic,strong) AlbumDataController *albumDataController;

@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
	self.albumDataController = [[AlbumDataController alloc] init];
	
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Segues

/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
			NSDate *object = self.objects[indexPath.row];
			[[segue destinationViewController] setDetailItem:object];
    }
}*/

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.albumDataController albumCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"AlbumCell" forIndexPath:indexPath];
	Album * album = [self.albumDataController albumAtIndex:indexPath.row];
    cell.textLabel.text = album.title;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}



@end
