import SwiftUI

struct LoginView: View {
  @State private var email = ""
  @State private var password = ""

  var body: some View {
    NavigationStack {
      VStack {
        Spacer()

        Image("threads-app-icon")
          .resizable()
          .scaledToFit()
          .frame(width: 120, height: 120)
          .padding()

        VStack {
          TextField("Email", text: $email)
            .textFieldStyle(RoundedBorderTextFieldStyle())
          SecureField("Password", text: $password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }

        NavigationLink {
          Text("Forgot Password View")
        } label: {
          Text("Forgot Password?")
            .font(.footnote)
            .fontWeight(.semibold)
            .padding(.top)
            .padding(.trailing, 20)
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .trailing)
        }

        Button {} label: {
          Text("Login")
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding()
            .frame(width: 352, height: 44)
            .background(.black)
            .cornerRadius(10)
        }

        Spacer()

        Divider()

        NavigationLink {
          Text("Registeration View")
        } label: {
          HStack(spacing: 3) {
            Text("Don't have an account?")
            Text("Sign Up")
              .fontWeight(.bold)
          }
          .font(.footnote)
          .foregroundColor(.black)
        }
        .padding(.vertical, 16)
      }
    }
  }
}

#Preview {
  LoginView()
}
