//
//  WikipediaView.swift
//  Heroes-App-with-SwiftUI
//
//  Created by muhammad.alfarisi on 28/04/23.
//

import SwiftUI

struct WikipediaView: View {
    
    let url: String
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct WikipediaView_Previews: PreviewProvider {
    static var previews: some View {
        WikipediaView(url: "Https:\\w")
    }
}
