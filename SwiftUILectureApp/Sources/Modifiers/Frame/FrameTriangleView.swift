//
//  FrameTriangleView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct FrameTriangleView: View {
    var body: some View {
        TriangleShape()
			.frame(width: 50, height: 50)
    }
	
	func resizable() -> some View {
		TriangleShape()
			.frame(idealWidth: 50, idealHeight: 50)
	}
	
	func dynamicFrameTest() -> some View {
		TriangleShape()
			.aspectRatio(1, contentMode: .fit)
			.frame(
				minWidth: 50,
				idealWidth: 100,
				maxWidth: 150,
				minHeight: 50,
				idealHeight: 100,
				maxHeight: 150
			)
	}
}

struct FrameTriangleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameTriangleView()
    }
}
