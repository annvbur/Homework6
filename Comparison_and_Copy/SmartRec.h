@class SmartPoint;
@interface SmartRect: NSObject<NSCopying>// декларация

@property (nonatomic) SmartPoint* origin;

@property (nonatomic)float width;

@property (nonatomic)float height;
- (instancetype) initWithOrigin:(SmartPoint*) origin
                    andWidth:(float) width
                      andHeight:(float) height;
- (float) square; //c объектом - не с к классом
- (CGPoint) center;
- (float) diag;
- (SmartRect *)intersectionWithRect:(SmartRect*) otherRect;
- (BOOL) isPointInRect: (SmartPoint*) point;
- (BOOL) isContainRect: (SmartRect*) otherRect;

+ (instancetype)pointWithX:(float)x y:(float)y;
@property (nonatomic, copy) NSString*  name;// for strings always copy
@property (nonatomic, strong) NSDate* date;

- (instancetype)initWithX:(float)x y:(float)y name:(NSString*)name;
- (instancetype)initWithX:(float)x y:(float)y name:(NSString*)name date:(NSData*) date;
@end// описание интерфейса закончилось

