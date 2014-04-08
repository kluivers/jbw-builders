//
//  NSURL+JBWBuilders.h
//  Builders
//
//  Created by Joris Kluivers on 08/04/14.
//
//



@interface NSURL (JBWBuilders)

+ (instancetype) URLWithBuilderBlock:(void(^)(NSURLComponents *))builderBlock;

@end
