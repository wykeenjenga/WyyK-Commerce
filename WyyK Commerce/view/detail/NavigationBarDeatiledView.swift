//
//  NavigationBarDeatiledView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct NavigationBarDeatiledView: View {
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                withAnimation(.easeIn){
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                
            })
            
            
            Spacer()
            
            
            Button(action: {}, label: {
                
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
                
            })
        }
    }
}

struct NavigationBarDeatiledView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDeatiledView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
