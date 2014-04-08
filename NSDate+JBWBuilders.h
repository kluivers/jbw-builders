//
//  NSDate+JBWBuilders.h
//  Builders
//
//  Created by Joris Kluivers on 08/04/14.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (JBWBuilders)

+ (instancetype) dateWithBuilderBlock:(void(^)(NSDateComponents *builder))builderBlock;

@end
