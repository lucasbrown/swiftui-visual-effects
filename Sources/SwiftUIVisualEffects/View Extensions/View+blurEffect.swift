/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

public extension View {
	/// Creates a blur effect.
	func blurEffect() -> some View {
		ModifiedContent(content: self, modifier: BlurEffectModifier())
	}
}
