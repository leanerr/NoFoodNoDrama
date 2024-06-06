
import SwiftUI

struct RestaurantList: View {
    
    var restaurants: [Restaurant]
    let columns = [GridItem(.adaptive(minimum: 160), spacing: 30)]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: 50) {
                ForEach(restaurants, id: \.id) { restaurant in
                    NavigationLink {
                        RestaurantMenu(restaurant: restaurant)
                    } label: {
                        RestaurantCard(restaurant: restaurant)
                    }
                }
            }
            .padding(.top)
        }
    }
}

struct RestaurantList_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantList(restaurants: Restaurant.all)
    }
}
