//
//  OverlayView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct OverlayView: View {
    var body: some View {
		Circle()
			.fill(Color.blue)
			.overlay(Circle().strokeBorder(Color.white).padding(3))
			.overlay(Text("Start").foregroundColor(.white))
			.frame(width: 75, height: 75)
    }
}

struct OverlayView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayView()
    }
}
