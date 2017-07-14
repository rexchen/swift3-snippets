//
//  Singleton.swift
//
//  Created by Rex on 6/17/16.
//  Copyright © 2016 huijun.org. All rights reserved.
//

import Foundation

class Manager: NSObject {
    class var sharedInstance: Manager {
        struct Static {
            static let instance: Manager = Manager()
        }
        return Static.instance
    }

  public static let shared: Manager = {
    let instance = Manager()
    // setup code
    return instance
  }()
}