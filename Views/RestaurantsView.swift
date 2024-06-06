

import SwiftUI

struct RestaurantsView: View {
    
    var restaurantCategory: RestaurantCategory
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    // List of restaurants in a specific ethnic category
    var restaurants: [Restaurant] {
        return Restaurant.all.filter{ $0.category == restaurantCategory.rawValue }
    }
    
    var body: some View {
        RestaurantList(restaurants: restaurants)
            .navigationBarTitle(Text(restaurantCategory.rawValue + " Food"), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton())
    }
}

struct RestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantsView(restaurantCategory: RestaurantCategory.thai)
    }
}
