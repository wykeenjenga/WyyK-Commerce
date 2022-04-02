//
//  TopPartDetailedview.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct TopPartDetailedview: View {
    
    @EnvironmentObject var shop: Shop
    
    @State private var isAnimating: Bool = false
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content:  {
            
            //price
            VStack(alignment: .leading, spacing: 6, content:{
                
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50: -75)
            
            Spacer()
            
            //photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        })// : HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })//end animat
    }
    
}

struct TopPartDetailedview_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailedview()
            .environmentObject(Shop())
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
