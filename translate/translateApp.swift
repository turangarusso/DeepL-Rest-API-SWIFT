//
//  translateApp.swift
//  translate
//
//  Created by giovanni russo on 21/12/22.
//

import SwiftUI

@main
struct translateApp: App {
    var contenitore: TranslationResponse = TranslationResponse(translations: [TranslationResponse.Translation(detected_source_language: "ES", text: "String")])

    var body: some Scene {
        WindowGroup {
            ContentView(network: Network(users: contenitore))
                
        }
    }
}
