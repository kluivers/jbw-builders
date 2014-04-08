//
//  NSDate+JBWBuilders.h
//  Builders
//
//  Created by Joris Kluivers on 08/04/14.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (JBWBuilders)

+ (instancetype) gregorianDateWithBuilderBlock:(void(^)(NSDateComponents *builder))builderBlock;
+ (instancetype) dateWithBuilderBlock:(void(^)(NSDateComponents *builder))builderBlock calendar:(NSCalendar *)calendar;

@end
