<h1 align="center">
  <br>


     _______  _______ _________
    (  ___  )(  ____ )\__   __/
    | (   ) || (    )|   ) (   
    | (___) || (____)|   | |   
    |  ___  ||  _____)   | |   
    | (   ) || (         | |   
    | )   ( || )      ___) (___
    |/     \||/       \_______/


                           
  <br>
  DeepL-Rest-API-SWIFT
  <br>
</h1>

<h4 align="center">A Swift api made for DeepL
.</h4>


<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#credits">Credits</a> •
  <a href="#license">License</a>
</p>

![deepL](https://user-images.githubusercontent.com/113531412/208911786-85839a7e-7032-4bc0-91d4-9ab62572e931.png)

## Key Features

* Transalate phrases
  - You need to create an accout on Deepl and get an API key.
* Translate into any language. 
* Code adaptable to every need
* Integrated with swiftui



## How To Use

You can build the project using Xcode. To get the Api key go to your account on Deepl and copy the key.

Change the key value with your Deepl Api key

```swift
final class Network: ObservableObject {
    @Published var users: TranslationResponse
    @Published var language: String = "ES"
    @Published var input: String = "home sweet home".replacingOccurrences(of: " ", with: "%20")
    @Published var key: String = "your api key"
```

You can use the var "language" to set the Targhet Language to translate the text into

```swift
    final class Network: ObservableObject {
    
    @Published var language: String = "ES"
```

You can use the var "input" to set the phrase to translate

```swift
 @Published var input: String = "home sweet home".replacingOccurrences(of: " ", with: "%20")
```
In the view you can easy change the input text and language using:

```swift
  .onAppear {
            network.language = "IT"
            network.input = "sentence to translate"
            network.getUsers()
        }
```

To get translation result in the view, you can use:

```swift
Text(network.users.resultText)
```

The language into which the text should be translated. Options currently available:

```
BG - Bulgarian
CS - Czech
DA - Danish
DE - German
EL - Greek
EN - English (unspecified variant for backward compatibility; please select EN-GB or EN-US instead)
EN-GB - English (British)
EN-US - English (American)
ES - Spanish
ET - Estonian
FI - Finnish
FR - French
HU - Hungarian
ID - Indonesian
IT - Italian
JA - Japanese
LT - Lithuanian
LV - Latvian
NL - Dutch
PL - Polish
PT - Portuguese (unspecified variant for backward compatibility; please select PT-BR or PT-PT instead)
PT-BR - Portuguese (Brazilian)
PT-PT - Portuguese (all Portuguese varieties excluding Brazilian Portuguese)
RO - Romanian
RU - Russian
SK - Slovak
SL - Slovenian
SV - Swedish
TR - Turkish
UK - Ukrainian
ZH - Chinese (simplified)
```

> **Note**
> You can found more information on: https://www.deepl.com/docs-api


## Credits

THIS IS NOT THE OFFICIAL API

Russo Giovanni M.

DeepL

For educational purposes

## License

MIT

---

