/**
* SwiftUIVisualEffects
*/

import SwiftUI

public extension View {
	/**
	Sets the style for vibrancy effects within this view.
	
	To set a specific style for all vibrancy effects within a view, use the `vibrancyEffectStyle(_:)` modifier:
	```
	ZStack {
		backgroundContent
			.blurEffect()
		
		VStack {
			topContent
				.vibrancyEffect()
			
			bottomContent
				.vibrancyEffect()
		}
		.vibrancyEffectStyle(.fill)
	}
	```
	*/
	func vibrancyEffectStyle(_ style: UIVibrancyEffectStyle) -> some View {
		environment(\.vibrancyEffectStyle, style)
	}
}
