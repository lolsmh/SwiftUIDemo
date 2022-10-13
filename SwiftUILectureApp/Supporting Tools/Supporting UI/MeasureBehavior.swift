//
//  MeasureBehavior.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/9/22.
//

import SwiftUI

struct MeasureBehavior<Content>: View where Content: View {
	@State private var width: CGFloat
	@State private var height: CGFloat
	@State private var contentViewSize = CGSize.zero
	
	@ViewBuilder private var content: () -> Content
	
	init(
		initialSize: CGSize = CGSize(width: 300, height: 300),
		@ViewBuilder content: @escaping () -> Content
	) {
		self.content = content
		self.width = initialSize.width
		self.height = initialSize.height
	}
	
	var body: some View {
		VStack {
			ScrollView([.horizontal, .vertical]) {
				Spacer()
				content()
					.readSize { size in
						contentViewSize = size
					}
					.border(Color.green)
					.overlay(
						VStack {
							Text("\(Int(contentViewSize.width.rounded()))")
								.offset(y: -30)
							Spacer()
							HStack(alignment: .center) {
								Text("\(Int(contentViewSize.height.rounded()))")
									.rotatingLayoutPosition(.degrees(90))
									.offset(x: -30)
								Spacer()
							}
							Spacer()
						}
					)
					.frame(width: width, height: height)
					.border(Color.red)
				Spacer()
			}
			VStack {
				Slider(value: $width, in: 0...2000)
				Text("Current width: \(width)")
			}
			VStack {
				Slider(value: $height, in: 0...2000)
				Text("Current height: \(height)")
			}
		}
		.padding(.bottom)
	}
}
