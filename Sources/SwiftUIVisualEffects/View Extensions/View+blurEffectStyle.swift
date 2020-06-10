/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

public extension View {
	/// The intensity of a blur effect.
	func blurEffectStyle(_ style: UIBlurEffect.Style) -> some View {
		environment(\.blurEffectStyle, style)
	}
}
