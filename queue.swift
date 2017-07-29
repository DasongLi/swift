class queue<T> {
    var array = [T] ()
    func front() -> T? {
        guard array.count != 0 else {
            print("the operation top() is invalid --- the queue is empty --- please check it")
            return nil
        }
        return array[0]
    }
    func push(_ element: T) {
        array.append(element)
    }
    func empty() -> Bool {
        return array.count == 0
    }
    func pop() {
        guard array.count != 0 else {
            print("the operation pop() is invalid --- the queue is empty --- please check it")
            return
        }
        array.removeFirst()
    }
}
