//
//  Personal_todoApp.swift
//  Personal-todo
//
//  Created by Irakli Sokhaneishvili on 25.01.22.
//

import SwiftUI

@main
struct Personal_todoApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
