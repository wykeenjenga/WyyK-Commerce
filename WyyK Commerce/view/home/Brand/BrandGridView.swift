//
//  BrandGridView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct BrandGridView: View {
    
    
    //MARK: - body
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false, content:  {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, content: {
                
                ForEach(brands) { item in
                    BrandItemView(brand: item)
                }
                
            })// : lazy
            .frame(height: 200)
            .padding(15)
            
        })
        // : ScrollView
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
