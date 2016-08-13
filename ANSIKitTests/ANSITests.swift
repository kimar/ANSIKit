import XCTest
@testable import ANSIKit

class ANSITests: XCTestCase {
    func testAnsi() {
        let string = try! String(contentsOfFile: NSBundle(forClass: self.dynamicType).pathForResource("log", ofType: "txt")!)
        let helper = AnsiHelper(color: .blackColor(), font: .systemFontOfSize(12))
        let attributedString = ansiEscapedAttributedString(helper, ansi: string)
        print(attributedString)
    }
}