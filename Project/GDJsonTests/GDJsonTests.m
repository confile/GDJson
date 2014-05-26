//
//  GDJsonTests.m
//  GDJsonTests
//
//  Created by dev on 13-12-9.
//  Copyright (c) 2013年 Goodow. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "com/goodow/realtime/json/Json.h"
#import "GDJson.h"

@interface GDJsonTests : XCTestCase

@end

@implementation GDJsonTests

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

- (void)testExample
{
  NSString *jsonString = @" {} ";
  id<ComGoodowRealtimeJsonJsonObject> obj = [ComGoodowRealtimeJsonJson parseWithNSString:jsonString];
  [obj setWithNSString:@"key1" withId:@"value1"];
  [obj setWithNSString:@"key2" withBoolean:YES];
  [obj setWithNSString:@"key3" withDouble:4.2];
  NSString *json = [obj toJsonString];
}

@end
