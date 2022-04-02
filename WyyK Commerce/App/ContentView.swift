//
//  ContentView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct ContentView: View {

    //MARK: - properties
    @EnvironmentObject var shop: Shop
    
    
    //MARK: - body
    var body: some View {
        
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                
                VStack(spacing: 0) {
    
                
                    //navigation bar
                    NavigationBarView()
                        .padding()
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                
                    //MARK: - ScrollView
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        
                        VStack(spacing: 0){

                            //
                            FeaturedTabView()
                                .padding(.vertical, 20)
                                .frame(height: 280)
                            
                            CategoryGridView()
                                .padding(.vertical, 20)
                            
                            TitleView(title: "Helmet")
                            
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                
                                ForEach(products) { item in
                                    ProductItemView(product: item)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = item
                                                shop.showingProduct = true
                                            }
                                        }
                                }//loop
                                
                            })// : lazy
                            .padding(16)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                                .padding(.vertical, 20)
                            
                            
                            FooterView()
                                .padding(.horizontal)

                            
                        }// : VStack
                        
                    })// :Scroll
                    
                    
                    
                }// : VStack
                
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            }
            else {
                ProductDetailedView()
            }
            
        }// : ZStack
        .ignoresSafeArea(.all, edges: .top)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
