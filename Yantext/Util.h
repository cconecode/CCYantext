//
//  Util.h
//  Yantext
//
//  Created by 巴黎有条狗 on 2018/12/17.
//  Copyright © 2018 巴黎有条狗. All rights reserved.
//

#ifndef Util_h
#define Util_h

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

#define iPhoneXAndXRAndXsMax ((kScreenHeight == 812.f || kScreenHeight == 896.f) ? YES : NO)

#define kStatusBarHeight (iPhoneXAndXRAndXsMax ? 44.f : 20.f)
#define kNavigationBarHeight (iPhoneXAndXRAndXsMax ? 88.f : 64.f)

// 适配iPhone X Tabbar距离底部的距离
#define kTabbarSafeBottomMargin (iPhoneXAndXRAndXsMax ? 34.f : 0.f)
// 适配iPhone X Tabbar高度
#define kTabbarHeight (iPhoneXAndXRAndXsMax ? (49.f+34.f) : 49.f)


#endif /* Util_h */
