//
//  LessonListRow.swift
//  Module-5
//
//  Created by cloud_vfx on 02/09/21.
//

import SwiftUI

struct LessonListRow: View {
    
 @EnvironmentObject var model: ContentModel
 var index: Int
    
    var body: some View {
    
       let lesson = model.currentModule!.content.lessons[index]
        
        ZStack(alignment: .leading){
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)

            HStack(spacing: 30){
                Text(String( index + 1))
                    .bold()

                VStack(alignment: .leading, spacing: 5){
                    Text(lesson.title)
                        .bold()

                    Text(lesson.duration)
                        .font(.system(size: 15))
                }
            }.padding(.leading, 20)
        }.padding(.bottom, 5)
    }
}
