/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

struct _VibrancyVisualEffectViewRepresentable<Content: View>: UIViewRepresentable {
	init(content: Content) {
		self.content = content
	}
	
	func makeCoordinator() -> Coordinator {
		Coordinator(content: content)
	}
	
	func makeUIView(context: Context) -> UIVisualEffectView {
		context.coordinator.configuredVisualEffectView(from: context)
	}
	
	func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
		context.coordinator.configuredVisualEffectView(from: context)
	}
	
	private let content: Content
}

extension _VibrancyVisualEffectViewRepresentable {
	final class Coordinator {
		init(content: Content) {
			let hostingController = UIHostingController(rootView: content)
			hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
			hostingController.view.backgroundColor = nil
			
			visualEffectView.contentView.addSubview(hostingController.view)
		}
		
		@discardableResult func configuredVisualEffectView(from context: Context) -> UIVisualEffectView {
			let blurEffect = UIBlurEffect(style: context.environment.blurEffectStyle)
			
			// Set `visualEffectView`'s `effect`.
			if let vibrancyEffectStyle = context.environment.vibrancyEffectStyle {
				visualEffectView.effect = UIVibrancyEffect(blurEffect: blurEffect, style: vibrancyEffectStyle)
			} else {
				visualEffectView.effect = UIVibrancyEffect(blurEffect: blurEffect)
			}
			
			return visualEffectView
		}
		
		private let visualEffectView = UIVisualEffectView()
	}
}
