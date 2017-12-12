# simple-tween
Simple tween library for swift

## Usage
```Swift
let tween = Tween(10) // Tweening during 10 sec
tween.start() // Start tweening
```

### Check tween progress
```Swift
if tween.isTweening {
  print(tween.position) // position 0.0~1.0
}
```

### pause tweening
```Swift
tween.pause() // Pause tweening
tween.start() // Restart
```

## Instration
### [Carthage](https://github.com/Carthage/Carthage)
Add the following to your `Cartfile`:
```
  github "natmark/simple-tween"
```

## License
simple-tween is available under the MIT license. See the LICENSE file for more info.
