//
//  ImagesView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct ImagesView: View {
	var body: some View {
		let image = Image(systemName: "ellipsis")
		HStack {
			image
				.border(Color.blue)
				.frame(width: 100, height: 100)
			
			image
				.resizable()
				.border(Color.blue)
				.frame(width: 100, height: 100)
			
			image
				.resizable()
				.aspectRatio(contentMode: .fit)
				.border(Color.blue)
				.frame(width: 100, height: 100)
		}
	}
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
