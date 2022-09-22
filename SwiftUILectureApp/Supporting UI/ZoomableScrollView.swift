//
//  ZoomableScrollView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 28/5/22.
//

import UIKit
import SwiftUI
import SnapKit

struct ZoomableScrollView<Content: View>: UIViewRepresentable {
	private var content: Content
	
	init(@ViewBuilder content: () -> Content) {
		self.content = content()
	}
	
	func makeUIView(context: Context) -> UIScrollView {
		let scrollView = UIScrollView()
		scrollView.delegate = context.coordinator
		scrollView.maximumZoomScale = 20
		scrollView.minimumZoomScale = 0
		scrollView.bouncesZoom = true
		scrollView.showsVerticalScrollIndicator = false
		scrollView.showsHorizontalScrollIndicator = false
		
		let hostedView = context.coordinator.hostingController.view!
		scrollView.addSubview(hostedView)
		hostedView.snp.makeConstraints { make in
			make.edges.equalToSuperview().inset(16)
		}
		
		return scrollView
	}
	
	func makeCoordinator() -> Coordinator {
		return Coordinator(hostingController: UIHostingController(rootView: self.content))
	}
	
	func updateUIView(_ uiView: UIScrollView, context: Context) {
		context.coordinator.hostingController.rootView = self.content
		assert(context.coordinator.hostingController.view.superview == uiView)
	}
	
	// MARK: - Coordinator
	
	class Coordinator: NSObject, UIScrollViewDelegate {
		var hostingController: UIHostingController<Content>
		
		init(hostingController: UIHostingController<Content>) {
			self.hostingController = hostingController
		}
		
		func viewForZooming(in scrollView: UIScrollView) -> UIView? {
			return hostingController.view
		}
	}
}
