//
//  UISwitch+IndexRow.m
//  RuntimeOC
//
//  Created by 郁玉涛 on 2017/3/1.
//  Copyright © 2017年 yyt. All rights reserved.
//

#import "UISwitch+IndexRow.h"
#import <objc/runtime.h>

static char IndexRowKey;

@implementation UISwitch (IndexRow)

- (void)setIndexRow:(id)indexRow{

    /**
     @param object#> 绑定的对象 一般都是self
     @param key#> 用于存取值 即绑定的这个对象
     @param value#> 关联对象的值 这个是需要传入id类型的，若不是 需要@()
     @param policy#> 关联对策
     */
    
    return objc_setAssociatedObject(self, &IndexRowKey, indexRow, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)indexRow{
    
    return objc_getAssociatedObject(self, &IndexRowKey);
}

@end
