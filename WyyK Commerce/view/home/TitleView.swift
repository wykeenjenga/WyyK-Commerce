//
//  TitleView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct TitleView: View {
    
    //MARK: - preview
    var title: String
    
    //MARK: - body
    var body: some View {
        HStack {
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }// : HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)

    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
