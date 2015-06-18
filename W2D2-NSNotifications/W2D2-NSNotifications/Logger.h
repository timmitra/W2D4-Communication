//
//  Logger.h
//  W2D2-NSNotifications
//
//  Created by Tim Mitra on 6/18/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject

@property (nonatomic) NSDate *lastTime;

- (void)updateLastTime:(NSTimer *)t;

// regiter the notifcation
- (void)zoneChange:(NSNotification *)note;

@end



