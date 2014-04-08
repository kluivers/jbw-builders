//
//  NSDate+JBWBuilders.m
//  Builders
//
//  Created by Joris Kluivers on 08/04/14.
//
//

#import "NSDate+JBWBuilders.h"

@implementation NSDate (JBWBuilders)

+ (instancetype) gregorianDateWithBuilderBlock:(void (^)(NSDateComponents *))builderBlock
{
    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    
    return [self dateWithBuilderBlock:builderBlock calendar:calendar];
}

+ (instancetype) dateWithBuilderBlock:(void (^)(NSDateComponents *))builderBlock calendar:(NSCalendar *)calendar
{
    NSParameterAssert(builderBlock);
    NSParameterAssert(calendar);
    
    NSDateComponents *builder = [[NSDateComponents alloc] init];
    
    builderBlock(builder);
    
    return [calendar dateFromComponents:builder];
}

@end
