//
//  Album.m
//  Ch3 SpinCity
//
//  Created by Diana Michelle on 1/24/15.
//  Copyright (c) 2015 DianaMichelle. All rights reserved.
//

#import "Album.h"

@implementation Album

- (id)initWithTitle: (NSString *) title
              artist: (NSString *) artist
             summary: (NSString *) summary
               price: (float) price
     locationInStore: (NSString *) locationInStore{
    
    self = [super init];
	
	if (self) {
        
        _title = title;
        _artist = artist;
        _summary = summary;
        _price = price;
        _locationInStore = locationInStore;
        
        return self;
        
    }
    
    return nil;
}


@end
