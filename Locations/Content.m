//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

// Import
#import "Content.h"
#import "meta.h"
#import "NSArray.h"


@implementation Content


@synthesize meta;
@synthesize data;


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
	id meta_ = [dic objectForKey:@"meta"];
	if([meta_ isKindOfClass:[NSDictionary class]])
	{
		self.meta = [[meta alloc] initWithJSONDictionary:meta_];
	}

	id data_ = [dic objectForKey:@"data"];
	
}

@end
