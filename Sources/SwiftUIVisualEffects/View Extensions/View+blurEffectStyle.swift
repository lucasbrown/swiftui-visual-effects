/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

public extension View {
	/// Sets the style for blur effects within this view.
	func blurEffectStyle(_ style: UIBlurEffect.Style) -> some View {
		environment(\.blurEffectStyle, style)
	}
}
