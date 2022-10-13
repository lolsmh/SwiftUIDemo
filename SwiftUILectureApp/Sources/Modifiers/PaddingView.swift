//
//  PaddingView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct PaddingView: View {
    var body: some View {
        Rectangle()
			.frame(width: 70, height: 70)
			.padding(16)
			.border(Color.black)
			.padding([.top, .bottom, .leading, .trailing], 16)
			.border(Color.orange)
			.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
			.border(Color.pink)
    }
}

struct PaddingView_Previews: PreviewProvider {
    static var previews: some View {
        PaddingView()
    }
}
