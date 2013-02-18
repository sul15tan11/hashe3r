//
//  HashTweets.m
//  HaSHa3r
//
//  Created by Sultan Alanazi on 2/16/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "HashTweets.h"

@implementation HashTweets
@synthesize tweetTime,tweetImage,tweetText,tweeterName;

-(id) initWithtext:(NSString*)text andName:(NSString*)name andImage:(UIImage*)img andTime:(NSString*)time

{
    self = [super init];
    if(self)
    {
        tweetText = text;
        tweeterName = name;
        tweetTime = time;
        tweetImage = img;
    }
    return self;
}

@end
