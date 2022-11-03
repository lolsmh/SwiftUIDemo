//
//  StackView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct StackView: View {
	var body: some View {
		HStack {
			Text("Hello, World")
			Rectangle()
				.fill(Color.blue)
				.frame(minWidth: 200)
		}
	}
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
