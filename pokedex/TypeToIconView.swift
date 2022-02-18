//
//  PokemonTypeParser.swift
//  pokedex
//
//  Created by Henrique Ladeira on 20/12/21.
//
import SwiftUI

struct TypeToIconView: View {
    var type: String
    
    var body: some View {
        switch(type) {
        case "fire":
            Image(systemName: "flame.circle.fill").resizable().scaledToFit().foregroundColor(.orange)
        case "water":
            Image(systemName: "drop.circle.fill").resizable().scaledToFit().foregroundColor(.blue)
        case "grass":
            Image(systemName: "leaf.circle.fill").resizable().scaledToFit().foregroundColor(.green)
        case "electric":
            Image(systemName: "bolt.circle.fill").resizable().scaledToFit().foregroundColor(.yellow)
        case "ice":
            Image(systemName: "snowflake.circle.fill").resizable().scaledToFit().foregroundColor(.teal)
        case "fighting":
            Image(systemName: "figure.walk.circle.fill").resizable().scaledToFit().foregroundColor(.red)
        case "poison":
            Image(systemName: "pills.circle.fill").resizable().scaledToFit().foregroundColor(.purple)
        case "ground":
            Image(systemName: "globe.asia.australia.fill").resizable().scaledToFit().foregroundColor(.brown)
        case "flying":
            Image(systemName: "paperplane.circle.fill").resizable().scaledToFit().foregroundColor(.indigo)
        case "psychic":
            Image(systemName: "shekelsign.circle.fill").resizable().scaledToFit().foregroundColor(.pink)
        case "bug":
            Image(systemName: "ant.circle.fill").resizable().scaledToFit().foregroundColor(.mint)
        case "rock":
            Image(systemName: "globe.asia.australia").resizable().scaledToFit().foregroundColor(.gray)
        case "ghost":
            Image(systemName: "waveform").resizable().scaledToFit().foregroundColor(.purple)
        case "dark":
            Image(systemName: "aqi.low").resizable().scaledToFit().foregroundColor(.black)
        case "dragon":
            Image(systemName: "hurricane").resizable().scaledToFit().foregroundColor(.indigo)
        case "steel":
            Image(systemName: "staroflife.fill").resizable().scaledToFit().foregroundColor(.gray)
        case "fairy":
            Image(systemName: "star.circle").resizable().scaledToFit().foregroundColor(.pink)
        default:
            Image(systemName: "circle.circle.fill").resizable().scaledToFit().foregroundColor(.white)
        }
    }
}
