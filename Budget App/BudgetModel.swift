import Combine
import SwiftUI

class BudgetModel: ObservableObject {
    static let shared = BudgetModel()
    
         let totKey = "total"
         let billsFeesKey = "billsFees"
         let foodKey = "food"
         let entertainmentKey = "entertainment"
         let familyKey = "family"
         let fashionKey = "fashion"
         let misKey = "mis"

        @Published public var tot: String {
            didSet {
                UserDefaults.standard.set(tot, forKey: totKey)
            }
        }

        @Published public var billsFees: String {
            didSet {
                UserDefaults.standard.set(billsFees, forKey: billsFeesKey)
            }
        }

        @Published public var food: String {
            didSet {
                UserDefaults.standard.set(food, forKey: foodKey)
            }
        }

        @Published public var entertainment: String {
            didSet {
                UserDefaults.standard.set(entertainment, forKey: entertainmentKey)
            }
        }

        @Published public var family: String {
            didSet {
                UserDefaults.standard.set(family, forKey: familyKey)
            }
        }

        @Published public var fashion: String {
            didSet {
                UserDefaults.standard.set(fashion, forKey: fashionKey)
            }
        }

        @Published public var mis: String {
            didSet {
                UserDefaults.standard.set(mis, forKey: misKey)
            }
        }

        // Initialize variables from UserDefaults
        private init() {
            self.tot = UserDefaults.standard.string(forKey: totKey) ?? ""
            self.billsFees = UserDefaults.standard.string(forKey: billsFeesKey) ?? ""
            self.food = UserDefaults.standard.string(forKey: foodKey) ?? ""
            self.entertainment = UserDefaults.standard.string(forKey: entertainmentKey) ?? ""
            self.family = UserDefaults.standard.string(forKey: familyKey) ?? ""
            self.fashion = UserDefaults.standard.string(forKey: fashionKey) ?? ""
            self.mis = UserDefaults.standard.string(forKey: misKey) ?? ""
        }
    
    func calculateRemainingAmount() -> Double {
        let total = Double(tot) ?? 0.0
        let bills = Double(billsFees) ?? 0.0
        let foodCost = Double(food) ?? 0.0
        let entertainmentCost = Double(entertainment) ?? 0.0
        let familyCost = Double(family) ?? 0.0
        let fashionCost = Double(fashion) ?? 0.0
        let misCost = Double(mis) ?? 0.0
        
        return total - (bills + foodCost + entertainmentCost + familyCost + fashionCost + misCost)
    }
    
    func calculateTotalBudgeted() -> Double {
        let bills = Double(billsFees) ?? 0.0
        let foodCost = Double(food) ?? 0.0
        let entertainmentCost = Double(entertainment) ?? 0.0
        let familyCost = Double(family) ?? 0.0
        let fashionCost = Double(fashion) ?? 0.0
        let misCost = Double(mis) ?? 0.0
        
        return bills + foodCost + entertainmentCost + familyCost + fashionCost + misCost
    }
}
