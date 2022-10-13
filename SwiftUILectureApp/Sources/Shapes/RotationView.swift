//
//  RotationView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct RotationView: View {
    var body: some View {
		Rectangle()
			.rotation(.degrees(30))
			.fill(Color.red)
    }
}

struct RotationView_Previews: PreviewProvider {
    static var previews: some View {
        RotationView()
    }
}
