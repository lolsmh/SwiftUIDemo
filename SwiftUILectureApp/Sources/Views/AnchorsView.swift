//
//  AnchorsView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 12/10/22.
//

import SwiftUI

struct BoundsKey: PreferenceKey {
	static var defaultValue: Anchor<CGRect>? = nil
	
	static func reduce(value: inout Anchor<CGRect>?, nextValue: () -> Anchor<CGRect>?) {
		value = value ?? nextValue()
	}
}

struct AnchorsView: View {
	let tabs: [Text] = [
		Text("World Clock"),
		Text("Alarm"),
		Text("Bedtime")
	]
	@State var selectedTabIndex = 0
	@Namespace var namespace
	var body: some View {
		HStack {
			ForEach(Array(tabs.enumerated()), id: \.offset) { tabIndex, tabLabel in
				Button {
					selectedTabIndex = tabIndex
				} label: {
					tabLabel
				}
				.anchorPreference(
					key: BoundsKey.self,
					value: .bounds
				) { anchor in
					self.selectedTabIndex == tabIndex ? anchor : nil
				}
				.overlayPreferenceValue(BoundsKey.self) { anchor in
					if let anchor {
						GeometryReader { proxy in
							Rectangle()
								.fill(Color.accentColor)
								.frame(width: proxy[anchor].width, height: 2)
								.offset(x: proxy[anchor].minX, y: proxy[anchor].maxY)
						}
					}
				}
			}
		}
	}
}

struct AnchorsView_Previews: PreviewProvider {
    static var previews: some View {
        AnchorsView()
    }
}
