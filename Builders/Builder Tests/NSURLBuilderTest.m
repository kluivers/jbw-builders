//
//  NSURLBuilderTest.m
//  Builders
//
//  Created by Joris Kluivers on 08/04/14.
//
//

#import <XCTest/XCTest.h>

#import "NSURL+JBWBuilders.h"

@interface NSURLBuilderTest : XCTestCase

@end

@implementation NSURLBuilderTest

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExampleURL
{
    NSURL *testURL = [NSURL URLWithBuilderBlock:^(NSURLComponents *builder) {
        builder.host = @"joris.kluivers.nl";
        builder.scheme = @"http";
    }];
    
    NSURL *validationURL = [NSURL URLWithString:@"http://joris.kluivers.nl"];
    
    XCTAssertNotNil(testURL, @"Resulting URL cannot be nil");
    XCTAssertEqualObjects(testURL, validationURL, @"Resulting URL from builder");
}

@end
