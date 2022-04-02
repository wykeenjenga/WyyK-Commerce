//
//  logoView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct logoView: View {
    
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 4){
            
            Text("WyyK".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image(logoDark)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Stores".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            
        }// : HStack

    }
}

struct logoView_Previews: PreviewProvider {
    static var previews: some View {
        logoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
