//
//  Logger.m
//  W2D2-NSNotifications
//
//  Created by Tim Mitra on 6/18/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)updateLastTime:(NSTimer *)t {
  
  NSDate *now = [NSDate date];
  [self setLastTime:now];
  //NSLog(@"Just set time to %@", self.lastTimeString);
  
}

- (NSString *)lastTimeString {
  
  static NSDateFormatter *dateFormatter = nil;
  if (!dateFormatter) {
    dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSLog(@"created dateFormatter");
  }
  return [dateFormatter stringFromDate:self.lastTime];
}

- (void)zoneChange:(NSNotification *)note {
  
  NSLog(@"timiezone was changed.");
}


@end









//- (void)zoneChange:(NSNotification *)note {
//  
//  NSLog(@"The system time zone has changed");
//}
