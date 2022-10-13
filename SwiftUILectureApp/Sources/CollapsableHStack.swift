//
//  CollapsableHStack.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 13/10/22.
//

import SwiftUI

struct CollapsableHStack<Content, Element>: View where Content: View {
	
	var data: [Element]
	var expanded: Bool = true
	var spacing: CGFloat? = 8
	var alignment: VerticalAlignment = .center
	var collapsedWidth: CGFloat = 10
	var content: (Element) -> Content
	
	var body: some View {
		HStack {
			//...
		}
	}
}

struct CollapsableHStack_Previews: PreviewProvider {
	static var previews: some View {
		CollapsableHStack(data: []) {
			Text("")
		}
	}
}
