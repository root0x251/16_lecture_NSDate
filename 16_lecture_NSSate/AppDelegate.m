//
//  AppDelegate.m
//  16_lecture_NSSate
//
//  Created by Slava on 21.03.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Obj.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    NSDate *date = [NSDate new];
//    NSLog(@"%@", date);
//    
//    // дата с интервалом + (в секундах)
//    NSLog(@"%@", [date dateByAddingTimeInterval:5000]);
//    NSLog(@"%@", [date dateByAddingTimeInterval:-10000]);
//    
//    // сравнение
//    [date compare:[date dateByAddingTimeInterval:1000]];
//    [date earlierDate:[date dateByAddingTimeInterval:1000]];    // возвращает ту дату, которая больше
//    
//    // дата с 01/01/2001 + 10 секутд
//    NSDate *date2 = [NSDate dateWithTimeIntervalSinceReferenceDate:10];
//    NSLog(@"%@", date2);
//    
//    NSDate *date3 = [NSDate dateWithTimeIntervalSince1970:10];
//    NSLog(@"%@", date3);
    
    
    //
    // форматирование даты
    //
    
    NSDate *date = [NSDate new];
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    
    [dateFormatter setDateStyle:NSDateFormatterNoStyle];
    NSLog(@"NSDateFormatterNoStyle - %@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    NSLog(@"NSDateFormatterShortStyle - %@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSLog(@"NSDateFormatterMediumStyle - %@", [dateFormatter stringFromDate:date]);
   
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    NSLog(@"NSDateFormatterLongStyle - %@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    NSLog(@"NSDateFormatterFullStyle - %@", [dateFormatter stringFromDate:date]);
    
    //
    // делаем свой стиль даты
    //
    
    // DD день в году
    // EEE день недели
    // W неделя года
    // hh.mm а (а - pm/am)
    // SSS милисек
//    [dateFormatter setDateFormat:@"dd.MM(MMMMM, MMM, MMMM).yyyy, EEE, hh.mm a"];   // 22.03(M, Mar, March).2017, Wed,   11.31 AM
    [dateFormatter setDateFormat:@"dd.MM.yyyy hh.mm a"];
    NSLog(@"my style - %@", [dateFormatter stringFromDate:date]);

    // редактируем
    NSDate *date3 = [dateFormatter dateFromString:@"05.06.1992 07.50 a"];   // вопрос - какого хера 03:50:00 +0000 (по гринвичу?)
    NSLog(@"new format - %@", date3);
    
    
    
    
//    NSDate *currentDate = [NSDate new];
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//    NSDateComponents *componetns = [calendar components:NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth |
//                                               NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute |
//                                               NSCalendarUnitSecond | NSCalendarUnitWeekday | NSCalendarUnitWeekdayOrdinal
//                                               fromDate:currentDate];
////    NSLog(@"%@", componetns);
//    NSInteger hours = [componetns hour];
//    NSLog(@"%ld", hours);
    
    //
    // подсчет даты  с определенного времени
    //
    
    NSDate *date1 = [NSDate new];
    NSDate *date2 = [NSDate dateWithTimeIntervalSinceNow:100500];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute
                                               fromDate:date1 toDate:date2 options:0];
    NSLog(@"%@", components);
    
    
    //
    // таймер
    //
    
    
//    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTest:) userInfo:nil repeats:YES]; // вызвать таймер через 1 секуеду

    Obj *object = [Obj new];
    
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
