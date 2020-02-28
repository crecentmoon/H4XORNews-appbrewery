//
//  ContentView.swift
//  H4X0R News
//
//  Created by 月岡　悠 on 2020/02/28.
//  Copyright © 2020 AutoRecipe_Developers. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List (networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id: "1", title: "Heool"),
//    Post(id: "2", title: "klasjfd"),
//    Post(id: "3", title: "sdfjajk")
//]
