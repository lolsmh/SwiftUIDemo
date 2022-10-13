//
//  TriangleShape.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct TriangleShape: Shape {
	func path(in rect: CGRect) -> Path {
		Path { path in
			path.move(to: CGPoint(x: rect.midX, y: rect.minY))
			path.addLines([
				CGPoint(x: rect.maxX, y: rect.maxY),
				CGPoint(x: rect.minX, y: rect.maxY),
				CGPoint(x: rect.midX, y: rect.minY)
			])
		}
	}
}

struct TriangleShape_Previews: PreviewProvider {
    static var previews: some View {
        TriangleShape()
    }
}
