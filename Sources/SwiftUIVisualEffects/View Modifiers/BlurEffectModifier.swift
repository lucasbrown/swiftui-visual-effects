/**
* SwiftUIVisualEffects
*/

import SwiftUI

/// Creates a blur effect.
public struct BlurEffectModifier: ViewModifier {
	public init() {}
	
	public func body(content: Content) -> some View {
		content
			.overlay(_BlurVisualEffectViewRepresentable())
	}
}
