

import SwiftUI

struct RestaurantMenu: View {
    
    var restaurant: Restaurant
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(restaurant.menu, id: \.id) { dish in
                    DishCard(dish: dish)
                }
                
                Divider()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton())
        .navigationBarTitle(Text(restaurant.name), displayMode: .inline)
    }
}

struct RestaurantMenu_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantMenu(restaurant: Restaurant.all[2])
    }
}
