//
//  Me.h
//  OCLearning
//
//  Created by john's mac　　　　 on 3/28/16.
//  Copyright © 2016 john's mac　　　　. All rights reserved.
//

#import <Foundation/Foundation.h>
//如果要设计一个工具类 里面应该没有成员变量 都是类方法

@interface Me :NSObject{
    int _age;
}
//@property (nonatomic, assign) NSInteger age;//注意写法：类型不带括弧的 这个代替了set get
//+(void) getAge;//特注  类方法 虽然执行效率高 但不能访问成员变量
- (void) getAge;
- (NSInteger)getNum:(id) obj;//注意写法 参数 类型 是需要 括号 的
@end
