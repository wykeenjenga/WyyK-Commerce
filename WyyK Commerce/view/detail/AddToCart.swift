//
//  AddToCart.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct AddToCart: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
            Spacer()
        })
        .padding(16)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
        
    }
}

struct AddToCart_Previews: PreviewProvider {
    static var previews: some View {
        AddToCart()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
