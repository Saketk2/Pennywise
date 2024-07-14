import SwiftUI
import FirebaseAuth

struct Signup: View {
    @State private var email = ""
    @State private var password = ""
    @State private var alertMessage = ""
    @State private var showAlert = false
    @State private var isRegistered = false
    
    var body: some View {
        if isRegistered {
            Main()
        } else {
            content
        }
    }
    
    var content: some View {
        ZStack {
            Color(red: 141/255, green: 153/255, blue: 174/255).edgesIgnoringSafeArea(.all)
            
            ZStack {
                Circle()
                    .fill(Color.red)
                    .frame(width: 350, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                
                VStack {
                    Text("Sign up With Email")
                        .font(.system(size: 30, design: .rounded))
                        .padding(.top, -150)
                        .frame(width: 300)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    TextField("Email Address...", text: $email)
                        .frame(width: 250)
                        .padding()
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2)
                        )
                    
                    SecureField("Password...", text: $password)
                        .frame(width: 250)
                        .padding()
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2)
                        )
                    
                    Button(action: signUp) {
                        Text("Sign up")
                            .frame(width: 200)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(40)
                            .foregroundColor(.red)
                            .padding(1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    }
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    func signUp() {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Error signing up: \(error.localizedDescription)")
                alertMessage = "Failed to sign up. Please check your information."
                showAlert = true
            } else {
                isRegistered = true
            }
        }
    }
}

struct Signup_Preview: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
