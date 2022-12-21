//
//  Model.swift
//  translate
//
//  Created by giovanni russo on 21/12/22.
//

import Foundation
import SwiftUI

final class Network: ObservableObject {
    @Published var users: TranslationResponse
    @Published var language: String = "ES"
    @Published var input: String = "home sweet home".replacingOccurrences(of: " ", with: "%20")
    @Published var key: String = "your api key"

    
    init(users: TranslationResponse){
        self.users = users
    }
    func getUsers() {
        guard let url = URL(string: "https://api-free.deepl.com/v2/translate?text="+input+"&target_lang="+language+"&auth_key="+key) else { fatalError("Missing URL") }

        let urlRequest = URLRequest(url: url)

        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error: ", error)
                return
            }

            guard let response = response as? HTTPURLResponse else { return }

            if response.statusCode == 200 {
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let decodedUsers = try JSONDecoder().decode(TranslationResponse.self, from: data)
                        self.users = decodedUsers
                    } catch let error {
                        print("Error decoding: ", error)
                    }
                }
            }
        }

        dataTask.resume()
    }
}

struct TranslationResponse: Decodable {
  let translations: [Translation]

  var resultText: String {
    translations.map(\.text).joined(separator: "\n")
  }
}

extension TranslationResponse {
  struct Translation: Decodable {
    let detected_source_language: String
    let text: String
  }
}
