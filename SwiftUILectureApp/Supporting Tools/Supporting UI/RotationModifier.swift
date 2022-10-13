//
//  RotationModifier.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 12/10/22.
//

import SwiftUI

struct RotationModifier: ViewModifier {
	@State private var contentSize = CGSize.zero
	let rotation: Angle
	
	func body(content: Content) -> some View {
		content
			.fixedSize()
			.overlay(
				GeometryReader { proxy in
					Color.clear.preference(key: ContentSizePreferenceKey.self, value: proxy.size)
				}
			)
			.onPreferenceChange(ContentSizePreferenceKey.self) { newSize in
				contentSize = newSize
			}
			.rotationEffect(rotation)
			.frame(width: contentSize.height, height: contentSize.width)
	}
	
	private struct ContentSizePreferenceKey: PreferenceKey {
		static var defaultValue: CGSize = .zero

		static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
			value = nextValue()
		}
	}
}

extension View {
	func rotatingLayoutPosition(_ angle: Angle) -> some View {
		modifier(RotationModifier(rotation: angle))
	}
}
