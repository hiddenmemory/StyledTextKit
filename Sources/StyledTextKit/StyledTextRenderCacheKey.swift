//
//  StyledTextKitRenderCacheKey.swift
//  StyledTextKit
//
//  Created by Ryan Nystrom on 12/14/17.
//  Copyright © 2017 Ryan Nystrom. All rights reserved.
//

import UIKit

internal struct StyledTextRenderCacheKey: Hashable, Equatable {
  
  let width: CGFloat
  let attributedText: NSAttributedString
  let backgroundColor: UIColor?
  
  // MARK: Hashable
  
  func hash(into hasher: inout Hasher) {
    width.hash(into: &hasher)
    attributedText.hash(into: &hasher)
  }
  
  // MARK: Equatable
  
  public static func ==(lhs: StyledTextRenderCacheKey, rhs: StyledTextRenderCacheKey) -> Bool {
    return lhs.width == rhs.width
      && lhs.attributedText == rhs.attributedText
      && lhs.backgroundColor == rhs.backgroundColor
  }
  
}
