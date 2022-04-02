//
//  SectionView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotate: Bool
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Categories".uppercased())
                .fontWeight(.bold)
                .font(.footnote)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotate ? 90 : -90))
            
            Spacer()
            
        } // : VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 86)
        
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotate: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
