/**
* SwiftUIVisualEffects
* Copyright © 2020 Lucas Brown
*/

import SwiftUI

public struct SwiftUIVisualEffects_Demonstration: View {
	public init() {}
	
	public var body: some View {
		ZStack {
			linearGradient
				.blurEffect()
			
			VStack(spacing: 8) {
				image
					.vibrancyEffect()
				
				largeTitleText
					.vibrancyEffect()
					.vibrancyEffectStyle(.label)
				
				titleText
					.vibrancyEffect()
					.vibrancyEffectStyle(.secondaryLabel)
			}
		}
		.blurEffectStyle(.systemUltraThinMaterial)
		.edgesIgnoringSafeArea(.all)
	}
}

// MARK: - private extension SwiftUIVisualEffects_Demonstration

private extension SwiftUIVisualEffects_Demonstration {
	var linearGradient: LinearGradient {
		LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
	}
	
	var image: some View {
		Image(systemName: "hexagon.fill")
			.resizable()
			.scaledToFit()
			.frame(width: 150, height: 150)
	}
	
	var largeTitleText: Text {
		Text("Hello, world.")
			.font(.largeTitle)
	}
	
	var titleText: Text {
		Text("The world says, \"Hey.\"")
			.font(.title)
	}
}
