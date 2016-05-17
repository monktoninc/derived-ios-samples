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

import UIKit
import DerivedKit

class DerivedImplViewController : DerivedLoginScreen {
	
	/// Method to override when the callback has completed. This can be a
	/// success or failure callback
	///
	/// - Parameters:
	///     - wasSuccess: A boolean indicating if the process was a success
	///     - data: key data with values for the public key
	///
	/// - Returns: A boolean (true) if the superclass handled the callback. A
	///				value of false if the subclass should handle it.
	override func loginComplete(wasSuccess: Bool, data: [String:String]) -> Bool {
		if super.loginComplete(wasSuccess, data: data) {
			return true;
		}
		
		// Check for other errors now...
		if wasSuccess && data["error"] == nil {
			// Another error message...
			// let base64Encoded = data["cert"];
			// let upn = data["name"];
		}
		
		// We handled this...
		return true;
	}
	
}