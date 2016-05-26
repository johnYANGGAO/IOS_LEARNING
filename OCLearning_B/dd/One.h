//
//  One.h
//  dd
//
//  Created by john's mac　　　　 on 2/19/16.
//  Copyright © 2016 john's mac　　　　. All rights reserved.
//
//声明头文件
#import <Foundation/Foundation.h>
#define kage(a) ((a)+13)
@interface One : NSObject{

    int _age;

}
@property int age;
//-(void)setAge:(int)age;
//-(int)age;
-(void) get:(int) a;
@end
