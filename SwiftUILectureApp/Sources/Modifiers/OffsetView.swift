//
//  OffsetView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct OffsetView: View {
	var body: some View {
		HStack {
			Circle().fill(Color.red)
			Circle().fill(Color.blue).offset(y: -40)
			Circle().fill(Color.green)
		}
		.frame(minWidth: 200, minHeight: 60)
	}
}

struct OffsetView_Previews: PreviewProvider {
    static var previews: some View {
        OffsetView()
    }
}
