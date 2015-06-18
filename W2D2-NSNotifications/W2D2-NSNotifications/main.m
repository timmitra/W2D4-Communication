//
//  main.m
//  W2D2-NSNotifications
//
//  Created by Tim Mitra on 6/18/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"
#import "Observer.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    Logger *logger = [[Logger alloc] init];
    
    __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                      target:logger
                                                    selector:@selector(updateLastTime:)
                                                    userInfo:nil
                                                     repeats:YES];
    
    
    [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChange:)
                                                     name:NSSystemTimeZoneDidChangeNotification
                                                   object:nil];

    
        __unused Observer *observer = [[Observer alloc] init];
    
        // I want to know what changed
        [logger addObserver:observer forKeyPath:@"lastTime" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    
    
  // explain runloop
    [[NSRunLoop currentRunLoop] run];
  
  }
    return 0;
}


// 1. // add logger

// #import "Logger.h"
//    Logger *logger = [[Logger alloc] init];

// 2.

// Notifications
//    
//  
//    [[NSNotificationCenter defaultCenter] addObserver:logger
//                                             selector:@selector(zoneChange:)
//                                                 name:NSSystemTimeZoneDidChangeNotification
//                                               object:nil];


// 3. // add Observerclass

//#import "Observer.h"

//   
//    __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
//                                                               target:logger
//                                                             selector:@selector(updateLastTime:)
//                                                             userInfo:nil
//                                                              repeats:YES];
//    
//    __unused Observer *observer = [[Observer alloc] init];
//    
//    // I want to know what changed
//    [logger addObserver:observer forKeyPath:@"lastTime" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];

