import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      NavigationLink {
        Text("Hello, World")
      } label: {
        Text("Hello, World")
      }
      .navigationBarTitle("Threads")
    }
  }
}

#Preview {
  ContentView()
}
