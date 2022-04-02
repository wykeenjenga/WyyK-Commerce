//
//  CategoryItemView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct CategoryItemView: View {
    
    //MARK: - properties
    let category: Category

    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6){
                
                Image(category.image)
                    .renderingMode(.template)
                    .resizable().scaledToFit()
                    .frame(width: 24, height: 24, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
                
            } // : HStack
            
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                .stroke(.gray, lineWidth: 1)
            )
            
        }) //: Button
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
