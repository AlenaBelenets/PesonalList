//
//  DataStore.swift
//  PesonalList
//
//  Created by Alena Belenets on 25.07.2022.
//

import Foundation

class DataStore {

    static let shared = DataStore()

    let names = ["Anna", "Nick", "Mike", "Ellen", "Stefany", "Robert", "Bella", "Sam", "Nikolai", "Maria"]
    let lastNames = ["Boleyn", "Thompson", "Sweeney", "Menacer", "Mayer", "Pattinson", "Hadid", "Smith", "Walden", "Spencer"]
    let phones = ["5353462", "535get3461", "5353466", "5353464", "5353461", "5353443", "5353496", "535955", "535954", "535754"]
    let emails = ["a.boleyn@mail.ru", "thompson-d@mail.ru", "dsweeney@mail.ru", "t.menacer@mail.ru", "mayer@mail.ru", "pattin@mail.ru", "b.hadid@mail.ru", "smith322@mail.ru", "walden@mail.ru", "spencer223@mail.ru"]

    private init() {}
}

