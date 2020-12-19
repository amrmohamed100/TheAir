//
//  WrtieTransaction.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/17/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import Foundation
import RealmSwift

public final class WriteTransaction {
    
    private let realm: Realm
    
    internal init(realm: Realm) {
        self.realm = realm
    }
    
    public func add<T: Object>(_ value: T, update: Bool) {
        realm.add(value, update: .all)
    }
    
    public func delete<T: Object>(_ value: T) {
        realm.delete(value)
    }
}
    
