//
//  ViewController.m
//  DerivedSample-ObjC
//
//  Created by Harold Smith  on 7/17/16.
//  Copyright © 2016 Monkton, Inc. All rights reserved.
//

#import "ViewController.h"
#import <DerivedKit/DerivedKit-Swift.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)signWithDerivedTapped:(id)sender {
	
	NSData *data = [@"Hello!" dataUsingEncoding:NSUTF8StringEncoding];
	
	[[DerivedController getInstance] signWithData:data callback:^(BOOL wasSuccess, NSData * _Nullable data) {
		NSLog(@"data signed");
	}];
	
}

- (IBAction)loginWithDerivedTapped:(id)sender {

	[[DerivedController getInstance] authenticate:^(BOOL wasSuccess, CredentialSet * _Nullable credentials) {
		if (wasSuccess) {
			
			NSString *certificate = credentials.certificate;
			NSString *publicKey = credentials.publicKey;
			NSString *toSign = credentials.dataToSign;
			NSString *signedData = credentials.signedData;
			
		}
	}];
	
}

@end
