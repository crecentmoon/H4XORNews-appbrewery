//
//  DetailView.swift
//  H4X0R News
//
//  Created by 月岡　悠 on 2020/02/29.
//  Copyright © 2020 AutoRecipe_Developers. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

