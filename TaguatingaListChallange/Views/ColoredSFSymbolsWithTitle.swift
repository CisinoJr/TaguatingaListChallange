//
//  ColoredSFSymbolsWithTitle.swift
//  TaguatingaListChallange
//
//  Created by Cisino Junior on 04/05/23.
//

import SwiftUI

struct ColoredSFSymbolsWithTitle: View {
	var coloredSymbols: [ColoredSFSymbols] = [
		ColoredSFSymbols(name: "cloud.snow.fill", primaryColor: .blue, description: "Nevando"),
		ColoredSFSymbols(name: "cloud.drizzle.fill", primaryColor: .red, description: "Pouco"),
		ColoredSFSymbols(name: "cloud.rain.fill", primaryColor: .green, description: "Medio"),
		ColoredSFSymbols(name: "cloud.heavyrain.fill", primaryColor: .black, description: "Forte"),
		ColoredSFSymbols(name: "cloud.hail.fill", primaryColor: .yellow, description: "Granizo"),
		
	]
	
	var body: some View {
		HStack(spacing: 10) {
			ForEach(coloredSymbols, id:\.self) { symbol in
				Label {
					Text(symbol.description ?? "")
						.foregroundColor(.blue)
						.font(.system(size: 18))
				} icon: {
					Image(systemName: symbol.name)
						.resizable()
						.frame(width: 45,  height: 45, alignment: .center)
						.foregroundStyle(.gray, symbol.primaryColor, symbol.secondaryColor ?? .gray)
						.padding(10)
				}
				.labelStyle(VerticalLabelStyle())
			}
		}
	}
}

struct ColoredSFSymbolsWithTitle_Previews: PreviewProvider {
    static var previews: some View {
        ColoredSFSymbolsWithTitle()
    }
}

struct VerticalLabelStyle: LabelStyle {
	public let spacing: CGFloat
	
	public init(spacing: CGFloat = 8) {
		self.spacing = spacing
	}
	
	public func makeBody(configuration: Configuration) -> some View {
		VStack(alignment: .center, spacing: spacing) {
			configuration.icon
			configuration.title
		}
	}
}
