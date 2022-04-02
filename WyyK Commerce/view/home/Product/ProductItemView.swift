//
//  ProductItemView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: Product
    
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading, spacing: 6, content: {
                
                //image
                ZStack{
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .padding(2)
                    
                }// : ZStack
                .background(Color(red: product.red, green: product.green, blue: product.blue))
                .cornerRadius(12)
                
                VStack(alignment: .leading, spacing: 2){
                    //name
                    Text(product.name)
                        .font(.title3)
                        .fontWeight(.black)
                    
                    //price
                    Text(product.formattedPrice)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }// : VStack
                .padding()
                
                
            })// : VStack
        }
        .background(.white)
        .cornerRadius(6)
        
        
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
