/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
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
