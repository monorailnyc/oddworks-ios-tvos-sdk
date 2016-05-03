//
//  OddRelationship.swift
//  OddSDK
//
//  Created by Patrick McConnell on 5/3/16.
//  Copyright © 2016 Patrick McConnell. All rights reserved.
//

import UIKit

public struct OddRelationship {
  public var id: String
  public var mediaObjectType: OddMediaObjectType
}

public struct OddRelationshipNode {
  var single: OddRelationship?
  var multiple: Array<OddRelationship>?
  var numberOfRelationships: Int {
    get {
      if self.single != nil {
        return 1
      } else if self.multiple != nil {
        return self.multiple!.count
      }
      
      return 0
    }
  }
  
  public var relationship: Any? {
    get {
      return single != nil ? single : multiple
    }
  }
}
