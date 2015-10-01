//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

// Import
#import "meta.h"
#import "view.h"


@implementation meta


@synthesize view;


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
	id view_ = [dic objectForKey:@"view"];
	if([view_ isKindOfClass:[NSDictionary class]])
	{
		self.view = [[view alloc] initWithJSONDictionary:view_];
	}

	
}

@end
