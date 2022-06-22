//
//  Model.swift
//  JSONTest
//
//  Created by Рафаил Фаталиев on 21.06.2022.
//

import Foundation

struct Root: Codable {
    var data: [DataModel]
    var view: [String]
}

struct DataModel: Codable {
    var name: String
    var data: NestedData
}

extension DataModel: CustomStringConvertible {
    var description: String { "name: \(name)\ndata: \(data)" }
}

struct NestedData: Codable {
    var text: String?
    var url: String?
    var selectedId: Int?
    var variants: [Variant]?
}

extension NestedData: CustomStringConvertible {
    var description: String {
        return "text: \(text), url: \(url), selectedId: \(selectedId), variants: \(variants)"
    }
}

struct Variant: Codable {
    var id: Int
    var text: String
}

