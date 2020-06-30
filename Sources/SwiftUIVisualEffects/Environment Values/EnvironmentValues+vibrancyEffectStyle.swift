/**
* SwiftUIVisualEffects
*/

import SwiftUI

extension EnvironmentValues {
	var vibrancyEffectStyle: UIVibrancyEffectStyle? {
		get {
			self[VibrancyEffectStyleKey.self]
		}
		set {
			self[VibrancyEffectStyleKey.self] = newValue
		}
	}
}
