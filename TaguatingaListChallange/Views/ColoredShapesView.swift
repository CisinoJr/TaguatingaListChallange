//
//  ColoredShapes.swift
//  TaguatingaListChallange
//
//  Created by Cisino Junior on 01/05/23.
//

import SwiftUI

struct ColoredShapesView: View {
	var body: some View {
		HStack(spacing: 20) {
			Rectangle()
				.foregroundColor(.blue)
				.frame(width: 50, height: 50)
			Circle()
				.foregroundColor(.red)
				.frame(width: 50, height: 50)
			Ellipse()
				.foregroundColor(.green)
				.frame(width: 60, height: 40)
			Capsule()
				.foregroundColor(.black)
				.frame(width: 60, height: 30)
			Circle()
				.foregroundColor(.yellow)
				.frame(width: 50, height: 50)
		}
	}
}
