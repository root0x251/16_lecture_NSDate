//
//  Obj.m
//  16_lecture_NSSate
//
//  Created by Slava on 22.03.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "Obj.h"

@implementation Obj

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Obj is initialiazed");
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTest:) userInfo:nil repeats:YES];
        [timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:5]];    // отстрочим начало таймена на 5 сек
    }
    return self;
}

// таймер
- (void) timerTest: (NSTimer *) timer {
    NSDateFormatter *dateFormatterTimer = [NSDateFormatter new];
    [dateFormatterTimer setDateFormat:@"HH:mm:ss:SSSS"];
    NSLog(@"NSDateFormatterLongStyle - %@", [dateFormatterTimer stringFromDate:[NSDate date]]);
    
    // уничтожаем таймер
//    [timer invalidate];
}


- (void) dealloc {
    NSLog(@"Obj is deallocated");
}

@end
