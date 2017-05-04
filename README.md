# SimpleFlipView

SimpleFlipView provides a way to switch between two views with various transition animation like flip, dissolve, curl.

![image](https://github.com/javalnanda/SimpleFlipView/blob/master/SimpleFlipView.gif)

## Setup

## Manual

Copy SimpleFlipView.swift file into your project.

Adding view programmatically

```
// Adding SimpleFlipView programmatically
        // Make sure frontView, backView and the flipView are of same dimensions
        let viewOne = UIView.init(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        let viewTwo = UIView.init(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        
        viewOne.backgroundColor = UIColor.yellow
        viewTwo.backgroundColor = UIColor.blue
        
        let flipView = SimpleFlipView.init(frame: CGRect(origin: CGPoint(x: 130, y: 100), size: CGSize(width: 100, height: 100)))
        flipView.frontView = viewOne
        flipView.backView = viewTwo
        flipView.transitionStyle = UIViewAnimationOptions.transitionCurlUp
        self.view .addSubview(flipView)
```

To add via Storyboard:
1) Add UIView on your storyboard's View Controller Scene. 
2) Set its class as SimpleFlipView.
3) Connect the outlet for SimpleFlipView
4) Add two more UIView for front view and back view to your View Controller Scene outside of Main View as these view will be added as subview to flipview
5) Connect outlets of frontview and backview
6) Set up these views in code as follow:

```
// Setting up SimpleFlipView added via Storyboard
        sbFlipView.frontView = self.frontView
        sbFlipView.backView = self.backView
        sbFlipView.transitionStyle = UIViewAnimationOptions.transitionFlipFromLeft
```

## Customization

- You can set your own animationDuration
- You can set your own transitionStyle

## Suggestions or feedback?

Feel free to create a pull request to contribute, open an issue or find me [on Twitter](https://twitter.com/javalnanda).


