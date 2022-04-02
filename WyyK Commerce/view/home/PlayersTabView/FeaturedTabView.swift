//
//  FeaturedTabView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct FeaturedTabView: View {
    
    
    var body: some View {
        
        TabView{
            ForEach(players){ player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
            
        }//tabview
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(.gray)
    }
}
