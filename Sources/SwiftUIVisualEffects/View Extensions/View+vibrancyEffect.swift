/**
* SwiftUIVisualEffects
*/

import SwiftUI

public extension View {
	/// Creates a vibrancy effect.
	func vibrancyEffect() -> some View {
		ModifiedContent(content: self, modifier: VibrancyEffectModifier())
	}
}
