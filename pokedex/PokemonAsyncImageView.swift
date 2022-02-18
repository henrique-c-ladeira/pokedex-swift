//
//  PokemonAsyncImageView.swift
//  pokedex
//
//  Created by Henrique Ladeira on 15/12/21.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self.resizable().scaledToFit()
    }
    
    func iconModifier() -> some View {
        self.imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.9)
    }
}

struct PokemonAsyncImageView: View {
    private let mainUrl: String = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/"
    private let altUrl: String = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/"
    
    let id: Int
    
    var body: some View {
        AsyncImage(url: URL(string: "\(self.altUrl)\(self.id).png"), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
            switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                    .imageModifier()
                    .transition(.move(edge: .bottom))
                case .failure:
                    Image(systemName: "wifi.slash").iconModifier()
                @unknown default:
                    Image(systemName: "ant.circle.fill").iconModifier()
            }
        }
    }
}

struct PokemonAsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonAsyncImageView(id: 3).preferredColorScheme(.dark)
    }
}
