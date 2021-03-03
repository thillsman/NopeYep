import XCTest
@testable import NopeYep

final class NopeYepTests: XCTestCase {
    func testTrues() {
        ["yep","1","0 but true","👍","👍🏻","👍🏼","👍🏽","👍🏾","👍🏿"].forEach { subject in
            XCTAssertTrue(subject)
        }
    }
    
    func testFalses() {
        ["nope","","0","nan","👎","👎🏻","👎🏼","👎🏽","👎🏾","👎🏿"].forEach { subject in
            XCTAssertFalse(subject)
        }
    }

    func testTruesTrim() {
        [" yep "," 1 "," 0 but true "," 👍 "," 👍🏻 "," 👍🏼 "," 👍🏽 "," 👍🏾 "," 👍🏿 "].forEach { subject in
            XCTAssertTrue(subject)
        }
    }
    
    func testFalsesTrim() {
        [" nope "," "," 0 "," nan "," 👎 "," 👎🏻 "," 👎🏼 "," 👎🏽 "," 👎🏾 "," 👎🏿 "].forEach { subject in
            XCTAssertFalse(subject)
        }
    }
}
