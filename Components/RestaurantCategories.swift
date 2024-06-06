

import SwiftUI

struct RestaurantCategories: View {
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                ForEach (RestaurantCategory.allCases) { restaurantCategory in
                    NavigationLink {
                        RestaurantsView(restaurantCategory: restaurantCategory)
                    } label: {
                        CategoryCard(category: restaurantCategory.rawValue, image: Image("\(restaurantCategory.rawValue)"))
                    }
                }
                .padding(.trailing)
            }
            .padding(.leading)
        }
    }
}

struct RestaurantCategories_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantCategories()
    }
}


