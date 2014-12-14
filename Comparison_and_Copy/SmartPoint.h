#import <Foundation/Foundation.h>

@interface SmartPoint : NSObject<NSCopying>
@property (nonatomic) float x;
@property (nonatomic) float y;
@property (nonatomic, copy) NSString* title;// for strings always copy
@property (nonatomic, strong) NSDate* timestamp;

+ (instancetype)pointWithX:(float)x y:(float)y;

-(void)moveToX:(float)x andY:(float)y;

- (instancetype)initWithX:(float)x y:(float)y title:(NSString*)title;
- (instancetype)initWithX:(float)x y:(float)y title:(NSString*)title date:(NSData*) date;

@end

@interface StupidPoint : SmartPoint

@end







