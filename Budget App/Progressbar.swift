import SwiftUI

struct Progressbar: View {
    var width: CGFloat = 300
    var height: CGFloat = 30
    var lineWidth: CGFloat = 2
    var cornerRadius: CGFloat = 15
    var percent: CGFloat
    var barColor : Color
    
    init() {
        let totalBudgeted = BudgetModel.shared.calculateTotalBudgeted()
        let total = Double(BudgetModel.shared.tot) ?? 0.0
        
     if total > 0 {
            percent = totalBudgeted / total
        } 
        else if (totalBudgeted / total) > 1
        {
            percent = 1
        }
        else {
            percent = totalBudgeted / 1000
        }
        
        if percent < 0.60 {
            barColor = .green
        } else if percent < 0.85 {
            barColor = .yellow
        } else {
            barColor = .red
        }
        
        if percent < 0.06 && percent > 0 {
            percent = 0.07
        }
    }
    
    
    var body: some View {
        /**let gradient = LinearGradient(gradient: Gradient(colors: [green, green, yellow, yellow, red]), startPoint: .leading, endPoint: .trailing)**/
        let fillWidth = min(percent * width, width)
        
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .frame(width: width, height: height)
                .foregroundColor(Color.black.opacity(0.1))
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(Color.gray, lineWidth: lineWidth)
                )
            
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .fill(barColor)
                .frame(width: fillWidth, height: height)
            
        }
        .foregroundColor(Color.clear)
        
    }
    
}

struct Progressbar_Preview: PreviewProvider {
    static var previews: some View {
        Progressbar()
    }
}
