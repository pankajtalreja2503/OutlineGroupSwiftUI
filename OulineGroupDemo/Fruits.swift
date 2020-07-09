//
//  Fruits.swift
//  OulineGroupDemo
//
//  Created by Pankaj Talreja on 06/07/20.
//

import Foundation
struct Fruits: Hashable, Identifiable, CustomStringConvertible {
    var id: Self { self }
    var name: String
    var children: [Fruits]? = nil
    var rootParent: Bool = false
    var description: String {
        switch (children) {
        case nil:
            return "\(name)"
        case .some(let children):
            return children.count > 0 ? "\(name)" : "\(name)"
        }
    }
    static func all() -> [Fruits]  {
       return [Fruits(name: "Fruits", children:
          [Fruits(name: "Apple", children:
                    [Fruits(name: "Fuji Apple"),
                    Fruits(name: "Red Delicious Apple")]),
           Fruits(name: "Grapes"),
           Fruits(name: "Orange"),
           Fruits(name: "Mango")
          ], rootParent: true),
               Fruits(name: "Vegitables", children:
                  [Fruits(name: "Carrot", children:
                            [Fruits(name: "Danvers carrots"),
                            Fruits(name: "Imperator carrots"),
                            Fruits(name: "Nantes carrots")]),
                   Fruits(name: "Beans", children: [Fruits(name: "Snake Beans"),
                                                    Fruits(name: "Green beans"),
                                                    Fruits(name: "French or flat beans")]),
                   Fruits(name: "Cabbage"),
                   Fruits(name: "Celery"),
                   Fruits(name: "Ginger"),
                  ], rootParent: true)
       ]
    }
}
