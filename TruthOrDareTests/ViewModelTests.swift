//
//  TruthOrDareTests.swift
//  TruthOrDareTests
//
//  Created by Lawrey on 22/8/18.
//  Copyright © 2018 Lawrey. All rights reserved.
//

import Quick
import Nimble

@testable import TruthOrDare

class ViewModelTests: QuickSpec {
    
    override func spec() {
        
        let viewModel = ViewModel()
        
        describe("Given Truth or Dare Game Started") {
            context("when game has loaded") {
                
                it("should have 5 truths") {
                    expect(viewModel.totalTruths).to(equal(5))
                }
                
                it("should have 5 dares") {
                    expect(viewModel.totalDares).to(equal(5))
                }
                
                it("should have correct truths") {
                    expect(viewModel.getTruth(for: 0)).to(equal("What are you most self-conscious about?"))
                    expect(viewModel.getTruth(for: 1)).to(equal("What would you do if you were the opposite sex for a month?"))
                    expect(viewModel.getTruth(for: 2)).to(equal("What is the most expensive thing you have stolen?"))
                    expect(viewModel.getTruth(for: 3)).to(equal("What is the most childish thing you still do?"))
                    expect(viewModel.getTruth(for: 4)).to(equal("Have you ever let someone take the blame for something you did?"))
                }
                
                it("should have correct dares") {
                    expect(viewModel.getDare(for: 0)).to(equal("For a guy, put on makeup. For a girl, wash off your make up."))
                    expect(viewModel.getDare(for: 1)).to(equal("Dance with no music for 1 minute."))
                    expect(viewModel.getDare(for: 2)).to(equal("Try to drink a glass water while standing on your hands."))
                    expect(viewModel.getDare(for: 3)).to(equal("Let the group pose you in an embarrassing position and take a picture."))
                    expect(viewModel.getDare(for: 4)).to(equal("Curse like sailor for 20 seconds straight."))
                }
            }
        }
        
    }
    
}
