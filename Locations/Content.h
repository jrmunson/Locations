//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class meta;
@class NSArray;

@interface Content : NSObject
{
	meta *meta;
	NSArray *data;
}

@property (strong, nonatomic) meta *meta;
@property (strong, nonatomic) NSArray *data;

- (id) initWithJSONDictionary:(NSDictionary *)dic;
- (void) parseJSONDictionary:(NSDictionary *)dic;

@end
