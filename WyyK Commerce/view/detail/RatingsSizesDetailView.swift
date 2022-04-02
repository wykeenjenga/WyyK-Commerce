//
//  RatingsSizesDetailView.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    //MARK: - properties
    let sizes: [String] = ["XS","S","M","L","XL"]
    
    
    //MARK: - body
    var body: some View {
        
        
        HStack(alignment: .top, spacing: 6, content: {
            
            //ratings
            VStack(alignment: .leading, spacing: 6, content: {
                
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    
                    ForEach(1...5, id: \.self) { item in
                        
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                            
                        })
                        
                    } //loop
                    
                }) // : HStack

            })// : VStack
            
            
            Spacer()
            
            //sizes
            VStack(alignment: .trailing, spacing: 6, content: {
                
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .top, spacing: 5, content: {
                    
                    Button(action: {}, label: {
                        
                        ForEach(sizes, id: \.self) { size in
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray, lineWidth: 2))
                        }
                        
                    })
                    
                })
                
            })
            
            
        })// : HStack

    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
