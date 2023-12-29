//
//  FileParserTests.swift
//  AdventOfCodeTests
//
//  Created by AJ Schrier on 12/26/23.
//

import XCTest

final class FileParserTests: XCTestCase {
    func testStringsFromInputFile() throws {
        let file = Bundle.main.url(forResource: "FileParserInput", withExtension: "txt")
        let strings = FileParser.sharedInstance.stringsFromInputFile(file: file)
        let validStringList = [
            "1abc2",
            "pqr3stu8vwx",
            "a1b2c3d4e5f",
            "treb7uchet"
        ]
        XCTAssertEqual(strings, validStringList)
    }
}
