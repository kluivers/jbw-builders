//
//  NSDateBuilderTest.m
//  Builders
//
//  Created by Joris Kluivers on 08/04/14.
//
//

#import <XCTest/XCTest.h>

#import "NSDate+JBWBuilders.h"

@interface NSDateBuilderTest : XCTestCase

@end

@implementation NSDateBuilderTest

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

- (void)testExampleDate
{
    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    
    NSDate *testDate = [NSDate dateWithBuilderBlock:^(NSDateComponents *builder) {
        builder.year = 2014;
        builder.month = 4;
        builder.day = 8;
        builder.hour = 12;
    } calendar:calendar];
    
    XCTAssertNotNil(testDate, @"Resulting date cannot be nil");
}

@end
