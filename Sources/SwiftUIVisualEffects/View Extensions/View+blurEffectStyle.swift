/**
* SwiftUIVisualEffects
*/

import SwiftUI

public extension View {
	/**
	Sets the style for blur effects within this view.
	
	To set a specific style for all blur effects and vibrancy effects containing blur effects within a view, use the `blurEffectStyle(_:)` modifier:
	```
	ZStack {
		backgroundContent
			.blurEffect()
		
		foregroundContent
			.vibrancyEffect()
	}
	.blurEffectStyle(.systemMaterial)
	```
	*/
	func blurEffectStyle(_ style: UIBlurEffect.Style) -> some View {
		environment(\.blurEffectStyle, style)
	}
}
