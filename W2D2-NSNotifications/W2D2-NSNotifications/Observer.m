//
//  Observer.m
//  W2D2-NSNotifications
//
//  Created by Tim Mitra on 6/18/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import "Observer.h"

@implementation Observer

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
  
  NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
  NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
  NSLog(@"Observed %@ of %@ was chenged from %@ to %@", keyPath, object, oldValue, newValue);
}


@end

