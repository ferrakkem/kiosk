# kiosk
kiosk it's small application for ipad .to keep user information any kind of event  .

#generate View in ViewDidLoad 
- (void)viewDidLoad {
  // add here code or view code for User interface 
}

#Button on press action 
after input all value when your press save or send button then action will occour here. Here i post data in URL .For my 
application i save this data to my server 

            personNameText 
            degisnationText 
            companyNameText 
            emailaddressText 
            phoneNumberText 
            commentsText 
    for save data i made a database where i put user input data .        
    
- (void)customAction:(UIButton *)sender{
   // for POST data;
    NSString *post = [NSString stringWithFormat:@"personName=%@&designation=%@&companyName=%@&emailAddress=%@&phoneNumber=%@&comments=%@",personNameText.text,degisnationText.text,companyNameText.text,emailaddressText.text,phoneNumberText.text,commentsText.text];
        
        NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
        NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
        
        
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc]init];
        [request setURL:[NSURL URLWithString:@"httpUrl/yourfileName.php"]];
        [request setHTTPMethod:@"POST"];
        [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [request setHTTPBody:postData];
        
        NSURLResponse *response;
        NSLog(@"Url Respose :%@",response);
        
        NSError *err;
        NSLog(@"Error :%@",err);
        
        NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&err];
   
   
}
