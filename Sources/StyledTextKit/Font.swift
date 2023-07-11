//
//  Font.swift
//  StyledTextKit
//
//  Created by Ryan Nystrom on 2/19/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import UIKit

public enum Font: Hashable, Equatable {
  
  public enum SystemFont: Hashable, Equatable {
    case `default`
    case bold
    case italic
    case weighted(UIFont.Weight)
    case monospaced(UIFont.Weight)
    
    // MARK: Hashable
    
    public func hash(into hasher: inout Hasher) {
      switch self {
      case .default: 0.hash(into: &hasher)
      case .bold: 1.hash(into: &hasher)
      case .italic: 2.hash(into: &hasher)
      case .weighted(let weight): weight.hash(into: &hasher)
      case .monospaced(let weight): weight.hash(into: &hasher)
      }
    }
    
    // MARK: Equatable
    
    public static func ==(lhs: SystemFont, rhs: SystemFont) -> Bool {
      return lhs.hashValue == rhs.hashValue
    }
  }
  
  case name(String)
  case descriptor(UIFontDescriptor)
  case system(SystemFont)
  
  // MARK: Hashable
  
  public func hash(into hasher: inout Hasher) {
    switch self {
    case .name(let name): name.hash(into: &hasher)
    case .descriptor(let descriptor): descriptor.hash(into: &hasher)
    case .system(let system): system.hash(into: &hasher)
    }
  }
  
  // MARK: Equatable
  
  public static func ==(lhs: Font, rhs: Font) -> Bool {
    return lhs.hashValue == rhs.hashValue
  }
  
}
