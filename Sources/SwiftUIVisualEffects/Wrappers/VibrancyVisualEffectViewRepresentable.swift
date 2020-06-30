/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

struct _VibrancyVisualEffectViewRepresentable<Content: View>: UIViewRepresentable {
	init(content: Content) {
		self.content = content
	}
	
	func makeUIView(context: Context) -> UIVisualEffectView {
		let blurEffect = UIBlurEffect(style: context.environment.blurEffectStyle)
		let visualEffectView = UIVisualEffectView()
		
		// Set `visualEffectView`'s `effect`.
		if let vibrancyEffectStyle = context.environment.vibrancyEffectStyle {
			visualEffectView.effect = UIVibrancyEffect(blurEffect: blurEffect, style: vibrancyEffectStyle)
		} else {
			visualEffectView.effect = UIVibrancyEffect(blurEffect: blurEffect)
		}
		
		// Embed `content` in `visualEffectView`'s `contentView`.
		let hostingControllerView = UIHostingController(rootView: content).view!
		// Center `hostingControllerView`'s frame (at the cost of losing its intrinsic content size).
		hostingControllerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		hostingControllerView.backgroundColor = .clear
		visualEffectView.contentView.addSubview(hostingControllerView)
		
		return visualEffectView
	}
	
	func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
	
	private let content: Content
}
