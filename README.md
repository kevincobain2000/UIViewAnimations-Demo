#### UIViewAnimations Demo (Video)

[![DEMO](http://img.youtube.com/vi/aH1qOp5oHsY/0.jpg)](http://www.youtube.com/watch?v=aH1qOp5oHsY)

##### In Your Controller.h

```
#import "Animations.h"
```

##### In your Controller.m

```
// Zoom in
        [Animations zoomIn:self.imageView andAnimationDuration:1.0 andWait:YES];
        
// Fade in"
        [Animations fadeIn:self.imageView andAnimationDuration:1.0 andWait:YES];
        
// Fade out"
        [Animations fadeOut:self.imageView andAnimationDuration:1.0 andWait:YES];
        
// Move down
        [Animations moveDown:self.imageView andAnimationDuration:1.0 andWait:YES andLength:100.0];
        
// Move up
        [Animations moveUp:self.imageView andAnimationDuration:1.0 andWait:YES andLength:100.0];
        
// Move left
        [Animations moveLeft:self.imageView andAnimationDuration:1.0 andWait:YES andLength:100.0];
        
// Move right
        [Animations moveRight:self.imageView andAnimationDuration:1.0 andWait:YES andLength:100.0];
        
// Bounce down
        [Animations shadowOnView:self.imageView andShadowType:@"Elliptical"];
        [Animations moveDown:self.imageView andAnimationDuration:0.2 andWait:YES andLength:100.0];
        [Animations moveUp:self.imageView andAnimationDuration:0.2 andWait:YES andLength:20.0];
        [Animations moveDown:self.imageView andAnimationDuration:0.1 andWait:YES andLength:20.0];
        [Animations moveUp:self.imageView andAnimationDuration:0.1 andWait:YES andLength:12.0];
        [Animations moveDown:self.imageView andAnimationDuration:0.1 andWait:YES andLength:12.0];


// Bounce up
        [Animations shadowOnView:self.imageView andShadowType:@"Elliptical"];
        [Animations moveUp:self.imageView andAnimationDuration:0.2 andWait:YES andLength:50.0];
        [Animations moveDown:self.imageView andAnimationDuration:0.2 andWait:YES andLength:10.0];
        [Animations moveUp:self.imageView andAnimationDuration:0.1 andWait:YES andLength:5.0];
        [Animations moveDown:self.imageView andAnimationDuration:0.1 andWait:YES andLength:10.0];
        [Animations moveUp:self.imageView andAnimationDuration:0.1 andWait:YES andLength:12.0];
        
        
// Shadow Trapezoidal
        [Animations shadowOnView:self.imageView andShadowType:@"Trapezoidal"];
        
    
// Shadow Elliptical
        [Animations shadowOnView:self.imageView andShadowType:@"Elliptical"];
        
// Shadow Curl
        [Animations shadowOnView:self.imageView andShadowType:@"Curl"];
        
// Frame and Shadow
        [Animations frameAndShadow:self.imageView];
    
// Rotate
        [Animations rotate:self.imageView andAnimationDuration:1.0 andWait:YES andAngle:20];
        
        
// Rotate and Fade in
        [Animations rotate:self.imageView andAnimationDuration:2.0 andWait:NO andAngle:340];
        [Animations fadeIn:self.imageView andAnimationDuration:2.0 andWait:YES];
        
```


#### Want to Edit or Add New Animations ?

Here are the animations: https://github.com/kevincobain2000/UIViewAnimations-Demo/blob/master/UIViewAnimations%20Demo/Animations.m




