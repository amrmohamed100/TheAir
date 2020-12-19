//
//  DataManager.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/17/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import Foundation
import RealmSwift

class DataManager {
    
    private let realm: Realm
    
    public convenience init() throws {
        try self.init(realm: Realm())
    }
    
    internal init(realm: Realm) {
        self.realm = realm
    }
    
    func object<T: Object>(_ type: T.Type, key: Int) -> T? {
        return realm.object(ofType: type, forPrimaryKey: key)
    }
    
    func objects<T: Object>(_ type: T.Type, predicate: NSPredicate? = nil) -> Results<T>? {
        if let predicate = predicate {
            return realm.objects(type).filter(predicate)
        } else {
            return realm.objects(type)
        }
    }
    
    public func write(_ block: (WriteTransaction) throws -> Void)
        throws {
            let transaction = WriteTransaction(realm: realm)
            try realm.write {
                try block(transaction)
            }
    }
}
