class stack<T> {
    var array = [T] ()
    func push(_ element: T) {
        array.append(element)
    }
    func top() -> T? {
        guard array.count != 0 else {
            print("the operation top() is invalid --- the stack is empty --- please check it")
            return nil
        }
        return array[array.count-1]
    }
    func pop() {
        guard array.count != 0 else {
            print("the operation pop() is invalid --- the stack is empty --- please check it")
            return
        }
        let index = array.count - 1
        array.remove(at: index)
    }
    func empty() -> Bool {
        return array.count == 0
    }
}
