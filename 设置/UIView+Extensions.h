//
//  UIView+Extensions.h
//  PowerBank
//
//  Created by wangmiao on 2017/6/26.
//  Copyright © 2017年 wangmiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extensions)

@property (nonatomic) CGFloat left;    ///< Shortcut for frame.origin.x.
@property (nonatomic) CGFloat top;     ///< Shortcut for frame.origin.y
@property (nonatomic) CGFloat right;   ///< Shortcut for frame.origin.x + frame.size.width
@property (nonatomic) CGFloat bottom;  ///< Shortcut for frame.origin.y + frame.size.height
@property (nonatomic) CGFloat width;   ///< Shortcut for frame.size.width.
@property (nonatomic) CGFloat height;  ///< Shortcut for frame.size.height.
@property (nonatomic) CGFloat centerX; ///< Shortcut for center.x
@property (nonatomic) CGFloat centerY; ///< Shortcut for center.y
@property (nonatomic) CGPoint origin;  ///< Shortcut for frame.origin.
@property (nonatomic) CGSize size;     ///< Shortcut for frame.size.
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@end

@interface NSString (Extension)

- (CGSize)sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode;

@end
