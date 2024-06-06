
import SwiftUI

struct DishDetails: View {
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject var quantityViewModel = QuantityViewModel()
    var dish: Dish
    var isUpdate: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ZStack(alignment: .topLeading) {
                // Image of the dish
                AsyncImage(
                    url: URL(string: dish.image),
                    content: { image in
                        image.resizable()
                    },
                    placeholder: {
                        Image(systemName: "photo")
                    }
                )
                
                // Close button
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .padding(12)
                        .foregroundColor(.black)
                        .background(Color(hue: 0, saturation: 0, brightness: 0.878))
                        .cornerRadius(50)
                }
                .padding(10)
            }
            .frame(height: 250)
            .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 15) {
                // Name of the dish
                Text(dish.name)
                    .padding(.leading)
                    .font(.title2)
                    .bold()
                
                // Price
                Text("$\(dish.price, specifier: "%.2f")")
                    .padding(.leading)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                // Description
                Text(dish.description)
                    .padding(.leading)
                    .font(.subheadline)
            }
            .padding(.trailing)
            
            // Customize the order
            Divider()
                .padding(.top)
            
            HStack() {
                Text("Customize")
                Spacer()
                Image(systemName: "chevron.right")
            }
            .frame(height: 50)
            .padding(.leading)
            .padding(.trailing)
            
            Divider()
        
            Spacer()
            
            // Buttons to adjust the quantity and add to cart
            VStack(spacing: 12) {
                Divider()

                HStack(spacing: 15) {
                    // Adjust quantity button
                    QuantityButton(quantityViewModel: quantityViewModel)
                    
                    if !isUpdate {
                        // Add to Cart button
                        AddToCartButton(dish: dish, quantityViewModel: quantityViewModel)
                    }
                    else {
                        UpdateCartButton(dish: dish, quantityViewModel: quantityViewModel)
                    }
                }
            }
            .frame(height: 0)
            .padding()
            .padding(.bottom)
        }
    }
}

class QuantityViewModel: ObservableObject {
    @Published var quantity = 1
}


struct QuantityButton: View {
    
    @ObservedObject var quantityViewModel: QuantityViewModel

    var body: some View {

        HStack(spacing: 15) {
            Button(action: {
                if (quantityViewModel.quantity > 1) {
                    quantityViewModel.quantity -= 1
                }
            }, label: {
                Image(systemName: "minus")
                    .foregroundColor(quantityViewModel.quantity > 1 ? .black : .gray)
            })

            Text("\(quantityViewModel.quantity)")
            
            Button(action: {
                quantityViewModel.quantity += 1
            }, label: {
                Image(systemName: "plus")
                    .foregroundColor(.black)
            })

            
        }
        .frame(width: 120, height: 50)
        .background(Color(hue: 1.0, saturation: 0, brightness: 0.85))
        .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
        .padding(.horizontal)
    }
}

struct AddToCartButton: View {

    @State var dish: Dish
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var cartManager: CartManager
    @ObservedObject var quantityViewModel: QuantityViewModel

    var body: some View {
        Button {
            for index in 0...quantityViewModel.quantity-1 {
                cartManager.addToCart(dish: dish)
            }
            
            presentationMode.wrappedValue.dismiss()
        } label: {
            Text("Add to Cart")
                .font(.headline)
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        }
    }
}

struct UpdateCartButton: View {
    
    @State var dish: Dish
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var cartManager: CartManager
    @ObservedObject var quantityViewModel: QuantityViewModel

    var body: some View {
        Button {
            cartManager.order[dish.restaurant]![dish] = quantityViewModel.quantity
            
            presentationMode.wrappedValue.dismiss()
        } label: {
            Text("Update Cart")
                .font(.headline)
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        }
    }
}

struct DishDetails_Previews: PreviewProvider {
    static var previews: some View {
        DishDetails(dish: Dish.all[0])
    }
}
