//
//  HomeViewRow.swift
//  Module-5
//
//  Created by cloud_vfx on 01/09/21.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var time: String
    var count: String
    var description: String
    var category:String
   // var title: String
    
    var body: some View {
    
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 6)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
            
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Text(category)
                        .bold()
                    
                    Text(description)
                        .font(.system(size: 10))
                        .padding(.bottom, 20)
                    
                    HStack{
                        
                        Image(systemName: "clock")
                            .frame(width: 10, height: 10)
                        Text(time)
                            .font(.system(size: 9))
                        Spacer()
                        
                        Image(systemName: "list.dash")
                            .frame(width: 10, height: 10)
                        Text(String(count))
                            .font(.system(size: 9))
                        
                    }
                }.padding(.leading, 20)
            }.padding(.horizontal,30)
        }
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", time: "23 minutes", count: "24 lessond", description: "leatn hard and fast", category: "swift")
    }
}
