//
//  ContentView.swift
//  Module-5
//
//  Created by cloud_vfx on 01/09/21.
//

import SwiftUI

struct HomeView: View {
    
 @EnvironmentObject var model: ContentModel
    
    var body: some View {
      
        NavigationView{
            
            VStack(alignment: .leading){
                
                Text("Learn swift easy and fast with this lessons and quizzes")
                    .font(.system(size: 16))
                    .padding(.leading)
                
                ScrollView{
                    LazyVStack{
                        ForEach(model.modules){ module in
                            
                            VStack(spacing: 12){
                                
                                NavigationLink(
                                    destination: LessonList()
                                        .onAppear(perform: {
                                            model.beginModel(module.id)
                                        }),
                                    label: {
                                        
                                        HomeViewRow(image: module.content.image, time: module.content.time, count:  String( module.content.lessons.count) + " Lessons", description: module.content.description, category: "Learn \(module.category)")
                                        
                                    })
                                
                                
                                
                                HomeViewRow(image: module.test.image, time: module.test.time, count:  String( module.test.questions.count) + " Question", description: module.test.description, category: "\(module.category) Quizzes")
                                
                            }
                        }
                    }.padding()
                    .accentColor(.black)
                }.navigationBarTitle("Get Started")
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}

