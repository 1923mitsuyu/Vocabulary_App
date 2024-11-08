import SwiftUI

struct MainView: View {
    
    @State private var decks: [Deck] = sampleDecks
    
    init() {
        // Customize the unselected tab icon color
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
        let appearance: UITabBarAppearance = UITabBarAppearance()
        appearance.backgroundColor = .white
        UITabBar.appearance().scrollEdgeAppearance = appearance
        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        TabView {
            DeckListView(decks: $decks)
                .tabItem {
                    Label("Deck", systemImage: "list.dash")
                }
           
            StudyHomeView()
                .tabItem {
                    Label("Study", systemImage: "brain.head.profile")
                }
             
            SettingView()
                .tabItem {
                    Label("Setting", systemImage: "gearshape")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainView()
}
