//
//  TextView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct TextView: View {
	
	@State private var text = "Пример текста"
	
    var body: some View {
		VStack {
			TextField("Введите текст", text: $text)
				.padding()
				.background(Color.white)
				.cornerRadius(10)
				.shadow(radius: 5)
				.padding()
				.foregroundColor(.gray)
			
			Text(text)
				.foregroundColor(.black)
				.lineLimit(2)
				.minimumScaleFactor(0.8)
				.truncationMode(.middle)
		}
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
