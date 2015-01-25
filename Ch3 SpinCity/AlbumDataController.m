//
//  AlbumDataController.m
//  Ch3 SpinCity
//
//  Created by Diana Michelle on 1/24/15.
//  Copyright (c) 2015 DianaMichelle. All rights reserved.
//

#import "AlbumDataController.h"
#import "Album.h"

@interface AlbumDataController ()

	@property (nonatomic, readonly) NSMutableArray *albumList;

	-(void) initializeDefaultAlbums;

@end

@implementation AlbumDataController

-(id) init {
	
	self = [super init];
	
	if(self){
		_albumList = [[NSMutableArray alloc] init];
		[self initializeDefaultAlbums];
		return self;
	}
	return nil;
	
}

-(void) initializeDefaultAlbums{
	
	[self addAlbumWithTitle:@"Infected Splinter" artist:@"Bopin" summary:@"Awesome album with a hint of Oak" price:9.99f locationInStore:@"Section F"];

	[self addAlbumWithTitle:@"Hairy Eyeball" artist:@"Cyclops" summary:@"A 20/20 retrospective on Classic Rock" price:14.99f locationInStore:@"Discount Rack"];
	
	[self addAlbumWithTitle:@"Acid Fog" artist:@"Josh and Chuck" summary:@"You should know this stuff" price:11.99f locationInStore:@"Section 9 3/4"];
	
	
}

- (void) addAlbumWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore {
	
	Album *newAlbum = [[Album alloc] initWithTitle: title artist: artist summary:summary price:price locationInStore:locationInStore];
	[self.albumList addObject:newAlbum];
	
}

- (NSUInteger) albumCount{
	
	return [self.albumList count];
	
}

- (Album *) albumAtIndex:(NSUInteger)index{
	return [self.albumList objectAtIndex:index];
}



@end