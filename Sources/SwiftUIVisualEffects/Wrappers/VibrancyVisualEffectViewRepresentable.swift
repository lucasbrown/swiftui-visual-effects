/**
* SwiftUIVisualEffects
*/

import SwiftUI

struct _VibrancyVisualEffectViewRepresentable<Content: View>: UIViewRepresentable {
	/// - Warning: `content`'s intrinsic content size will be lost.
	init(content: Content) {
		self.content = content
	}
	
	func makeCoordinator() -> Coordinator {
		Coordinator(content: content)
	}
	
	func makeUIView(context: Context) -> UIVisualEffectView {
		context.coordinator.configureVisualEffectView(from: context)
		
		return context.coordinator.visualEffectView
	}
	
	func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
		context.coordinator.configureVisualEffectView(from: context)
	}
	
	private let content: Content
}

extension _VibrancyVisualEffectViewRepresentable {
	final class Coordinator {
		let visualEffectView = UIVisualEffectView()
		
		init(content: Content) {
			let hostingController = UIHostingController(rootView: content)
			hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
			hostingController.view.backgroundColor = nil
			
			visualEffectView.contentView.addSubview(hostingController.view)
		}
		
		func configureVisualEffectView(from context: Context) {
			let blurEffect = UIBlurEffect(style: context.environment.blurEffectStyle)
			
			// Set `visualEffectView`'s `effect`.
			if let vibrancyEffectStyle = context.environment.vibrancyEffectStyle {
				visualEffectView.effect = UIVibrancyEffect(blurEffect: blurEffect, style: vibrancyEffectStyle)
			} else {
				visualEffectView.effect = UIVibrancyEffect(blurEffect: blurEffect)
			}
		}
	}
}
