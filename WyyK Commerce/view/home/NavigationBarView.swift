//
//  NavigationBarView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct NavigationBarView: View {
    
    //MARK: - properties
    
    @State private var isAnimated: Bool = false
    
    //MARK: - body
    var body: some View {
        HStack{
            
            Button(action: {
                
            }, label: {
                
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
                
            })//: Button
            
            Spacer()
            
            logoView()
                .opacity(isAnimated ? 1:0)
                .offset(x: 0, y: isAnimated ? 0: -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                }
            
            Spacer()
    
            Button(action: {
                
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    //cart indicator
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x:13, y: -10)
                    
                    
                }// : ZStack
            })//: Button
            
            
        } // : HStack

    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
