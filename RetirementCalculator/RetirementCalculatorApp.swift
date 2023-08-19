//
//  RetirementCalculatorApp.swift
//  RetirementCalculator
//
//  Created by Shafee Rehman on 19/08/23.
//

import SwiftUI
import AppCenter
import AppCenterCrashes
import AppCenterAnalytics

@main
struct RetirementCalculatorApp: App {
    
    init() {
        AppCenter.start(withAppSecret: "d37fd133-4945-4097-86a2-80d25c3d5393", services: [Analytics.self, Crashes.self])
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
