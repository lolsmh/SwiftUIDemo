//
//  FrameTextView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct FrameTextView: View {
    var body: some View {
        Text("Слово")
			.frame(width: 200, height: 200, alignment: .bottomTrailing)
    }
}

struct FrameTextView_Previews: PreviewProvider {
    static var previews: some View {
        FrameTextView()
    }
}
