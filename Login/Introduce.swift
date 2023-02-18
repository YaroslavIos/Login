//
//  Introduce.swift
//  Login
//
//  Created by Ярослав Любиченко on 16.2.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let position: String
    let homeTown: String
    let country: String
    let hobby: Hobby
}

struct Hobby {
    let sport = "My favourite sports are football, swimming and tennis. But the most favourite is football."
    let movies = "I like comedy, thriller, sports, documentary movies."
    let music = "All kind of music except rock and hard-rock🤪"
}

let user = User(login: "Developer", password: "123456", person: Person(
    name: "Yaroslav",
    surname: "Lyubychenko",
    age: "34",
    position: "Developer",
    homeTown: "Sevastopol",
    country: "Russia",
    hobby: Hobby()
)
)

