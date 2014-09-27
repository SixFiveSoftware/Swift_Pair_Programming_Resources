//
//  AsyncTestsTests.swift
//  AsyncTestsTests
//
//  Created by BJ Miller on 6/28/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

import XCTest
import CoreData
import UIKit
import Foundation

class OurDocument: UIDocument {
    override func contentsForType(typeName: String!, error outError: NSErrorPointer) -> AnyObject! {
        var hello = "Hello world"
        var data = hello.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)
        return data
    }
    
    override func loadFromContents(contents: AnyObject!, ofType typeName: String!, error outError: NSErrorPointer) -> Bool {
        return true
    }
}

class AsyncTestsTests: XCTestCase {
    
    var document: OurDocument?
    
    override func setUp() {
        super.setUp()
        let fileURL = self.applicationDocumentsDirectory.URLByAppendingPathComponent("someFile.sqlite")
        document = OurDocument(fileURL: fileURL)
        
        if let doc = document {
            doc.saveToURL(doc.fileURL, forSaveOperation: .ForOverwriting, completionHandler: nil)
        }

    }
    
    override func tearDown() {
        document = nil
        super.tearDown()
    }
    
    func testPerformanceExample() {
        self.measureBlock() {
            self.testDocumentOpening()
        }
    }
    
    func testDocumentOpening() {
        let expectation = self.expectationWithDescription("open doc")
        
        if let doc = self.document {
            doc.openWithCompletionHandler( { success in
                XCTAssert(success, "should open the document")
                expectation.fulfill()
                })
        }
        
        self.waitForExpectationsWithTimeout(5.0, handler: nil)
    }
    
    var applicationDocumentsDirectory: NSURL {
        let urls = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        return urls[urls.endIndex-1] as NSURL
    }
    
}
