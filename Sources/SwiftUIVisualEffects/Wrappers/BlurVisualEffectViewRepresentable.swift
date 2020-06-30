/**
* SwiftUIVisualEffects
*/

import SwiftUI

struct _BlurVisualEffectViewRepresentable: UIViewRepresentable {
	func makeUIView(context: Context) -> UIVisualEffectView {
		UIVisualEffectView(effect: UIBlurEffect(style: context.environment.blurEffectStyle))
	}
	
	func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
		uiView.effect = UIBlurEffect(style: context.environment.blurEffectStyle)
	}
}
