To fix the memory leak, explicitly release the string when it's no longer needed.  Since we're using ARC, setting the property to `nil` is sufficient:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [NSString stringWithFormat:@"Hello, world!"];
    // ... some code ...
    self.myString = nil; // Release the string
}
@end
```

Alternatively, if the string's lifetime is tied to the `MyClass` instance, you don't need to do anything; ARC will handle the memory management when `MyClass` is deallocated.  However, the explicit `nil` assignment improves clarity and makes the code more robust.