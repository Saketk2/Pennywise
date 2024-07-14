import SwiftUI

struct Main: View {
    @State var percent: CGFloat = 0
    @State private var totalMoney: Double = 0
    @ObservedObject var budgetModel = BudgetModel.shared
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 141/255, green: 153/255, blue: 174/255).edgesIgnoringSafeArea(.all)
                ZStack{
                    
                    //The first ZStack is the progress bar + box
                    ZStack {
                        VStack(){
                            Rectangle()
                                .fill(Color(red: 237/255, green: 242/255, blue: 244/255))
                                .opacity(0.9)
                                .frame(width: 350, height: 130)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .offset(y: -265)
                        }.padding()
                        
                        
                        VStack(spacing: 50){
                            Text("Total Spent")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, -270)
                            
                            Progressbar()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .padding(.top, -280)
                            
                            VStack(spacing: 50){
                                Text("$\(String(format: "%.2f", BudgetModel.shared.calculateTotalBudgeted()))/$\(BudgetModel.shared.tot)")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.top, -280)
                            }
                        }
                        
                    }
                    
                    //The second ZStack is for the first category
                    ZStack {
                        VStack(){
                            Rectangle()
                                .fill(Color(red: 237/255, green: 242/255, blue: 244/255))
                                .frame(width: 160, height: 120)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .offset(y: -120)
                                .offset(x: -87)
                        }.padding()
                        
                        
                        VStack(spacing: 50){
                            Text("Bills/Fees")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, -170)
                                .offset(x: -86)
                        }
                        
                        VStack(spacing: 50){
                            Text("$\(BudgetModel.shared.billsFees) spent")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, -130)
                                .offset(x: -86)
                        }
                    }
                    
                    //The third ZStack is for the second category
                    ZStack {
                        VStack(){
                            Rectangle()
                                .fill(Color(red: 237/255, green: 242/255, blue: 244/255))
                                .frame(width: 160, height: 120)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .offset(y: -120)
                                .offset(x: 87)
                        }.padding()
                        
                        
                        VStack(spacing: 50){
                            Text("Food")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, -170)
                                .offset(x: 86)
                        }
                        
                        VStack(spacing: 50){
                            Text("$\(BudgetModel.shared.food) spent")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, -130)
                                .offset(x: 86)
                        }
                    }
                    //The fourth ZStack is for the third category
                    ZStack {
                        VStack(){
                            Rectangle()
                                .fill(Color(red: 237/255, green: 242/255, blue: 244/255))
                                .frame(width: 160, height: 120)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .offset(y: 20)
                                .offset(x: -86)
                        }.padding()
                        
                        
                        VStack(spacing: 50){
                            Text("Entertainemnt")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, 20)
                                .offset(x: -87)
                                .offset(y: -27)
                        }
                        VStack(spacing: 50){
                            Text("$\(BudgetModel.shared.entertainment) spent")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, 20)
                                .offset(x: -87)
                                .offset(y: 17)
                        }
                    }
                    //The fifth ZStack is for the fourth category
                    ZStack {
                        VStack(){
                            Rectangle()
                                .fill(Color(red: 237/255, green: 242/255, blue: 244/255))
                                .frame(width: 160, height: 120)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .offset(y: 20)
                                .offset(x: 87)
                        }.padding()
                        
                        
                        VStack(spacing: 50){
                            Text("Family")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, 20)
                                .offset(x: 87)
                                .offset(y: -27)
                        }
                        VStack(spacing: 50){
                            Text("$\(BudgetModel.shared.family) spent")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, 20)
                                .offset(x: 87)
                                .offset(y: 17)
                        }
                    }
                    //The sixth ZStack is for the fifth category
                    ZStack {
                        VStack(){
                            Rectangle()
                                .fill(Color(red: 237/255, green: 242/255, blue: 244/255))
                                .frame(width: 160, height: 120)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .offset(y: 160)
                                .offset(x: -87)
                        }.padding()
                        
                        
                        VStack(spacing: 50){
                            Text("Fashion")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, 20)
                                .offset(x: -87)
                                .offset(y: 113)
                        }
                        VStack(spacing: 50){
                            Text("$\(BudgetModel.shared.fashion) spent")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, 20)
                                .offset(x: -87)
                                .offset(y: 153)
                        }
                    }
                    //The seventh ZStack is for the sixth category
                    ZStack {
                        VStack(){
                            Rectangle()
                                .fill(Color(red: 237/255, green: 242/255, blue: 244/255))
                                .frame(width: 160, height: 120)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .offset(y: 160)
                                .offset(x: 87)
                        }.padding()
                        
                        
                        VStack(spacing: 50){
                            Text("Miscellanous")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, 20)
                                .offset(x: 87)
                                .offset(y: 113)
                        }
                        VStack(spacing: 50){
                            Text("$\(BudgetModel.shared.mis) spent")
                                .font(.system(size: 20, weight: .medium))
                                .padding(.top, 20)
                                .offset(x: 87)
                                .offset(y: 153)
                        }
                    }
                    
                    NavigationLink(destination: Categories()) {
                        Text("Edit Categories")
                            .navigationBarBackButtonHidden(true)
                            .frame(width: 200)
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
                    .offset(x: 0, y: 270)
                }
            }
        }
    }
}

struct Main_Preview: PreviewProvider {
    static var previews: some View {
        let budgetModel = BudgetModel.shared

        return Main()
            .environmentObject(budgetModel)
    }
}
