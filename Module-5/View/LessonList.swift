//
//  LessonList.swift
//  Module-5
//
//  Created by cloud_vfx on 02/09/21.
//

import SwiftUI

struct LessonList: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
       ScrollView{
            LazyVStack{

                if model.currentModule != nil {

                    ForEach(0..<model.currentModule!.content.lessons.count){ index in

                  NavigationLink(
                    destination: LessonDetailView()
                        .onAppear(perform: {
                            model.beginLesson(index)
                        }),
                    label: {
                        LessonListRow(index: index)
                    })
                        
                        

                    }
                }
            }.padding()
            .navigationTitle("Learn \(model.currentModule?.category ?? "")")
            
        }
    }
}

struct LessonList_Previews: PreviewProvider {
    static var previews: some View {
        LessonList()
            .environmentObject(ContentModel())
            
    }
}
