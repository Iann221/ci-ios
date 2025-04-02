//
//  Untitled.swift
//  AnyApp
//
//  Created by Vincentius Ian Widi Nugroho on 02/04/25.
//

import XCTest
import RxSwift

@testable import AnyApp

class PodsTests: XCTestCase {

    var disposeBag: DisposeBag!
    var viewModel: ViewModel!
    
    override func setUpWithError() throws {
        disposeBag = DisposeBag()
        viewModel = ViewModel()
    }

    override func tearDownWithError() throws {
        disposeBag = nil
        viewModel = nil
    }
    
    func testPods() throws {
        viewModel.item.subscribe(onNext: { item in
            XCTAssertEqual(item, 69)
        }).disposed(by: disposeBag)
    }

}
