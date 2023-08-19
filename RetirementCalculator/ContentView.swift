//
//  ContentView.swift
//  RetirementCalculator
//
//  Created by Shafee Rehman on 19/08/23.
//

import SwiftUI
import AppCenterCrashes
import AppCenterAnalytics

struct ContentView: View {
    
    @State var monthlyInvestment: String = ""
    @State var currentAge: String = ""
    @State var plannedAge: String = ""
    @State var interestRate: String = ""
    @State var currentSavings: String = ""
    @State var result: String = ""
    @State var didCrash: Bool = false
    
    var body: some View {
        VStack {
            TextField("Monthly investemnts", text: $monthlyInvestment)
                .keyboardType(.numberPad)
                .padding(6)
                .background(
                    Rectangle().stroke(Color.gray, lineWidth: 2)
                        .cornerRadius(1)
                )
            TextField("Your current age", text: $currentAge)
                .keyboardType(.numberPad)
                .padding(6)
                .background(
                    Rectangle().stroke(Color.gray, lineWidth: 2)
                        .cornerRadius(1)
                )
            TextField("Your planned retirement age", text: $plannedAge)
                .keyboardType(.numberPad)
                .padding(6)
                .background(
                    Rectangle().stroke(Color.gray, lineWidth: 2)
                        .cornerRadius(1)
                )
            TextField("Average interest rate of investments", text: $interestRate)
                .keyboardType(.numberPad)
                .padding(6)
                .background(
                    Rectangle().stroke(Color.gray, lineWidth: 2)
                        .cornerRadius(1)
                )
            TextField("Current Savings", text: $currentSavings)
                .keyboardType(.numberPad)
                .padding(6)
                .background(
                    Rectangle().stroke(Color.gray, lineWidth: 2)
                        .cornerRadius(1)
                )
            
            Button {
                let properties = ["current_age":"\(currentAge)","planned_retirement_age":"\(plannedAge)"]
                Analytics.trackEvent("calculate_retirement_amount", withProperties: properties)
                
                let retirementAmount = calculateRetirementAmount(monthlyInvestment: 10, currentAge: 10, plannedAge: 10, interestRate: 10, currentSavings: 10)
                
                result = "if you save $\(monthlyInvestment) every month for \(Int(plannedAge)! - Int(currentAge)!) years, and invest that money plus your current investment of $\(currentSavings) at a \(interestRate)% annaul interest rate, you will have $\(retirementAmount) by the time you are \(plannedAge)"
            } label: {
                Text("Calculate retirement Amount")
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.green
                    )
                    .padding()
            }
            
            Text(result)

            
        }
        .alert(isPresented: $didCrash, content: {
            Alert(
                title: Text("Oops"),
                message: Text("Sorry about that, an error occured"),
                dismissButton: .default(Text("Ok"))
            )
        })
        .onAppear {
            if Crashes.hasCrashedInLastSession {
                didCrash = true
            }
            
            Analytics.trackEvent("navigated_to_calculator")
        }
        .padding()
    }
    
    func calculateRetirementAmount(monthlyInvestment: Int, currentAge: Int, plannedAge: Int, interestRate: Int, currentSavings: Int) -> Int{
        return 1000000
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
