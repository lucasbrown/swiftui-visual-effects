/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

public extension View {
	/// Creates a vibrancy effect.
	func vibrancyEffect() -> some View {
		ModifiedContent(content: self, modifier: VibrancyEffectModifier())
	}
}
