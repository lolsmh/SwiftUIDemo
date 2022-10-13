//
//  View+debug.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 19/9/22.
//

import SwiftUI

extension View {
	func debug() -> Self {
		print(Mirror(reflecting: self).subjectType)
		return self
	}
}
