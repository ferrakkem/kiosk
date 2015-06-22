//
//  ViewController.m
//  Kiosk
//
//  Created by Ferrakkem Bhuiyan on 10/06/2015.
//  Copyright (c) 2015 Ferrakkem Bhuiyan. All rights reserved.
//

#import "ViewController.h"


@interface ViewController (){
     
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationBar *navbar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 80)];
    [navbar setTintColor:[UIColor grayColor]];
    navbar.translucent = YES;
    [self.view addSubview:navbar];
    
    
    /*keyboard*/
    tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapAnywhere:)];
    tapRecognizer.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapRecognizer];
    
    [self registerForKeyboardNotifications];
    /**/
   
    
    int top = 10;
   
    Logo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"DivineLogo.png"]] ;
    [Logo setFrame:CGRectMake(60,100, 240, 60)];
    [self.view addSubview: Logo];
    

    Logo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PrismERP.png"]] ;
    [Logo setFrame:CGRectMake(490,100, 160, 60)];
    [self.view addSubview: Logo];
    

    top = +180;
    topUpText =@" PrismERP Meets 2015 ";
    topUpLabel = [[UILabel alloc] initWithFrame:CGRectMake(280, top,  self.view.frame.size.width - 200, 150)];
    topUpLabel.text = [NSString stringWithString:topUpText];
    topUpLabel.adjustsFontSizeToFitWidth = YES;
    topUpLabel.textColor = [UIColor orangeColor];
    topUpLabel.font = [UIFont fontWithName:@"Arial-BoldMT " size:20];
    [topUpLabel sizeToFit];
    [self.view addSubview:topUpLabel];

    top = +220;
    NSString *TextValue =@"Name :";
    personNameLable = [[UILabel alloc] initWithFrame:CGRectMake(50, top,  self.view.frame.size.width - 200, 150)];
    personNameLable.text = [NSString stringWithString:TextValue];
    personNameLable.adjustsFontSizeToFitWidth = YES;
    personNameLable.textColor = [UIColor  orangeColor];
    personNameLable.font = [UIFont fontWithName:@"Arial-BoldMT" size:16];
    [personNameLable sizeToFit];
    [self.view addSubview:personNameLable];
    
    
    int itemTop = 248;
    bottomBorder = [[UIView alloc]initWithFrame:CGRectMake(50, itemTop+22,self.view.frame.size.width - 88, 0.8f)];
    bottomBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:bottomBorder];
    
    leftBorder = [[UIView alloc]initWithFrame:CGRectMake(50.2, itemTop+13, 0.8f, 10)];
    leftBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:leftBorder];
    
    rightBorder = [[UIView alloc]initWithFrame:CGRectMake(52 + ( self.view.frame.size.width - 90), itemTop+13, 0.8f, 10)];
    rightBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [ self.view addSubview:rightBorder];
    
    personNameText = [[UITextField alloc] initWithFrame:CGRectMake(50.90, itemTop, self.view.frame.size.width - 92, 20)];
    personNameText.tag = 1;
    personNameText.placeholder = @"Enter your name";
    personNameText.borderStyle = UITextBorderStyleNone;
    personNameText.font = [UIFont fontWithName:@"Arial" size:14];
    personNameText.backgroundColor = [UIColor whiteColor];
    

    personNameText.keyboardType =UIKeyboardTypeDefault;
    [self.view addSubview:personNameText];
    [self.view bringSubviewToFront:personNameText];
    
    top = top+75;

    TextValue =@"Designation :";
    degisnationLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, top,  self.view.frame.size.width - 200, 150)];
    degisnationLabel.text = [NSString stringWithString:TextValue];
    degisnationLabel.adjustsFontSizeToFitWidth = YES;
    degisnationLabel.textColor = [UIColor colorWithRed:38/255.0f green:138/255.0f blue:188/255.0f alpha:1.0];
    degisnationLabel.font = [UIFont fontWithName:@"Arial" size:16];
    [degisnationLabel sizeToFit];
    [self.view addSubview:degisnationLabel];
    
    itemTop = itemTop+70;
    bottomBorder = [[UIView alloc]initWithFrame:CGRectMake(50, itemTop+22,self.view.frame.size.width - 88, 0.8f)];
    bottomBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:bottomBorder];
    
    leftBorder = [[UIView alloc]initWithFrame:CGRectMake(50.2, itemTop+13, 0.8f, 10)];
    leftBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:leftBorder];
    
    rightBorder = [[UIView alloc]initWithFrame:CGRectMake(52 + ( self.view.frame.size.width - 90), itemTop+13, 0.8f, 10)];
    rightBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [ self.view addSubview:rightBorder];
    
    degisnationText = [[UITextField alloc] initWithFrame:CGRectMake(50.90, itemTop, self.view.frame.size.width - 92, 20)];
    
    degisnationText.tag = 1;
    degisnationText.placeholder = @"Enter your designation";
    degisnationText.borderStyle = UITextBorderStyleNone;
    degisnationText.font = [UIFont fontWithName:@"Arial" size:14];
    degisnationText.backgroundColor = [UIColor whiteColor];
    degisnationText.keyboardType =UIKeyboardTypeDefault;
    [self.view addSubview:degisnationText];
    [self.view bringSubviewToFront:degisnationText];
    
    
    
    top = top+75;
    
    TextValue =@"Company Name :";
    companyNamelabel = [[UILabel alloc] initWithFrame:CGRectMake(50, top,  self.view.frame.size.width - 200, 150)];
    companyNamelabel.text = [NSString stringWithString:TextValue];
    companyNamelabel.adjustsFontSizeToFitWidth = YES;
    companyNamelabel.textColor = [UIColor colorWithRed:38/255.0f green:138/255.0f blue:188/255.0f alpha:1.0];
    companyNamelabel.font = [UIFont fontWithName:@"Arial" size:14];
    [companyNamelabel sizeToFit];
    [self.view addSubview:companyNamelabel];
    
    
    itemTop = itemTop+80;
    bottomBorder = [[UIView alloc]initWithFrame:CGRectMake(50, itemTop+22,self.view.frame.size.width - 88, 0.8f)];
    bottomBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:bottomBorder];
    
    leftBorder = [[UIView alloc]initWithFrame:CGRectMake(50.2, itemTop+13, 0.8f, 10)];
    leftBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:leftBorder];
    
    rightBorder = [[UIView alloc]initWithFrame:CGRectMake(52 + ( self.view.frame.size.width - 90), itemTop+13, 0.8f, 10)];
    rightBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [ self.view addSubview:rightBorder];
    
    companyNameText = [[UITextField alloc] initWithFrame:CGRectMake(50.90, itemTop, self.view.frame.size.width - 92, 20)];
    
    companyNameText.tag = 1;
    companyNameText.placeholder = @"Enter your company name";
    companyNameText.borderStyle = UITextBorderStyleNone;
    companyNameText.font = [UIFont fontWithName:@"Arial" size:15];
    companyNameText.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:companyNameText];
    [self.view bringSubviewToFront:companyNameText];
    
    
    
    
    top = top+75;
    
    TextValue =@"Email Address :";
    emailaddressLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, top,  self.view.frame.size.width - 200, 150)];
    emailaddressLabel.text = [NSString stringWithString:TextValue];
    emailaddressLabel.adjustsFontSizeToFitWidth = YES;
    emailaddressLabel.textColor = [UIColor colorWithRed:38/255.0f green:138/255.0f blue:188/255.0f alpha:1.0];
    emailaddressLabel.font = [UIFont fontWithName:@"Arial" size:16];
    [emailaddressLabel sizeToFit];
    [self.view addSubview:emailaddressLabel];
    
    itemTop = itemTop+70;
    bottomBorder = [[UIView alloc]initWithFrame:CGRectMake(50, itemTop+22,self.view.frame.size.width - 88, 0.8f)];
    bottomBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:bottomBorder];
    
    leftBorder = [[UIView alloc]initWithFrame:CGRectMake(50.2, itemTop+13, 0.8f, 10)];
    leftBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:leftBorder];
    
    rightBorder = [[UIView alloc]initWithFrame:CGRectMake(52 + ( self.view.frame.size.width - 90), itemTop+13, 0.8f, 10)];
    rightBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [ self.view addSubview:rightBorder];
    
    emailaddressText = [[UITextField alloc] initWithFrame:CGRectMake(50.90, itemTop, self.view.frame.size.width - 92, 20)];
    
    emailaddressText.tag = 1;
    emailaddressText.placeholder = @"Enter your email address";
    emailaddressText.borderStyle = UITextBorderStyleNone;
    emailaddressText.font = [UIFont fontWithName:@"Arial" size:14];
    emailaddressText.backgroundColor = [UIColor whiteColor];
    emailaddressText.keyboardType = UIKeyboardTypeEmailAddress;
    [self.view addSubview:emailaddressText];
    [self.view bringSubviewToFront:emailaddressText];


    top = top+70;
    
    TextValue =@"Phone Number :";
    phoneNumberLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, top,  self.view.frame.size.width - 200, 150)];
    phoneNumberLabel.text = [NSString stringWithString:TextValue];
    phoneNumberLabel.adjustsFontSizeToFitWidth = YES;
    phoneNumberLabel.textColor = [UIColor  orangeColor];
    phoneNumberLabel.font = [UIFont fontWithName:@"Arial-BoldMT" size:16];
    [phoneNumberLabel sizeToFit];
    [self.view addSubview:phoneNumberLabel];
    
    
    itemTop = itemTop+70;
    bottomBorder = [[UIView alloc]initWithFrame:CGRectMake(50, itemTop+22,self.view.frame.size.width - 88, 0.8f)];
    bottomBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:bottomBorder];
    
    leftBorder = [[UIView alloc]initWithFrame:CGRectMake(50.2, itemTop+13, 0.8f, 10)];
    leftBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:leftBorder];
    
    rightBorder = [[UIView alloc]initWithFrame:CGRectMake(52 + ( self.view.frame.size.width - 90), itemTop+13, 0.8f, 10)];
    rightBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [ self.view addSubview:rightBorder];
    
    phoneNumberText = [[UITextField alloc] initWithFrame:CGRectMake(50.90, itemTop, self.view.frame.size.width - 92, 20)];
    
    phoneNumberText.tag = 1;
    phoneNumberText.placeholder = @"Enter your mobile number";
    phoneNumberText.borderStyle = UITextBorderStyleNone;
    phoneNumberText.font = [UIFont fontWithName:@"Arial" size:14];
    phoneNumberText.keyboardType = UIKeyboardTypeNumberPad;
    phoneNumberText.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:phoneNumberText];
    [self.view bringSubviewToFront:phoneNumberText];
    
    
    top = top+70;
    
    TextValue =@"Leave your comments :";
    phoneNumberLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, top,  self.view.frame.size.width - 200, 150)];
    phoneNumberLabel.text = [NSString stringWithString:TextValue];
    phoneNumberLabel.adjustsFontSizeToFitWidth = YES;
    phoneNumberLabel.textColor = [UIColor colorWithRed:38/255.0f green:138/255.0f blue:188/255.0f alpha:1.0];
    phoneNumberLabel.font = [UIFont fontWithName:@"Arial" size:16];
    [phoneNumberLabel sizeToFit];
    [self.view addSubview:phoneNumberLabel];
    
    
    itemTop = itemTop+70;
    bottomBorder = [[UIView alloc]initWithFrame:CGRectMake(50, itemTop+22,self.view.frame.size.width - 88, 0.8f)];
    bottomBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:bottomBorder];
    
    leftBorder = [[UIView alloc]initWithFrame:CGRectMake(50.2, itemTop+13, 0.8f, 10)];
    leftBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [self.view addSubview:leftBorder];
    
    rightBorder = [[UIView alloc]initWithFrame:CGRectMake(52 + ( self.view.frame.size.width - 90), itemTop+13, 0.8f, 10)];
    rightBorder.backgroundColor = [UIColor colorWithRed:0/255.0f green:48/255.0f blue:92/255.0f alpha:0.2];
    [ self.view addSubview:rightBorder];
    
    commentsText = [[UITextField alloc] initWithFrame:CGRectMake(50.90, itemTop, self.view.frame.size.width - 92, 20)];
    
    commentsText.tag = 1;
    commentsText.placeholder = @"Comments here ";
    commentsText.borderStyle = UITextBorderStyleNone;
    commentsText.font = [UIFont fontWithName:@"Arial" size:14];
    commentsText.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:commentsText];
    [self.view bringSubviewToFront:commentsText];

    
    
    
   /* [forPersonNamePlaceHolder addTarget:self action:@selector(textFieldChanged:) forControlEvents:UIControlEventEditingDidEnd];
    [forPersonNamePlaceHolder addTarget:self action:@selector(textFieldDidBeginEditing:) forControlEvents:UIControlEventEditingChanged];
    [forPersonNamePlaceHolder addTarget:self action:@selector(textFieldDidEndEditing:) forControlEvents:UIControlEventEditingChanged];
    forPersonNamePlaceHolder.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    forPersonNamePlaceHolder.keyboardType =UIKeyboardTypeDefault;
    */
    
    NSDictionary *items = @{
                            @"0" : @{@"name" : @"Save",
                                     @"color" : [UIColor orangeColor],
                                     @"tag" : @100,
                                     }
                            };
    
    UIButton *topupButton;
    top= +580;
    for(NSString *key in items){
        
        NSLog(@"%@",[[items objectForKey:key] objectForKey:@"name"]);
        topupButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        NSString *btag = [[items objectForKey:key] objectForKey:@"tag"];
        topupButton.tag = btag.integerValue;
        
        [topupButton addTarget:self action:@selector(customAction:) forControlEvents:UIControlEventTouchUpInside];
        [topupButton setTitle:[[items objectForKey:key] objectForKey:@"name"] forState:UIControlStateNormal];
        topupButton.titleLabel.font = [UIFont fontWithName:@"Arial" size:18];
        topupButton.layer.cornerRadius = 6.10f;
        
        [topupButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        top = top + 80;
        topupButton.frame = CGRectMake(130, top, self.view.frame.size.width - 200, 60);
        [topupButton.layer setBorderWidth:0.5f];
        topupButton.layer.borderColor = [UIColor colorWithRed:255/255.0f green:255/255.0f blue:168/255.0f alpha:0.8].CGColor;
        topupButton.backgroundColor = [[items objectForKey:key] objectForKey:@"color"];
        [self.view addSubview:topupButton];
        [self.view bringSubviewToFront:topupButton];
        
    }

}

- (void)didTapAnywhere:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
}

- (void)customAction:(UIButton *)sender {
    NSLog(@" Action Handled = %d" , sender.tag);
    int tag = sender.tag;
    if (tag == 100){
        
                if (personNameText.text.length <=0 || phoneNumberText.text.length<=0) {
                    [personNameText becomeFirstResponder];
        
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Input Properly"
                                                                    message:@"Please enter at least Name and Mobile number."
                                                                   delegate:nil
                                                          cancelButtonTitle:@"OK"
                                                          otherButtonTitles:nil];
                    [alert show];
                    
                    return;
                }
        
        
        NSString *post = [NSString stringWithFormat:@"personName=%@&designation=%@&companyName=%@&emailAddress=%@&phoneNumber=%@&comments=%@",personNameText.text,degisnationText.text,companyNameText.text,emailaddressText.text,phoneNumberText.text,commentsText.text];
        
        NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
        NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
        
        
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc]init];
        [request setURL:[NSURL URLWithString:@"http://92.48.124.2/guest/guest.php"]];
        [request setHTTPMethod:@"POST"];
        [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [request setHTTPBody:postData];
        
        NSURLResponse *response;
        NSLog(@"Url Respose :%@",response);
        
        NSError *err;
        NSLog(@"Error :%@",err);
        
        NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&err];
        NSString *text = @"Saved Successfully";
        if(err){
           text = @"Could not save , Might be net problem.";
        }else{
            personNameText.text =Nil;
            degisnationText.text=Nil;
            companyNameText.text=Nil;
            emailaddressText.text=Nil;
            phoneNumberText.text=Nil;
            commentsText.text=Nil;
        }
        
        NSString *responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
        //  NSLog(@"Response :%@",responseString);
    
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Thanks"
                                                        message:text
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
      
        
        


        
    }
    
    
}

- (void)registerForKeyboardNotifications
{
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification object:nil];
    
}


// Called when the UIKeyboardDidShowNotification is sent.
- (void)keyboardWasShown:(NSNotification*)aNotification
{
    
  //  [forPersonNamePlaceHolder isFirstResponder];

}

// Called when the UIKeyboardWillHideNotification is sent
- (void)keyboardWillBeHidden:(NSNotification*)aNotification
{
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    self.activeField = textField;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
   // NSLog(@"T=%@",textField.text);
    [self.formData setObject:[NSString stringWithString:textField.text] forKey:[NSString stringWithFormat:@"%d", textField.tag]];
    self.activeField = nil;
}

-(void)textFieldChanged: (UITextField *)textField
{
   // NSLog(@"T=");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
