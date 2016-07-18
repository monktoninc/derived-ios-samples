//
//  AuthenticateSample.m
//  DerivedSample-ObjC
//
//  Created by Harold Smith  on 7/17/16.
//  Copyright © 2016 Monkton, Inc. All rights reserved.
//

#import "AuthenticateSample.h"
#import <DerivedKit/DerivedKit-Swift.h>

@implementation AuthenticateSample

/**
Performs the authentication action
*/
- (void)authUser {
	
	[[DerivedController getInstance] authenticate:^(BOOL wasSuccess, CredentialSet * _Nullable credentials) {
		
	}];
	
}

@end
