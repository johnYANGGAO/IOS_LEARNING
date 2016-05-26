//
//  main.m
//  TestOC
//  要理解的是pointer保存的不是首地址么，为什么他可以输出这个内容？

//主要是c语言针对指针输出格式函数的原因 :
//特注 基本类型 和 引用类型 输出格式的不同处
//  Created by john's mac　　　　 on 2/19/16.
//  Copyright © 2016 john's mac　　　　. All rights reserved.
//

#import <Foundation/Foundation.h>
// enum 的使用
typedef enum type{
    BIG=1,SMALL
} shap;
//用来声明 而不能初始化 也不能随便当作c语言 的变量来使用
@interface Car : NSObject  {
    @public //特注 如果这个不写 外部->访问会报错 
    int speed;
    int wheels;
    shap s;
   
   
}
@property (nonatomic,strong)  NSString *name;
@property(nonatomic,assign) int dot;
-(int) comparedSpeed:(Car *) other;
-(void) speed:(int)sd wheel:(int)wl andshap:(int)type;
-(void) moving;
@end

@implementation Car
@synthesize name=_name;
@synthesize dot=_dot;//api帮我们生产的变量 类似get 但如果自己实现 则系统不会创建_dot这个变量
-(int)comparedSpeed:(Car *)other{
    return speed-other->speed;
}
-(void)speed:(int)sd wheel:(int)wl andshap:(int)type{
    
    wheels=wl;
    speed=sd;
    s=type;

}
- (void)moving{
    wheels=3;
    speed=89;
    s=SMALL;
    NSLog(@"I AM MOVING NOW....");

};

@end
@interface Person : NSObject
{

    int age;
    double height;
}
- (void)print;
@end

@implementation Person
- (void)print
{
    NSLog(@"年龄=%d，身高=%f", age, height);
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        id carid= [[Car alloc ] init];
        //carid.dot=3; //id 万能指针 不能用点来访问成员变量 如有错误 会发生运行时报错
        
        
        Car *car=[[Car alloc] init];
        car.name=@"i am gaoyang";
        
        car.dot=3; //要使用点方法  必须要实现 set get方法
        
//        car->speed=10;
//        [car moving];
        [car speed:78 wheel:4 andshap:SMALL];
        //%d is a signed integer,
        //while %u is an unsigned integer.
//        NSLog(@"Wheel's count is %d and speed is %d AND SHAP IS %u " ,car->wheels,car->speed,car->s);
        int *point;
        
        int oo[]={2,0,9};
        point=oo;
        NSLog(@"point's size is %lu\n name is %d\n",sizeof(car),*oo);//这里的一个指针大小为8个字节
        char str[]="C l\0anguage";
        char *p;
        p=str;
        printf("%s\n",str);
        printf("%c\n",*p);
        //特注 当使用匿名时 注意 对象的唯一性 当new 则是开辟了新的对象空间
       
    }
    return 0;
}
