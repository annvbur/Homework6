#import <Foundation/Foundation.h>
#import "SmartPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        SmartPoint *p1 = [[SmartPoint alloc] initWithX:24.f y:15.f title:@"Point"];
        SmartPoint *p2 = [p1 copy];
        SmartPoint *p3 = p2;
        
        NSLog(@"Points are equal %d", [p1 isEqual:p2]);
        p2. title = @"Distant waypoint";
        
        NSLog(@"Points are equal %d", [p1 isEqual:p2]);
        NSLog(@"%@", p1);
        NSLog(@"%@", p2);
        NSLog(@"%@", p3);
         
        
//        SmartPoint *smartPoint = [[SmartPoint alloc] init];
//        [smartPoint moveToX:10 andY:12];
//        
//        SmartPoint *newSmartPoint = [smartPoint copy];  // copy
//        
//        NSLog(@"%@", smartPoint);
//        NSLog(@"%@", newSmartPoint);
//        
//        
//        SmartPoint *otherSmartPoint = smartPoint;       // not a copy, just sharing the same object
//        NSLog(@"%@", smartPoint);
//        NSLog(@"%@", smartPoint);
//        
//        
//        
//        StupidPoint *stupidPoint = [[StupidPoint alloc] init];
//        [stupidPoint moveToX:10 andY:12];
//        
//        NSLog(@"%@", smartPoint);
//        NSLog(@"%@", stupidPoint);
    }
    return 0;
}

