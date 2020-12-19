//
//  MyAPI+Testing.swift
//  Network Layer
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import Foundation

extension MovieAPI {
    
    public var sampleData: Data {
        switch self {
        // Change this ya Hassan and add stubbed responses for the all cases
        case .login: return stubbedResponse("Test")
        default: return stubbedResponse("Test")
        }
    }
    
}

func stubbedResponse(_ fileName: String) -> Data! {
    @objc class TestClass: NSObject { }
    
    let bundle = Bundle(for: TestClass.self)
    let path = bundle.path(forResource: fileName, ofType: "json")
    return (try? Data(contentsOf: URL(fileURLWithPath: path!)))
}
