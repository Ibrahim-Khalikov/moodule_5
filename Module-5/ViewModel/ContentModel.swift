//
//  ContentModel.swift
//  Module-5
//
//  Created by cloud_vfx on 01/09/21.
//

import Foundation

class ContentModel : ObservableObject {
    
    @Published var modules = [Module]()
    
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    
    @Published var currentLesson: Lesson?
    var currentLessonIndex = 0
    
    var styleUrl : Data?
    
    
    init() {
        getLocalData()
    }
    
    
    func getLocalData() {
    
        let urlString = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do{
            let data = try Data(contentsOf: urlString!)
            let modules = try JSONDecoder().decode([Module].self, from: data)
            
            self.modules = modules
        }
        catch{ print("not find Url") }
        
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do{
            let data = try Data(contentsOf: styleUrl!)
            self.styleUrl = data
        }
        
        catch{ print("not html style file...") }
    }
    
    func beginModel(_ moduleId: Int){
        
        for index in 0..<modules.count {
            
            if modules[index].id == moduleId {
                
                currentModuleIndex = index
                break
            }
        }
        currentModule = modules[currentModuleIndex]
    }
    
    func beginLesson(_ lessonIndex: Int){
        
        if lessonIndex < currentModule!.content.lessons.count {
            currentLessonIndex = lessonIndex
        }
        else{
            currentLessonIndex = 0
        }
        currentLesson = currentModule!.content.lessons[currentLessonIndex]
    }
    
    func hasNextLesson() -> Bool {
        return(currentLessonIndex + 1 < currentModule!.content.lessons.count)
    }
    
    func nextLesson(){
        
        currentLessonIndex += 1
        
        if currentLessonIndex < currentModule!.content.lessons.count {
            currentLesson = currentModule!.content.lessons[currentLessonIndex]
        }
        else{
            currentLessonIndex = 0
            currentLesson = nil
          
        }
    }
    
}
