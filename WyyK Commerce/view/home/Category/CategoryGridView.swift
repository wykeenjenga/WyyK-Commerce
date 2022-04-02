//
//  CategoryGridView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct CategoryGridView: View {
    
    //MARK: - properties
    
    
    //MARK: - body
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false, content: {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [],  content: {
                
                Section(
                    header: SectionView(rotate: false),
                    footer: SectionView(rotate: true))
                {
                    ForEach(categories) { item in
                        CategoryItemView(category: item)
                    }
                }
                
                
            } ) // : lazy
            .frame(height: 140)
            .padding(.horizontal,  16)
            .padding(.vertical,  10)
            
        })// : ScrollView
        
    }
}

//MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
