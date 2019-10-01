//
//  Logger.swift
//  CYaml
//
//  Created by 林煒峻 on 2019/10/1.
//

import Foundation
import Rainbow

let logger = Logger()
final class Logger {
    private final var events: [Event] = []
    fileprivate init() {}
    func add(event: Event) {
        self.events.append(event)
    }
    
    func log() {
        _ = self.events.map { print($0) }
        self.logImplictTypeCount()
    }
    
    private func logImplictTypeCount() {
        let implictTypeCount = self.events.filter { (event: Event) -> Bool in
            if case .implictType = event {
                return true
            }
            return false
            }.count
        
        print("""
        \("[FIX IMPLICT TYPE]: \(implictTypeCount)".applyingColor(.green))
        """)
    }
}