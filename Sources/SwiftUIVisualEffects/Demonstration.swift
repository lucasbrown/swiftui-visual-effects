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
			
			VStack {
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

private extension SwiftUIVisualEffects_Demonstration {
	var linearGradient: LinearGradient {
		LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .top, endPoint: .bottom)
	}
	
	var image: some View {
		Image(systemName: "hexagon.fill")
			.resizable()
			.scaledToFit()
			.frame(width: 150, height: 150)
	}
	
	var largeTitleText: Text {
		Text("Hello, World")
			.font(.largeTitle)
	}
	
	var titleText: Text {
		Text("Greetings from SwiftUI")
			.font(.title)
	}
}
