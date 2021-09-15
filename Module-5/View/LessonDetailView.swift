//
//  LessonDetailView.swift
//  Module-5
//
//  Created by cloud_vfx on 02/09/21.
//

import SwiftUI
import AVKit

struct LessonDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        let lesson = model.currentLesson
        let url = URL(string: Constants.videoHostUrl + (lesson?.video ?? ""))
    
        VStack{
            if url != nil {
                VideoPlayer(player: AVPlayer(url: url!))
                  //  .cornerRadius(10)
                    
            }
            
//            if model.hasNextLesson() {
//
            Text("Hello worldiukh7g8jttiojnntvyvntvvtv t oit regregregthe y yty i take butwd3dw imonkey jetty on eealking true ")
            
//                Button(action: {}, label: {
//
//                    RectangleCard(color: .green, text: "Next:  \(model.currentModule!.content.lessons[model.currentLessonIndex + 1].title)")
//
//                })
//            }
        }
    }
}

struct LessonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LessonDetailView()
    }
}
