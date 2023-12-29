//
//  FileParser.swift
//  AdventOfCode2023
//
//  Created by AJ Schrier on 12/26/23.
//

import Cocoa

class FileParser: NSObject {
    static var sharedInstance = FileParser()
    
    func stringsFromInputFile(file: URL?) -> [String]? {
        var list: [String] = []
        guard let file = file else {
            return ["File not found"]
        }
        do {
            list = try (String(contentsOf: file, encoding: .utf8).split(separator: "\n") as? [String])!
        } catch {
            print("Error reading file")
            return nil
        }
        return list
    }
    
}
