//
//  NSURL+JBWBuilders.m
//  Builders
//
//  Created by Joris Kluivers on 08/04/14.
//
//

#import "NSURL+JBWBuilders.h"

@implementation NSURL (JBWBuilders)

+ (instancetype) URLWithBuilderBlock:(void(^)(NSURLComponents *))builderBlock
{
    NSParameterAssert(builderBlock);
    
    NSURLComponents *builder = [[NSURLComponents alloc] init];
    
    builderBlock(builder);
    
    return [builder URL];
}

@end
