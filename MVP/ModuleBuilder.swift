//
//  ModuleBuilder.swift
//  MVP
//
//  Created by SilentObserver on 15/07/2020.
//  Copyright © 2020 Nathan Furman. All rights reserved.
//

import UIKit

protocol Builder {
    static func instantiateMainModule() -> UIViewController
}

class ModuleBuilder: Builder {
    // dependancy injection Person. Lets assume we've retrieved it from somewhere
    // sets dependancies and returns controller
    static func instantiateMainModule() -> UIViewController {
        let model = Person(firstName: "Neil", lastName: "Tennant")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, person: model)
        view.presenter = presenter
        return view
    }
}
