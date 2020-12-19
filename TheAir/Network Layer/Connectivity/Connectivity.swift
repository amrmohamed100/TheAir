//
//  Connectivity.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import Foundation
import Alamofire

class Connectivity {
    
    class var isConnectedToInternet:Bool {
        return NetworkReachabilityManager()!.isReachable
    }
    
}
