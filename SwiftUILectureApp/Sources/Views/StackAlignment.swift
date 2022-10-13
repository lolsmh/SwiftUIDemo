//
//  StackAlignment.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 9/10/22.
//

import SwiftUI

struct MyCenterID: AlignmentID {
	static func defaultValue(in context: ViewDimensions) -> CGFloat {
		context.height / 2
	}
}

extension VerticalAlignment {
	static let myCenter: VerticalAlignment = VerticalAlignment(MyCenterID.self)
	static let spiral: VerticalAlignment = VerticalAlignment(SpiralAlignmentID.self)

}

struct SpiralAlignmentID: AlignmentID {
	static public func defaultValue(in context: ViewDimensions) -> CGFloat {
		CGFloat(
			context.height + (
				(arc4random() % 2 == 0)
				? CGFloat(arc4random() % 150)
				: -CGFloat(arc4random() % 150)
			)
		)
	}
}

struct StackAlignment: View {
	var body: some View {
		HStack(alignment: .myCenter) {
			Rectangle().fill(Color.blue)
				.frame(width: 100, height: 100)
			Rectangle().fill(Color.green)
				.frame(width: 60, height: 60)
			Rectangle().fill(Color.red)
				.frame(width: 80, height: 80)
				.alignmentGuide(.myCenter) { dictionary in
					return dictionary[.myCenter] - 40
				}
		}
	}
}

struct StackAlignment_Previews: PreviewProvider {
    static var previews: some View {
        StackAlignment()
    }
}
