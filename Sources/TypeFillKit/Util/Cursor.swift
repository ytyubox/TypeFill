//
//  Cursor.swift
//  TypeFillKit
//
//  Created by Yume on 2021/2/5.
//

import Foundation
import SwiftSyntax
import SourceKittenFramework

public struct Cursor {
    let filePath: String
    let arguments: [String]
    
    func callAsFunction(_ offset: Int) throws -> TypeSyntax? {
        guard let type = try Request.cursorInfo(file: filePath, offset: ByteCount(offset), arguments: arguments).send()["key.typename"] as? String else {return nil}
        return SyntaxFactory.makeTypeIdentifier(type)
            .withLeadingTrivia(.spaces(1))
    }
}