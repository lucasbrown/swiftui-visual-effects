/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

/// Creates a blur effect.
public struct BlurEffectModifier: ViewModifier {
	public init() {}

	public func body(content: Content) -> some View {
		content.overlay(_BlurVisualEffectViewRepresentable())
	}
}

/// Creates a blur effect.
public struct BlurEffect: View {
	public init() {}

	public var body: some View {
		_BlurVisualEffectViewRepresentable()
	}
}

fileprivate struct _BlurVisualEffectViewRepresentable: UIViewRepresentable {
	func makeUIView(context: Context) -> UIVisualEffectView {
		UIVisualEffectView(effect: UIBlurEffect(style: context.environment.blurEffectStyle))
	}

	func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}
