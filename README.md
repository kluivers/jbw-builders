jbw-builders
============

Builder categories for `NSURL` and `NSDate`. The builder category adds a builder pattern based convenience initializer to easily build these classes. Instead of creating a custom builder object, the build in foundation `NS*Components` objects are used.


By **Joris Kluivers**

- Accompanying blog post: [The Builder Pattern in Objective-C Foundation](http://joris.kluivers.nl/blog/2014/04/08/the-builder-pattern-in-objective-c-foundation/)
- Follow [@kluivers on Twitter](http://twitter.com/kluivers)

## Example

    NSDate *testDate = [NSDate gregorianDateWithBuilderBlock:^(NSDateComponents *builder) {
        builder.year = 2014;
        builder.month = 4;
        builder.day = 8;
        builder.hour = 12;
    }];
    
    NSURL *testURL = [NSURL URLWithBuilderBlock:^(NSURLComponents *builder) {
        builder.host = @"joris.kluivers.nl";
        builder.scheme = @"http";
    }];
