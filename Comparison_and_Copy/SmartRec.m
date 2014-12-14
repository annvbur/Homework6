#import <Foundation/Foundation.h>
#import "SmartRec.h"
#import "SmartPoint.h"




@implementation SmartRect// реализация

- (instancetype) initWithOrigin:(SmartPoint*)origin
                    andWidth:(float)width
                      andHeight:(float)height{
    
                        self = [super init];
    
                        if (self){
                            self.origin = origin;
                            self.width = width;
                            self.height = height;
                        }
                        return self;
    
    
}

- (float) square{
    float result = self.height * self.width;
    return result;
    
    return 0;
    
}//c объектом - не с к классом (xctckb + hf,jnftn c rkfccjv - tckb - - c c j,]trnjv
- (SmartPoint*) center{
    float y = self.origin.y + 0.5 * self.width;
    float x = self.origin.x + 0.5 * self.height;
    SmartPoint *result = [SmartPoint pointWithX:20 y:30];
    return result;
}
- (float) diag{
    float result = sqrtf(powf(self.width, 2)+(powf(self.height, 2)) );
    return result;
    return 0;
}


- (NSString *)description{// выводит наш ориджин- ширину и всоту
    NSString* result;
    
    result = [NSString stringWithFormat:@"x=%g y=%g width=%g height=%g", self.origin.x, self.origin.y, self.width, self.height]; // можно _ или селф.
    return result;

}

- (BOOL) isPointInRect: (SmartPoint*) point;{
    BOOL result = NO;
    if ((point.x>= self.origin.x && point.x<= self.origin.x + self.width)&&(point.y>=self.origin.y && point.y<= self.origin.y + self.height)){
        result = YES;
    }
    ;
    
    return result;
}

- (BOOL) isContainRect: (SmartRect*) otherRect{
    BOOL result = NO;
    int count = [self isPointInRect: otherRect.origin];
    count = count + [self isPointInRect:[SmartPoint pointWithX:12 y:13]];
    count = count + [self isPointInRect:[SmartPoint pointWithX:12 y:13]];
    count = count + [self isPointInRect:[SmartPoint pointWithX:12 y:13]];
    result = count == 4;
    return result;
    
    
}

- (instancetype)initWithX:(float)x y:(float)y name:(NSString*)name date:(NSData*) date
{
    self = [super init];
    if (self) {
        x = x;
        y = y;
        _name = name;
        _date = date;
    }
    
    return self;
}

- (instancetype)initWithX:(float)x y:(float)y name:(NSString*)name{
    return [self initWithX:x y:y name:name date:[NSDate date]];
}

- (id)copyWithZone:(NSZone *)zone
{
    SmartRect *copy = (SmartRect *) [[[self class] allocWithZone:zone] init];
    
    if (copy != nil) {
        copy.name = [self.name copy];
        copy.date = [self.date copy];
    }
    
    return copy;
}

- (BOOL)isEqualSmartRect:(SmartPoint *)otherRect
{
    if (self == otherRect)
        return YES;
    if (otherRect == nil)
        return NO;
    if(![self.name isEqual:otherRect.title]){
        return NO;
    }
    return YES;
}


@end