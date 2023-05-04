//
//  ColoredTextView.swift
//  TaguatingaListChallange
//
//  Created by Cisino Junior on 01/05/23.
//

import SwiftUI

struct ColoredTextView: View {
	var shapes: [ColoredText] = [
		ColoredText(description: "Rectangle", color: .blue),
		ColoredText(description: "Circle", color: .red),
		ColoredText(description: "Elipse", color: .green),
		ColoredText(description: "Capsule", color: .black),
		ColoredText(description: "Border", color: .yellow)
	]
	
    var body: some View {
		HStack(spacing: 20) {
			ForEach(shapes, id:\.self) { shape in
				Text(shape.description)
					.foregroundColor(shape.color)
			}
		}.padding()
    }
}

struct ColoredTextView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredTextView()
    }
}


