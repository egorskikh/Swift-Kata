import UIKit

// Base64 Encoding

extension String {
    
  public var toBase64: String {
    self.data(using: .utf8)!.base64EncodedString()
  }
  
  public var fromBase64: String {
    String(data: Data(base64Encoded: self)!, encoding: .utf8)!
  }
    
}
