

#import "AudienceCellModel.h"

@implementation AudienceCellModel

+(instancetype)audienceCellModelWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
    
}
-(instancetype)initWithDict:(NSDictionary *)dict {
    if(self = [super init]){
        
        NSLog(@"-----%@",dict);
        [self setValuesForKeysWithDictionary:dict];
        
    }
    return self;
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"id"]) {
        _userId = value;
    }
}

-(id)valueForUndefinedKey:(NSString *)key{
    
    return nil;
}

@end
