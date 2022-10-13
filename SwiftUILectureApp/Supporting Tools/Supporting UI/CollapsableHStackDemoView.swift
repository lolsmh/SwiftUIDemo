//
//  CollapsableHStackDemoView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 13/10/22.
//

import SwiftUI

struct CollapsableHStackDemoView: View {
	
	@State private var expanded: Bool = true
	private let color = [Color.red, .green, .blue, .orange]
	
	var body: some View {
		VStack {
			Spacer()
			HStack {
				Text("Этот стек")
				CollapsableHStack(
					data: Array(color.enumerated()),
					expanded: expanded,
					spacing: 12,
					collapsedWidth: 30
				) { index, color in
					Text("\(index)")
						.frame(width: 200, height: 200)
						.background(color)
						.cornerRadius(12)
						.shadow(
							color: Color.black.opacity(0.1),
							radius: 10,
							x: 5,
							y: 3
						)
				}
				Text("Просит себе место")
			}
			
			Spacer()
			
			Button {
				withAnimation(.spring()) {
					expanded.toggle()
				}
			} label: {
				Text("Toggle Collaps")
			}
			.padding()
		}
	}
}
