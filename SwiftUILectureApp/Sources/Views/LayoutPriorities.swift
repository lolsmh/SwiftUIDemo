//
//  LayoutPriorities.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct LayoutPriorities: View {
	var body: some View {
		HStack(spacing: 0) {
			Text("~/Users/mac/Desktop/Do_Not_Open/Homework/Music/Images/Assets/Alive/Animals/Dogs/")
				.truncationMode(.middle)
				.lineLimit(1)
			Text("hardcorehentai.mp4")
				.layoutPriority(1)
		}
	}
}

struct LayoutPriorities_Previews: PreviewProvider {
	static var previews: some View {
		LayoutPriorities()
	}
}
