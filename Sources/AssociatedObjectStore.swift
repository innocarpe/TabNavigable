//
//  AssociatedObjectStore.swift
//  ReactorKit
//
//  Created by Suyeol Jeon on 14/04/2017.
//  Copyright © 2017 Suyeol Jeon. All rights reserved.
//
import ObjectiveC

public protocol AssociatedObjectStore {
}

extension AssociatedObjectStore {
  func associatedObject<T>(forKey key: UnsafeRawPointer) -> T? {
    return objc_getAssociatedObject(self, key) as? T
  }
  
  func setAssociatedObject<T>(_ object: T?, forKey key: UnsafeRawPointer) {
    objc_setAssociatedObject(self, key, object, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
  }
}
