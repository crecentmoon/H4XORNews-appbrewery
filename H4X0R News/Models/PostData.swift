//
//  PostData.swift
//  H4X0R News
//
//  Created by 月岡　悠 on 2020/02/29.
//  Copyright © 2020 AutoRecipe_Developers. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
