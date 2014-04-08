//
//  NSDate+JBWBuilders.m
//  Builders
//
//  Created by Joris Kluivers on 08/04/14.
//
//

#import "NSDate+JBWBuilders.h"

@implementation NSDate (JBWBuilders)

+ (instancetype) dateWithBuilderBlock:(void(^)(NSDateComponents *builder))builderBlock
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    return [self dateWithBuilderBlock:builderBlock calendar:calendar];
}

+ (instancetype) dateWithBuilderBlock:(void (^)(NSDateComponents *))builderBlock calendar:(NSCalendar *)calendar
{
    NSDateComponents *builder = [[NSDateComponents alloc] init];
    
    if (builderBlock) {
        builderBlock(builder);
    }
    
    return [calendar dateFromComponents:builder];
}

@end
