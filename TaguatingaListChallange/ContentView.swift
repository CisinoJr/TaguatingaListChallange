//
//  ContentView.swift
//  TaguatingaListChallange
//
//  Created by Cisino Junior on 01/05/23.
//

import SwiftUI


struct ContentView: View {
	var body: some View {
		VStack {
			Text("Challenge Time:")
				.fontWeight(.bold)
				.font(.system(size: 34))
				.padding(60)

			
			ColoredShapesView()
			ColoredTextView()
			ColoredSFSymbolsView()
			
			Spacer()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
