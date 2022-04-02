//
//  ProductDetailedView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct ProductDetailedView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5, content: {
            
            //nav bar
            NavigationBarDeatiledView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            
            //header
            HeaderDetailView()
                .padding(.horizontal)
            
            
            //deatail top part
            TopPartDetailedview()
                .padding(.horizontal)
                .zIndex(1)
            
            
            //deatils bottom part
            VStack(alignment: .center, spacing: 6, content: {
                
                //ratings + sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                //quantity + fav
                QuantityFavDetailView()
                    .padding(.vertical, 10)
                
                //add to cart
                AddToCart()
                    .padding(.bottom, 20)
                
                
                
            })// : VStack
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top, -150)
            )
            

        })// : VStack
        .zIndex(0)//bringnig object to the front...
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
            .ignoresSafeArea(.all, edges: .all))
        
    }
}

struct ProductDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailedView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
