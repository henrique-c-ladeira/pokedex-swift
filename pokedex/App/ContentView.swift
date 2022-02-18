//
//  ContentView.swift
//  pokedex
//
//  Created by Henrique Ladeira on 09/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            PokemonList()
                .navigationBarTitle("Pokedex", displayMode: .inline)
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

