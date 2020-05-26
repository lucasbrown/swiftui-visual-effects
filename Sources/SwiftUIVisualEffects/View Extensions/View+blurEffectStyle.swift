/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

public extension View {
	/// The intensity of a blur effect.
	func blurEffectStyle(_ value: UIBlurEffect.Style) -> some View {
		environment(\.blurEffectStyle, value)
	}
}
