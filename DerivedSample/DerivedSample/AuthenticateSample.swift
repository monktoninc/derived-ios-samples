/// The MIT License (MIT)
///
/// Copyright (c) 2016 Monkton, Inc
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in all
/// copies or substantial portions of the Software.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
/// SOFTWARE.
///

import Foundation
import DerivedKit

class AuthenticateSample {
	
	/**
	Performs the authentication action
	*/
	func authUser() {
		
		// Authenticate the user
		DerivedController.getInstance().authenticate(withHashingAlgorithm: DerivedHashingAlgorithm.sha512) {
            (wasSuccess: Bool, credentials: CredentialSet?) in
			
			if wasSuccess {

				// All data is base64 encoded for easy use
				let certificate: String? = credentials?.certificate;
				let publicKey: String? = credentials?.publicKey;
				let toSign: String? = credentials?.dataToSign;
				let signed: String? = credentials?.signedData;
				
				/** 
				Send credentials to server to authenticate the user, 
				
				You must verify the "signed" data with the data to sign "toSign", 
				the public key, and the hashing algorithm. This determines if 
				the user has the private key. This is done through message 
				digest verification. 
				
				Additionally, you must check the OCSP or CRL for the certificate, 
				verifying that the certificate has been revoked for the user.
				**/
			}
			
		};
		
		
	}
	
}
