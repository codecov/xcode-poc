#import "ObjCPlusPlusText.h"
#import "CPlusPlusText.h"

@implementation ObjCPlusPlusText

+(NSString*)sayHello
{
    CPlusPlusText cppText;
    
    NSString* helloText = [NSString stringWithCString:cppText.sayHello().c_str()
                       encoding:[NSString defaultCStringEncoding]];
    return helloText;
}

+(NSString*)sayGoodbye
{
    CPlusPlusText cppText;
    
    NSString* goodbyeText = [NSString stringWithCString:cppText.sayGoodbye().c_str()
                       encoding:[NSString defaultCStringEncoding]];
    return goodbyeText;
}

@end
