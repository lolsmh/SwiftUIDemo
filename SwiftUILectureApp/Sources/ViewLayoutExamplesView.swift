//
//  ViewLayoutExamplesView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct ViewLayoutExamplesView: View {
	@AppStorage("selectedViewStorage")
	private var selectedViewStorage: Int?
	
	@State
	private var selectedView = 0
	
	var body: some View {
		VStack {
			Menu("Views") {
				Menu("Measured Views") {
					Menu("Shapes") {
						Button { selectedView = 0 } label: { Text("Path") }
						Button { selectedView = 1 } label: { Text("TriangleShape") }
						Button { selectedView = 2 } label: { Text("RotationView") }
					}
					Menu("Views") {
						Button { selectedView = 3 } label: { Text("Image") }
						Button { selectedView = 10 } label: { Text("Text") }
						Menu("Stack") {
							Button { selectedView = 11 } label: { Text("Stack Layout") }
							Button { selectedView = 12 } label: { Text("Layout Priorities") }
							Button { selectedView = 13 } label: { Text("Alignment") }
						}
						Button { selectedView = 14 } label: { Text("Anchors Example") }
					}
					Menu("Modifiers") {
						Menu("Frame") {
							Button { selectedView = 4 } label: { Text("Fixed-Size Frame") }
							Button { selectedView = 5 } label: { Text("Dynamic Frame") }
						}
						Button { selectedView = 6 } label: { Text("Offset") }
						Button { selectedView = 7 } label: { Text("Padding") }
						Menu("Overlay / Background") {
							Button { selectedView = 8 } label: { Text("Background") }
							Button { selectedView = 9 } label: { Text("Overlay") }
						}
					}
				}
				Button { selectedView = 15 } label: { Text("Alignment Guide") }
			}
			.padding(.top)
			MeasureView(selectedView: selectedView)
		}
		.onAppear {
			selectedView = selectedViewStorage ?? 0
		}
		.onChange(of: selectedView) { index in
			selectedViewStorage = index
		}
    }
}

struct MeasureView: View {
	let selectedView: Int
	var body: some View {
		if selectedView == 15 {
			AlignmentGuideView()
		} else {
			MeasureBehavior {
				if selectedView == 0 {
					PathView()
				} else if selectedView == 1 {
					TriangleShape()
				} else if selectedView == 2 {
					RotationView()
				} else if selectedView == 3 {
					ImagesView()
				} else if selectedView == 4 {
					FrameTextView()
				} else if selectedView == 5 {
					FrameTriangleView()
						.dynamicFrameTest()
				} else if selectedView == 6 {
					OffsetView()
				} else if selectedView == 7 {
					PaddingView()
				} else if selectedView == 8 {
					BackgroundView()
				} else if selectedView == 9 {
					OverlayView()
				} else if selectedView == 10 {
					TextView()
				} else if selectedView == 11 {
					StackView()
				} else if selectedView == 12 {
					LayoutPriorities()
				} else if selectedView == 13 {
					StackAlignment()
				} else if selectedView == 14 {
					AnchorsView()
				}
			}
			.padding()
		}
	}
}

struct ViewLayoutExamplesView_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutExamplesView()
    }
}
