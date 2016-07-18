//
//  SunChatQQ.m
//  SunChatQQ
//
//  Created by 孙兆楠 on 16/7/18.
//  Copyright © 2016年 孙兆楠. All rights reserved.
//

#import "SunChatQQ.h"

@implementation SunChatQQ

+(BOOL)haveQQ
{
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"mqq://"]];
}
+(void)chatWithQQ:(NSString *)QQ
{
    NSString *url = [NSString stringWithFormat:@"mqq://im/chat?chat_type=wpa&uin=%@&version=1&src_type=web",QQ];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}

@end
