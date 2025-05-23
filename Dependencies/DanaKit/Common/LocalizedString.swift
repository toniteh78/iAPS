//
//  LocalizedString.swift
//  DanaKit
//
//  Created by Bastiaan Verhaar on 05/12/2023.
//  Copyright © 2023 Randall Knutson. All rights reserved.
//

import Foundation

private class FrameworkBundle {
    static let main = Bundle(for: DanaKitHUDProvider.self)
}

func LocalizedString(_ key: String, tableName: String? = nil, value: String? = nil, comment: String) -> String {
    if let value = value {
        return NSLocalizedString(key, tableName: tableName, bundle: FrameworkBundle.main, value: value, comment: comment)
    } else {
        return NSLocalizedString(key, tableName: tableName, bundle: FrameworkBundle.main, comment: comment)
    }
}
