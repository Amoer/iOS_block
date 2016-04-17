//
//  ChooseController.h
//  Block传值
//
//  Created by ziboow on 16/4/15.
//  Copyright © 2016年 abmas. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^sendMessage)(NSString *message);
@interface ChooseController : UIViewController
@property (nonatomic, strong) sendMessage messageBlock;
@end



