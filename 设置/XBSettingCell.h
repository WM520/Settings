//
//  XBSettingCell.h
//  xiu8iOS
//
//  Created by XB on 15/9/18.
//  Copyright (c) 2015年 xiu8. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
@class XBSettingItemModel;
@interface XBSettingCell : UITableViewCell
@property (nonatomic,strong) XBSettingItemModel  *item; /**< item data*/

@property (nonatomic, assign) CGFloat cellwidth;

@end
