//
//  main.swift
//  Design Patterns
//
//  Created by Giray UÇAR on 14.01.2022.
//

import Foundation

// Factory Method Usage:
let factoryClient1 = FactoryClientUseCase(viewControllerCreator: SecondViewControllerCreator())
let factoryClient2 = FactoryClientUseCase(viewControllerCreator: FirstViewControllerCreator())
factoryClient1.configureViewController()
factoryClient2.configureViewController()

print("---------------------------")

// Adapter Usage:
let adapterClient1 = AdapterClientUseCase()
let swiftCodeAdaptee = SwiftAdaptee()
swiftCodeAdaptee.createCodeForSwift()
adapterClient1.registerButtonClicked(use: ObjcAdapter(adaptee: swiftCodeAdaptee))

print("---------------------------")

// Decorator Usage:

let decoratorClient1 = DecoratorClientUseCase()

let professionalSwimmer = ProfessionalSportsmanDecorator(sports: [Swimmer()])
let amateurBasketballPlayer = AmateurSportsmanDecorator(sports: [BasketballPlayer()])
let amateurSoccerPlayer = AmateurSportsmanDecorator(sports: [SoccerPlayer()])

let person1 = Decorator(sports: [amateurBasketballPlayer, professionalSwimmer , amateurSoccerPlayer])
let person2 = Decorator(sports: [amateurSoccerPlayer])

decoratorClient1.practice(with: person1)


