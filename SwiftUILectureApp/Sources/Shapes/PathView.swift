//
//  PathView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct PathView: View {
	var body: some View {
		Path { path in
			path.move(to: CGPoint(x: 50, y: 0))
			path.addLines([
				CGPoint(x: 100, y: 75),
				CGPoint(x: 0, y: 75),
				CGPoint(x: 50, y: 0)
			])
		}
	}
}

struct PathExampleView_Previews: PreviewProvider {
    static var previews: some View {
		PathView()
    }
}
