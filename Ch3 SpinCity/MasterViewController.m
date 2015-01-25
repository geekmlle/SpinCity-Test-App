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
#import "AlbumTableViewCell.h"

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	
    if ([[segue identifier] isEqualToString:@"showAlbumDetails"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
		Album * album = [self.albumDataController albumAtIndex:indexPath.row];
		
		[[segue destinationViewController] setDetailItem:album];
	}
	
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.albumDataController albumCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	AlbumTableViewCell * cell =
	[tableView dequeueReusableCellWithIdentifier:@"AlbumCell" forIndexPath:indexPath];
	
	Album * album = [self.albumDataController albumAtIndex:indexPath.row];
	cell.albumTitleLabel.text = album.title;
	cell.albumSummaryLabel.text = album.summary;
	cell.priceLabel.text = [NSString stringWithFormat:@"$%01.2f", album.price];
	
	return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}



@end
