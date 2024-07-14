import SwiftUI

struct Categories: View {
    @State private var isMainActive = false
    
    var body: some View {
        /**if isMainActive {
         Navbar()
         } else {**/
        NavigationView {
            ZStack{
                Color(red: 141/255, green: 153/255, blue: 174/255).edgesIgnoringSafeArea(.all)
                VStack {
                    VStack{
                        HStack {
                            Text("Total to Budget:")
                            TextField("", text: Binding<String>(
                                get: { BudgetModel.shared.tot },
                                set: { BudgetModel.shared.tot = $0 }
                            ))
                            .keyboardType(.decimalPad)
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray.opacity(0.6))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 2)
                        )
                        
                        HStack {
                            Text("Remaining Amount: \(String(format: "%.2f", BudgetModel.shared.calculateRemainingAmount()))")
                            Spacer()
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 237/255, green: 242/255, blue: 244/255).opacity(0.9))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 2)
                        )
                    }
                    
                    HStack {
                        Text("Bills/Fees:")
                        TextField("", text: Binding<String>(
                            get: { BudgetModel.shared.billsFees },
                            set: { BudgetModel.shared.billsFees = $0 }
                        ))
                        .keyboardType(.decimalPad)
                        Spacer()
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 237/255, green: 242/255, blue: 244/255).opacity(0.9))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    
                    HStack {
                        Text("Food:")
                        TextField("", text: Binding<String>(
                            get: { BudgetModel.shared.food },
                            set: { BudgetModel.shared.food = $0 }
                        ))
                        .keyboardType(.decimalPad)
                        Spacer()
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 237/255, green: 242/255, blue: 244/255).opacity(0.9))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    
                    HStack {
                        Text("Entertainment:")
                        TextField("", text: Binding<String>(
                            get: { BudgetModel.shared.entertainment },
                            set: { BudgetModel.shared.entertainment = $0 }
                        ))
                        .keyboardType(.decimalPad)
                        Spacer()
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 237/255, green: 242/255, blue: 244/255).opacity(0.9))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    
                    HStack {
                        Text("Family:")
                        TextField("", text: Binding<String>(
                            get: { BudgetModel.shared.family },
                            set: { BudgetModel.shared.family = $0 }
                        ))
                        .keyboardType(.decimalPad)
                        Spacer()
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 237/255, green: 242/255, blue: 244/255).opacity(0.9))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    
                    HStack {
                        Text("Fashion:")
                        TextField("", text: Binding<String>(
                            get: { BudgetModel.shared.fashion },
                            set: { BudgetModel.shared.fashion = $0 }
                        ))
                        .keyboardType(.decimalPad)
                        Spacer()
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 237/255, green: 242/255, blue: 244/255).opacity(0.9))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    
                    HStack {
                        Text("Miscellaneous:")
                        TextField("", text: Binding<String>(
                            get: { BudgetModel.shared.mis },
                            set: { BudgetModel.shared.mis = $0 }
                        ))
                        .keyboardType(.decimalPad)
                        Spacer()
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 237/255, green: 242/255, blue: 244/255).opacity(0.9))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    
                    Button(action: {
                        // Perform action when button is tapped
                        isMainActive = true
                    }) {
                        Text("Update Values")
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .padding(1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 2))
                    }
                    .padding()
                    .fullScreenCover(isPresented: $isMainActive) {
                        Navbar()
                    }
                }
                .padding()
                
            }
        }
    }
}


struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
            .environmentObject(BudgetModel.shared)
    }
}
