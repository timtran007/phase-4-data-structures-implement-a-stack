# your code here
class Stack
    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        raise "Stack Overflow" if full?
        @stack.push(value)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        self.size == 0
    end

    def full?
        self.size == @limit
    end

    def search(target)
        @stack.each_with_index do |value, index|
            return self.size - index - 1 if value == target
        end
        -1
    end

end







