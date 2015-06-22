//
//  ViewController.h
//  Kiosk
//
//  Created by Ferrakkem Bhuiyan on 10/06/2015.
//  Copyright (c) 2015 Ferrakkem Bhuiyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
   
   
    
    
    
    UIView *prismView;
    UILabel *personNameLable;
    UITextField *personNameText;
    UIImageView *Logo;
    UIImageView *productLogo;
    UILabel *degisnationLabel;
    UITextField *degisnationText;
    
    UILabel *companyNamelabel;
    UITextField *companyNameText;
    UILabel *emailaddressLabel;
    UITextField *emailaddressText;
    UILabel *phoneNumberLabel;
    UITextField *phoneNumberText;
    UILabel *commentsLabel;
    UITextField *commentsText;
    
    UILabel *topUpLabel;
    NSString *topUpText;
    UIView *bottomBorder;
    UIView *leftBorder;
    UIView *rightBorder;
//    UITextField *forPersonNamePlaceHolder;
    UITapGestureRecognizer *tapRecognizer;
    
}
@property (nonatomic) UITapGestureRecognizer *tapRecognizer;
@property (strong, nonatomic) UITextField *activeField;
@property (strong, nonatomic) NSMutableDictionary *formData;


@end

