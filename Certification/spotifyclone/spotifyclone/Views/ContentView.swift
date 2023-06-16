import SwiftUI
import CoreData

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            ContentItemViewer()
                .font(.title)
                .tabItem{
                    VStack {
                        Image(systemName: "house")
                            .font(.largeTitle)
                        Text("Home")
                    }
                }
                .tag(0)
            
            Search()
                .font(.title)
                .tabItem{
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .font(.largeTitle)
                        Text("Search")
                    }
                }
                .tag(1)
        }
        .background(Color.black) // Cambia el color de fondo a negro
        .environment(\.colorScheme, .dark) // Aplica el modo oscuro
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
