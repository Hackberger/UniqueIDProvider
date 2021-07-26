import XCTest
@testable import UniqueIDProvider

final class UniqueIDProviderTests: XCTestCase {
    func testSingletonHandle() throws {
        let idHandle = UniqueIDProvider.sharedInstance()
        XCTAssertNotNil(idHandle, "idHandle should not be nil but it is.")
    }
    
    func testSingletonUniqueHandle() throws {
        let idHandle1 = UniqueIDProvider.sharedInstance()
        XCTAssertNotNil(idHandle1, "idHandle1 should not be nil but it is.")
        
        let idHandle2 = UniqueIDProvider.sharedInstance()
        XCTAssertNotNil(idHandle2, "idHandle2 should not be nil but it is.")
    }
    
    func testValues() throws {
        let id = UniqueIDProvider.sharedInstance()
        
        let v1 = id.next()
        let v2 = id.next()
        
        XCTAssertNotEqual(v1, v2)
    }
    
    func testMoreValues() throws {
        let id1 = UniqueIDProvider.sharedInstance()
        let v1 = id1.next()

        let id2 = UniqueIDProvider.sharedInstance()
        let v2 = id2.next()
        
        XCTAssertNotEqual(v1, v2)
    }
}
