import SwiftUI

struct Navbar: View {
    var body: some View {
        TabView{
            Main()
                .tabItem(){
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Scanner()
                .tabItem(){
                    Image(systemName: "camera")
                    Text("Scanner")
                }
            
            Setting()
                .tabItem(){
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
    }
}

struct Navbar_Preview: PreviewProvider {
    static var previews: some View {
        let budgetModel = BudgetModel.shared

                return Navbar()
                    .environmentObject(budgetModel)
    }
}

