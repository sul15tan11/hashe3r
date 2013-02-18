//
//  HashTweets.h
//  HaSHa3r
//
//  Created by Sultan Alanazi on 2/16/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HashTweets : NSObject

{
    NSString *tweetText;
    NSString *tweeterName;
    UIImage *tweetImage;
    NSString *tweetTime;
}

@property (nonatomic,retain) NSString* tweetText;
@property (nonatomic,retain) NSString* tweeterName;
@property (nonatomic,retain) UIImage* tweetImage;
@property (nonatomic,retain) NSString* tweetTime;


-(id) initWithtext:(NSString*)text andName:(NSString*)name andImage:(UIImage*)img andTime:(NSString*)time;

@end
