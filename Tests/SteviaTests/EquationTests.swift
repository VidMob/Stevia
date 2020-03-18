//
//  EquationTests.swift
//  Stevia
//
//  Created by Sacha Durand Saint Omer on 27/01/2017.
//  Copyright © 2017 Sacha Durand Saint Omer. All rights reserved.
//

import XCTest
import Stevia

class EquationTests: XCTestCase {
    
    var win: UIWindow!
    var ctrler: UIViewController!
    
    override func setUp() {
        super.setUp()
        win = UIWindow(frame: UIScreen.main.bounds)
        ctrler =  UIViewController()
        win.rootViewController = ctrler
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTop() {
        let v = UIView()
        ctrler.view.sv(v)
        v.top == ctrler.view.top + 10
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, 10)
    }
    
    func testTopReflexive() {
        let v = UIView()
        ctrler.view.sv(v)
        ctrler.view.top + 10 == v.top
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, 10)
    }
    
    func testTopGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.top >= ctrler.view.top + 10
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, 10)
    }
    
    func testTopLessThanOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.top <= ctrler.view.top + 10
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, 10)
    }
    
    func testBottom() {
        let v = UIView()
        ctrler.view.sv(v)
        v.bottom == ctrler.view.bottom - 23
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, ctrler.view.frame.height - 23)
    }
    
    func testBottomReflexive() {
        let v = UIView()
        ctrler.view.sv(v)
        ctrler.view.bottom - 23 == v.bottom
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, ctrler.view.frame.height - 23)
    }
    
    func testBottomGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.bottom >= ctrler.view.bottom - 23
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, ctrler.view.frame.height - 23)
    }
    
    func testBottomLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.bottom <= ctrler.view.bottom - 23
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, ctrler.view.frame.height - 23)
    }
    
    func testLeft() {
        let v = UIView()
        ctrler.view.sv(v)
        v.left == ctrler.view.left + 72
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, 72)
    }
    
    func testLeftReflexive() {
        let v = UIView()
        ctrler.view.sv(v)
        ctrler.view.left + 72 == v.left
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, 72)
    }
    
    func testLeftGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.left >= ctrler.view.left + 72
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, 72)
    }
    
    func testLeftLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.left <= ctrler.view.left + 72
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, 72)
    }
    
    func testRight() {
        let v = UIView()
        ctrler.view.sv(v)
        v.right == ctrler.view.right - 13
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, ctrler.view.frame.width - 13)
    }
    
    func testRightReflexive() {
        let v = UIView()
        ctrler.view.sv(v)
        ctrler.view.right - 13 == v.right
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, ctrler.view.frame.width - 13)
    }
    
    func testRightGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.right >= ctrler.view.right - 13
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, ctrler.view.frame.width - 13)
    }
    
    func testRightLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.right >= ctrler.view.right - 13
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, ctrler.view.frame.width - 13)
    }
    
    func testWidth() {
        let v = UIView()
        ctrler.view.sv(v)
        v.width == ctrler.view.width - 52
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.width, ctrler.view.frame.width - 52)
    }
    
    func testWidthReflexive() {
        let v = UIView()
        ctrler.view.sv(v)
        ctrler.view.width - 52 == v.width
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.width, ctrler.view.frame.width - 52)
    }
    
    func testWidthGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.width >= ctrler.view.width - 52
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.width, ctrler.view.frame.width - 52)
    }
    
    func testWidthLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.width <= ctrler.view.width - 52
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.width, 0)
    }
    
    func testHeight() {
        let v = UIView()
        ctrler.view.sv(v)
        v.height == ctrler.view.height + 34
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.height, ctrler.view.frame.height + 34)
    }
    
    func testHeightReflexive() {
        let v = UIView()
        ctrler.view.sv(v)
        ctrler.view.height + 34 == v.height
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.height, ctrler.view.frame.height + 34)
    }
    
    func testHeightGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.height >= ctrler.view.height - 34
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.height, ctrler.view.frame.height - 34)
    }
    
    func testHeightLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.height <= ctrler.view.height - 34
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.height, 0)
    }

    // Single Value
    
    func testSingleValueTop() {
        let v = UIView()
        ctrler.view.sv(v)
        v.top == 10
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, 10)
    }
    
    func testSingleValueTopGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.top >= 10
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, 10)
    }
    
    func testSingleValueLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.top <= 10
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, 10)
    }
    
    func testSingleValueBottom() {
        let v = UIView()
        ctrler.view.sv(v)
        v.bottom == 23
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, ctrler.view.frame.height - 23)
    }
    
    func testSingleValueBottomGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.bottom >= 23
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, ctrler.view.frame.height - 23)
    }
    
    func testSingleValueBottomLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.bottom <= 23
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.y, ctrler.view.frame.height - 23)
    }
    
    func testSingleValueLeft() {
        let v = UIView()
        ctrler.view.sv(v)
        v.left == 72
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, 72)
    }
    
    func testSingleValueLeftGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.left >= 72
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, 72)
    }
    
    func testSingleValueLeftLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.left <= 72
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, 72)
    }
    
    func testSingleValueRight() {
        let v = UIView()
        ctrler.view.sv(v)
        v.right == 13
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, ctrler.view.frame.width - 13)
    }
    
    func testSingleValueRightGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.right >= 13
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, ctrler.view.frame.width - 13)
    }
    
    func testSingleValueRightLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.right <= 13
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.origin.x, ctrler.view.frame.width - 13)
    }
    
    func testSingleValueWidth() {
        let v = UIView()
        ctrler.view.sv(v)
        v.width == 23
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.width, 23)
    }
    
    func testSingleValueWidthGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.width >= 23
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.width, 23)
    }
    
    func testSingleValueWidthLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.centerInContainer() // There is a bug where we need to have a x/y placement for size to be accurate.
        v.width <= 23
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.width, 0)
    }
    
    func testSingleValueHeight() {
        let v = UIView()
        ctrler.view.sv(v)
        v.height == 94
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.height, 94)
    }
    
    func testSingleValueHeightGreaterOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.height >= 94
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.height, 94)
    }
    
    func testSingleValueHeightLessOrEqual() {
        let v = UIView()
        ctrler.view.sv(v)
        v.centerInContainer() // There is a bug where we need to have a x/y placement for size to be accurate.
        v.height <= 94
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(v.frame.height, 0)
    }
    
    func testScrollView() {
        let scrollView = UIScrollView()
        let contentView = UIView()
        ctrler.view.sv(
            scrollView.sv(
                contentView
            )
        )
        scrollView.fillContainer()
        contentView.width == ctrler.view.width
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(contentView.frame.width, ctrler.view.frame.width)
    }
    
    func testScrollViewReflexive() {
        let scrollView = UIScrollView()
        let contentView = UIView()
        ctrler.view.sv(
            scrollView.sv(
                contentView
            )
        )
        scrollView.fillContainer()
        ctrler.view.width == contentView.width
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        XCTAssertEqual(contentView.frame.width, ctrler.view.frame.width)
    }
    
    func testDifferentViewHierarchies() {
        // Classic example of a field with a dropdown.
        let box = UIView()
        let field = UIView()
        let dropdown = UIView()
        
        ctrler.view.sv(
            box.sv(
                field
            ),
            dropdown
        )
        
        box.fillContainer(60)
        |-field-|.top(1).height(50)//centerVertically()
        
        |dropdown|
        dropdown.bottom == ctrler.view.bottom
       

        dropdown.top == field.bottom // This line is being tested test out reflexivity

        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        
        let absoluteFieldBottom = field.frame.origin.y + field.frame.height + box.frame.origin.y
        XCTAssertEqual(absoluteFieldBottom, dropdown.frame.origin.y)
    }
    
    func testDifferentViewHierarchiesReflexivity() {
        // Classic example of a field with a dropdown.
        let box = UIView()
        let field = UIView()
        let dropdown = UIView()
        
        ctrler.view.sv(
            box.sv(
                field
            ),
            dropdown
        )
        
        box.fillContainer(60)
        |-field-|.top(1).height(50)//centerVertically()
        
        |dropdown|
        dropdown.bottom == ctrler.view.bottom
        
        field.bottom == dropdown.top // This line is being tested test out reflexivity
        
        ctrler.view.layoutIfNeeded() // This is needed to force auto-layout to kick-in
        
        let absoluteFieldBottom = field.frame.origin.y + field.frame.height + box.frame.origin.y
        XCTAssertEqual(absoluteFieldBottom, dropdown.frame.origin.y)
    }
}
