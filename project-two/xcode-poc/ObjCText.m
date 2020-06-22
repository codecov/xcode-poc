#import <Foundation/Foundation.h>

@interface ObjCText:NSObject
+ (NSString *)sayHello;
+ (NSString *)sayGoodbye;
@end

@implementation ObjCText

+ (NSString *)sayHello {
    return @"Hello from Objective-C :)";
}

+ (NSString *)sayGoodbye {
    return @"Goodbye from Objective-C :(";
}

@end
