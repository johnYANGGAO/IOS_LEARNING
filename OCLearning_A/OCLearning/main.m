//
//  main.m
//  OCLearning
//
//  Created by john's mac　　　　 on 2/19/16.
//  Copyright © 2016 john's mac　　　　. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  如果在B类中使用了@class xxx 声明了了依赖  则引入B类 的类 是使用不了xxx依赖 的 ;
 *  但 #import 则可以传载 ，所以利用此特性 可以对xxx进行 必要的保护
 */
#import "B.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Me * me=[[Me alloc] init];
//        [me getAge];
//        [Me getAge];
        NSLog(@"Hello, World!");
    }
    return 0;
}
