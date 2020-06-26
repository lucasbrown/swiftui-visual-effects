# SwiftUI Visual Effects

<p align="center">
  <img width="400" src="https://user-images.githubusercontent.com/49323986/85805691-a2fceb00-b712-11ea-859d-bd0c3d93c878.png">
  <img width="400" src="https://user-images.githubusercontent.com/49323986/85805707-adb78000-b712-11ea-94e6-f88716401a2c.png">
  <br>
  System materials in SwiftUI
</p>

View modifiers that wrap `UIVisualEffectView` and all of its associated objects, with environment integration for storing effect styles. Vibrancy effects will always use the current blur effect style for proper vibrancy-effect layering.

### Adding and Styling a Blur Effect
```swift
YourView()
  // Add a blur effect.
  .blurEffect()
  // Style the blur effect.
  .blurEffectStyle(.systemChromeMaterial)
```

### Adding and Styling a Vibrancy Effect
```swift
YourView()
  // Add a vibrancy effect.
  .vibrancyEffect()
  // Style the vibrancy effect.
  .vibrancyEffectStyle(.fill)
```

### Adding and Styling Blur and Vibrancy Effects
```swift
ZStack {
  YourBackgroundContent()
    // Add a blur effect.
    .blurEffect()

  YourForegroundContent()
    // Add a vibrancy effect.
    .vibrancyEffect()
}
// Set the style for blur effects within this view.
.blurEffectStyle(.systemChromeMaterial)
// Set the style for vibrancy effects within this view.
.vibrancyEffectStyle(.fill)
```

## Adding Blur and Vibrancy Effects Directly to a View

Adding both a blur and vibrancy effect directly to a view only displays the blur effect.

If you’d like to blur the view’s background content, while adding vibrancy to the view’s foreground content, use the `.background()` modifier, and pass `BlurEffect()` as its argument. Although `BlurEffect` may not be very Apple-like, it’s better than the `.blurEffect()` modifier implementation below.

```swift
YourView()
  .vibrancyEffect()
  .background(BlurEffect())

// as opposed to:

YourView()
  .vibrancyEffect()
  .background(
    Color.clear
      .blurEffect()
  )
```
