/**
* SwiftUIVisualEffects
*/

import SwiftUI

/// Creates a vibrancy effect.
public struct VibrancyEffectModifier: ViewModifier {
	public init() {}
	
	public func body(content: Content) -> some View {
		content
			// Hide the original content, keeping its intrinsic content size.
			.hidden()
			.overlay(_VibrancyVisualEffectViewRepresentable(content: content))
	}
}
