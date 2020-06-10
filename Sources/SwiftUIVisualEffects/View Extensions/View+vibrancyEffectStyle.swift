/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

public extension View {
	/// Sets the style for vibrancy effects within this view.
	func vibrancyEffectStyle(_ style: UIVibrancyEffectStyle) -> some View {
		environment(\.vibrancyEffectStyle, style)
	}
}
