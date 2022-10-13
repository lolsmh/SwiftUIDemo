//
//  BackgroundView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
		Text("Специально строка побольше")
			.font(.title)
			.foregroundColor(.white)
			.background(
				Circle()
					.fill(Color.blue)
			)
			.background(
				Color.green
			)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
