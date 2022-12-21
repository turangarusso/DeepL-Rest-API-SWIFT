//
//  ContentView.swift
//  translate
//
//  Created by giovanni russo on 21/12/22.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @ObservedObject var network: Network
 var contenitore: TranslationResponse = TranslationResponse(translations: [TranslationResponse.Translation(detected_source_language: "ES", text: "String")])

    var body: some View {
        ScrollView {
            Text("All users")
                .font(.title)
                .bold()

            VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text(network.users.resultText)
                                .bold()
                    }
                    .padding()
            }//End VStack
        }//End ScrollView
        .padding(.vertical)
        .onAppear {
            network.language = "IT"
            network.getUsers()
        }
    }//End Body
}
