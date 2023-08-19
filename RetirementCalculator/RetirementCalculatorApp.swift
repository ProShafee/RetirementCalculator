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
        AppCenter.start(withAppSecret: "4668d64b-5945-4f00-b09c-e1d61b5668ae", services: [Analytics.self, Crashes.self])
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
