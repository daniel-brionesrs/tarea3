#Solution File
class Node

    attr_accessor :value, :ref

    def initialize val,ref
        @value = val
        @ref = ref
    end
end

class LinkedList

    def initialize val
        @inicial = Node.new(val,nil)
    end
    
    def add(value)
        actual = @inicial
        while actual.ref != nil
            actual = actual.ref
        end 
        actual.ref = Node.new(value,nil)
        self    
    end

    def delete(val)
        actual = @inicial
        if actual.value == val
            @inicial = @inicial.ref
        else
            actual = @inicial
            while (actual != nil) && (actual.ref != nil) && ((actual.ref).value != val)
                actual = actual.ref
            end 

            if (actual != nil) && (actual.ref != nil)
                actual.ref = (actual.ref).ref
            end
        end
    end
    
    def display
        actual = @inicial
        lista = [] 
        while actual.ref != nil 
            lista = lista + [actual.value.to_s]
            actual = actual.ref
        end
        lista = lista + [actual.value.to_s]
        puts lista.join(",")
    end

end

k = gets.chomp
	lst = LinkedList.new(k)
while (k != "-1")
	k = gets.chomp	
if (k != "-1")
	lst.add(k)
end
end
puts
lst.display

	