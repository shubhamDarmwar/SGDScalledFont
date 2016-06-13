//
//  UIFont+SGDScaledFont.m
//  SGDAdjustableFont
//
//  Created by Shubham Daramwar on 6/13/16.
//  Copyright © 2016 Shubham Daramwar. All rights reserved.
//

#import "UIFont+SGDScaledFont.h"

@implementation UIFont (SGDScaledFont)

+(float)multiplier{

    float multiplier = 1;
    if ([UIScreen mainScreen].bounds.size.width < [UIScreen mainScreen].bounds.size.height) {
        multiplier = [UIScreen mainScreen].bounds.size.width / 320;
    }else{
        multiplier = [UIScreen mainScreen].bounds.size.height / 320;
    }
    
    return multiplier;
}

+(NSString *)style:(TextStyle)style{
    NSString * result;
    switch (style) {
        case Roboto_Black:
            result = @"Roboto-Black";
            break;
        case Roboto_Bold:
            result = @"Roboto-Bold";
            break;
        case Roboto_Light:
            result= @"Roboto-Light";
            break;
        case Roboto_Medium:
            result =@"Roboto-Medium";
            break;
        case Roboto_Regular:
            result = @"Roboto-Regular";
            break;
            
        default:
            break;
    }
    return  result;
    
}

//@@@@@@@@@@@@  with style
+(UIFont *)Caption4WithStyle:(TextStyle )textStyle{
    float multiplier = [self multiplier];
    UIFont * font ;
    switch (textStyle) {
        case Roboto_Black:
            font = [UIFont fontWithName:@"Roboto-Black" size:8*multiplier];
            break;
        case Roboto_Bold:
            font = [UIFont fontWithName:@"Roboto-Bold" size:8*multiplier];
            break;
        case Roboto_Light:
            font = [UIFont fontWithName:@"Roboto-Light" size:8*multiplier];
            break;
        case Roboto_Medium:
            font = [UIFont fontWithName:@"Roboto-Medium" size:8*multiplier];
            break;
        case Roboto_Regular:
            font = [UIFont fontWithName:@"Roboto-Regular" size:8*multiplier];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont *)scaledCustomFontWithStyle:(TextStyle )textStyle withSize:(TextSize)size{
    
    UIFont * font = [UIFont fontWithName:[self style:textStyle] size:size*[self multiplier]];
    return font;
    
    
}


+(UIFont *)scaledSystemFontWithStyle:(TextStyle )textStyle withSize:(TextSize)size{
     UIFont * font ;
    size = size * [self multiplier];
    
    switch (textStyle) {
        case Ultra_Light:
            font = [UIFont systemFontOfSize:size weight:UIFontWeightUltraLight];
            break;
        case Thin:
            font = [UIFont systemFontOfSize:size weight:UIFontWeightThin];
            break;
        case Light:
            font = [UIFont systemFontOfSize:size weight:UIFontWeightLight];
            break;
        case Regular:
            font = [UIFont systemFontOfSize:size weight:UIFontWeightRegular];
            break;
        case Medium:
            font = [UIFont systemFontOfSize:size weight:UIFontWeightMedium];
            break;
        case Semibold:
            font = [UIFont systemFontOfSize:size weight:UIFontWeightSemibold];
            break;
        case Bold:
            font = [UIFont systemFontOfSize:size weight:UIFontWeightBold];
            break;
        case Heavy:
            font = [UIFont systemFontOfSize:size weight:UIFontWeightHeavy];
            break;
        case Black:
            font = [UIFont systemFontOfSize:size weight:UIFontWeightBlack];
            break;
            
        default:
            break;
    }
    
    return font;
    
}



@end
