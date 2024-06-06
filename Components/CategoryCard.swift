

import SwiftUI

struct CategoryCard: View {
    let category: String
    let image: Image
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(20)
                .shadow(radius: 4)

            Text(category)
                .fontWeight(.semibold)
                .foregroundColor(.black)
        }
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(category: "Mexican", image: Image("Mexican"))
    }
}
