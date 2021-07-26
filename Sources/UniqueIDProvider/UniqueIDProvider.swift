public class UniqueIDProvider {
    private static let handle: UniqueIDProvider = UniqueIDProvider()

    public static func sharedInstance() -> UniqueIDProvider {
        return handle
    }
    
    private var counter: Int
    
    public func next() -> Int {
        counter += 1
        return counter
    }
    
    private init() {
        counter = 0
    }
}
