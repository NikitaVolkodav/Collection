//
//  TimeService.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

import Foundation
import CoreFoundation

class MeasureTimeService {
    
    func measureTime(for closure:  () -> () ) -> String {
        let start = CFAbsoluteTimeGetCurrent()
        closure()
        let diff = CFAbsoluteTimeGetCurrent() - start
        return String(format: "%.3f", diff)
    }
}
