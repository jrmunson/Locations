//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface view : NSObject
{
	NSString *id;
	NSString *name;
	NSString *Address;
	NSString *SuiteNumber;
	NSString *City;
	NSString *State;
	NSString *Zip;
	NSString *Identifier;
	NSDecimalNumber *Lat;
	NSDecimalNumber *Lon;
}

@property (strong, nonatomic) NSString *id;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *Address;
@property (strong, nonatomic) NSString *SuiteNumber;
@property (strong, nonatomic) NSString *City;
@property (strong, nonatomic) NSString *State;
@property (strong, nonatomic) NSString *Zip;
@property (strong, nonatomic) NSString *Identifier;
@property (strong, nonatomic) NSDecimalNumber *Lat;
@property (strong, nonatomic) NSDecimalNumber *Lon;

- (id) initWithJSONDictionary:(NSDictionary *)dic;
- (void) parseJSONDictionary:(NSDictionary *)dic;

@end
