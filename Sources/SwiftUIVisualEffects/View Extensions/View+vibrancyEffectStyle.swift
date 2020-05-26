/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

public extension View {
	/// The style that defines what level of vibrancy to apply to content.
	func vibrancyEffectStyle(_ value: UIVibrancyEffectStyle) -> some View {
		environment(\.vibrancyEffectStyle, value)
	}
}
