//
//  AlbumDataController.h
//  Ch3 SpinCity
//
//  Created by Diana Michelle on 1/24/15.
//  Copyright (c) 2015 DianaMichelle. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Album;

@interface AlbumDataController : NSObject

- (NSUInteger) albumCount;

- (Album *) albumAtIndex: (NSUInteger) index;

- (void)addAlbumWithTitle: (NSString *) title
                  artist: (NSString *) artist
                 summary: (NSString *) summary
                   price: (float) price
         locationInStore: (NSString *) locationInStore;


@end
