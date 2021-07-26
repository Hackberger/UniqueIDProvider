# UniqueIDProvider

The `class UniqueIDProvider` is a singleton class. It provides access to its handle.

`let idProvider = UniqueIDProvider.sharedInstance()` provides access to the utility.

The function `next()` provides the next unique value. The first value is zero (0).

**Caution: Currently the class does not provided persistence and it will start over at each invocation of the program that uses it!**

 
