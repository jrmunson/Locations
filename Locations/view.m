//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

// Import
#import "view.h"


@implementation view


@synthesize id;
@synthesize name;
@synthesize Address;
@synthesize SuiteNumber;
@synthesize City;
@synthesize State;
@synthesize Zip;
@synthesize Identifier;
@synthesize Lat;
@synthesize Lon;


- (void) dealloc
{
	

}

- (id) initWithJSONDictionary:(NSDictionary *)dic
{
	if(self = [super init])
	{
		[self parseJSONDictionary:dic];
	}
	
	return self;
}

- (void) parseJSONDictionary:(NSDictionary *)dic
{
	// PARSER
	id id_ = [dic objectForKey:@"id"];
	if([id_ isKindOfClass:[NSString class]])
	{
		self.id = id_;
	}

	id name_ = [dic objectForKey:@"name"];
	if([name_ isKindOfClass:[NSString class]])
	{
		self.name = name_;
	}

	id Address_ = [dic objectForKey:@"Address"];
	if([Address_ isKindOfClass:[NSString class]])
	{
		self.Address = Address_;
	}

	id SuiteNumber_ = [dic objectForKey:@"Suite Number"];
	if([SuiteNumber_ isKindOfClass:[NSString class]])
	{
		self.SuiteNumber = SuiteNumber_;
	}

	id City_ = [dic objectForKey:@"City"];
	if([City_ isKindOfClass:[NSString class]])
	{
		self.City = City_;
	}

	id State_ = [dic objectForKey:@"State"];
	if([State_ isKindOfClass:[NSString class]])
	{
		self.State = State_;
	}

	id Zip_ = [dic objectForKey:@"Zip"];
	if([Zip_ isKindOfClass:[NSString class]])
	{
		self.Zip = Zip_;
	}

	id Identifier_ = [dic objectForKey:@"Identifier"];
	if([Identifier_ isKindOfClass:[NSString class]])
	{
		self.Identifier = Identifier_;
	}

	id Lat_ = [dic objectForKey:@"Lat"];
	if([Lat_ isKindOfClass:[NSNumber class]])
	{
		self.Lat = Lat_;
	}

	id Lon_ = [dic objectForKey:@"Lon"];
	if([Lon_ isKindOfClass:[NSNumber class]])
	{
		self.Lon = Lon_;
	}

	
}

@end
