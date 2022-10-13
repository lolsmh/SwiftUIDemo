//
//  ButtonView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 6/9/22.
//

import SwiftUI

struct ButtonView: View {
	
	@State
	private var counter = 0

	var body: some View {
		VStack {
			Button {
				counter += 1
			} label: {
				Text("Кнопка для жатия")
					.padding()
					.background(Color(.tertiarySystemFill))
					.cornerRadius(8)
			}
			
			if counter > 0 {
				Text("На кнопку нажато \(counter) раз")
			} else {
				Text("На кнопку не жомано")
			}
		}
		.padding()
	}
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
		ButtonView()
    }
}
