
//
//  UIFont+SGDScaledFont.h
//  SGDAdjustableFont
//
//  Created by Shubham Daramwar on 6/13/16.
//  Copyright © 2016 Shubham Daramwar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (SGDScaledFont)

typedef NS_ENUM(int,TextStyle) {
    Roboto_Black= 0, Roboto_Bold,Roboto_Light,Roboto_Medium,Roboto_Regular,Ultra_Light,Thin,Light,Regular,Medium,Semibold , Bold, Heavy,Black
};

typedef NS_ENUM(NSInteger,TextSize) {

    HeadingFont = 17,
    Subheadline = 15,
    Footnote = 13,
    Caption1 = 12,
    Caption2 = 11,
    Caption3 = 10,
    Caption4 = 8,
    Caption5 = 7
    
};

+(UIFont *)scaledSystemFontWithStyle:(TextStyle )textStyle withSize:(TextSize)size;
@end
