//
//  Main.swift
//  JSONTest
//
//  Created by Рафаил Фаталиев on 22.06.2022.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
       super.viewDidLoad()
    


let jsonString = """
{
    "data": [{
            "name": "hz",
            "data": {
                "text": "Текстовый блок"
            }
        }, {
            "name": "picture",
            "data": {
                "url": "https://pryaniky.com/static/img/logo-a-512.png",
                "text": "Пряники"
            }
        }, {
            "name": "selector",
            "data": {
                "selectedId": 1,
                "variants": [{
                        "id": 1,
                        "text": "Вариант раз"
                    }, {
                        "id": 2,
                        "text": "Вариант два"
                    }, {
                        "id": 3,
                        "text": "Вариант три"
                    }
                ]
            }
        }
    ],
    "view": ["hz", "selector", "picture", "hz"]
}
"""

let jsonData = jsonString.data(using: .utf8)!

let rootModel = try! JSONDecoder().decode(Root.self, from: jsonData)

print("Data:\n")
rootModel.data.forEach { print($0, "\n") }

    print("Views:\n")
        print(rootModel.view)
        
        
        
    }
}

