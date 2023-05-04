//
//  ColoredSFSymbols.swift
//  TaguatingaListChallange
//
//  Created by Cisino Junior on 01/05/23.
//

import SwiftUI

struct ColoredSFSymbolsView: View {
	var coloredSymbols: [ColoredSFSymbols] = [
		ColoredSFSymbols(name: "cloud.sun.rain.fill", primaryColor: .yellow, secondaryColor: .blue),
		ColoredSFSymbols(name: "cloud.drizzle.fill", primaryColor: .red),
		ColoredSFSymbols(name: "cloud.rain.fill", primaryColor: .green),
		ColoredSFSymbols(name: "cloud.heavyrain.fill", primaryColor: .black),
		ColoredSFSymbols(name: "cloud.hail.fill", primaryColor: .yellow),

	]
    
	var body: some View {
		HStack(spacing: 10) {
			ForEach(coloredSymbols, id:\.self) { symbol in
				Image(systemName: symbol.name)
					.resizable()
					.frame(width: 45,  height: 45)
					.foregroundStyle(.gray, symbol.primaryColor, symbol.secondaryColor ?? .gray)
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
