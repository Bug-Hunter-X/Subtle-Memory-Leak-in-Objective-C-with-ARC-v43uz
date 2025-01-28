In Objective-C, a common yet subtle issue arises when dealing with memory management using ARC (Automatic Reference Counting).  Consider this scenario: 

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [NSString stringWithFormat:@"Hello, world!"];
    // ... some code ...
}
@end
```

This looks innocuous enough. However, if `someMethod` is called repeatedly and `myString` is never explicitly set to `nil`, you'll have a memory leak. Each call creates a new string, but because `myString` retains it, the old string is never released. This could create a gradual increase in memory usage.