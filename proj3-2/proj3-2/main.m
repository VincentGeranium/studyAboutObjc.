//
//  main.m
//  proj3-2
//
//  Created by Kwangjun Kim on 2022/04/17.
//

#import <Foundation/Foundation.h>

// - - - @interface 부분 - - -

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

// - - - @implementation 부분 - - -

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}

-(void) setDenominator: (int) d
{
    denominator = d;
}

@end

// - - - 프로그램 부분 - - -

int main(int argc, char * argv[])
{
    @autoreleasepool {
        Fraction *myFraction;
        
        // Fraction 인스턴스를 생성한다.
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        // 1/3로 분수의 값을 설정한다.
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        // print 메서드로. 분수의 값을 표시한다.
        NSLog(@"The value of myFraction is:");
        [myFraction print];
    }
    return 0;
}
