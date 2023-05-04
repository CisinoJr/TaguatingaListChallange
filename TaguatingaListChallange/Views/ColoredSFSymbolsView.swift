//
//  ColoredSFSymbols.swift
//  TaguatingaListChallange
//
//  Created by Cisino Junior on 01/05/23.
//

import SwiftUI

struct ColoredSFSymbolsView: View {
	var symbols: [ColoredSFSymbols] = [
		ColoredSFSymbols(name: "cloud.sun.rain.fill", color: .blue, description: ""),
		ColoredSFSymbols(name: "cloud.rain.fill", color: .red, description: ""),
		ColoredSFSymbols(name: "cloud.rain.fill", color: .green, description: ""),
		ColoredSFSymbols(name: "cloud.rain.fill", color: .black, description: ""),
		ColoredSFSymbols(name: "cloud.rain.fill", color: .yellow, description: ""),

	]
    
	var body: some View {
		HStack(spacing: 10) {
			ForEach(symbols, id:\.self) { symbol in
				Image(systemName: symbol.name)
					.resizable()
					.frame(width: 45,  height: 45)
					.foregroundColor(symbol.color)
					.padding(10)
			}
		}.padding()
    }
}

struct ColoredSFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        ColoredSFSymbolsView()
    }
}
