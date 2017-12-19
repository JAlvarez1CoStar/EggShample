//
//  Bundle+Utils.swift
//  MyEggShample
//
//  Created by Jose Alvarez on 12/19/17.
//

import Foundation

extension Bundle {
    private class NoNameClass {}

    static func coStarUIBundle() -> Bundle {
        let bundle = Bundle(for: NoNameClass.self)

        if let path = bundle.path(forResource: "MyEggShample", ofType: "bundle") {
            return Bundle(path: path)!
        }
        return bundle
    }
}
