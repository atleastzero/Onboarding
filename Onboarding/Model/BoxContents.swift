//
//  BoxContents.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/11/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

struct Item{
    let name: String
    let image: String
    let category: Category
}

struct Box{
    let date: String
    let items: [Item]
}

struct Category{
    let name: String
}

struct User{
    let id: Int
}

let picture = Category(name: "Picture")
let facialHair = Category(name: "Facial Hair")
let hairDye = Category(name: "Hair Dye")
let glasses = Category(name: "Glasses")
let clothes = Category(name: "Clothes")
let accessories = Category(name: "Accessories")
let categories = [picture, facialHair, hairDye, glasses, clothes, accessories]
let boxFeb2020 = Box(date: "Feb 2020", items: [])

