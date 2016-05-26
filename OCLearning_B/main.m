//
//  main.m
//  dd
//
//  Created by john's mac　　　　 on 2/19/16.
//  Copyright © 2016 john's mac　　　　. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "One.h"
int main(int argc,const char * agrv[]){

    @autoreleasepool {
        
        One *O= [[One alloc]init];
        int a=O.age=20;
//        [O setAge:20];
//        [O get:[O age]];
          [O get:a];
         NSLog(@"hello world ! and age is %d",O.age);
    }
    return 0;
}