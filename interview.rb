digits = Array(0..9)
num = digits.at(6)
puts "#{num}"

def partition(array)
  # write your code here
  pivot = array[0]

  left = array.slice(1..-1).map {|num| num if num < pivot}.compact
  right = array.slice(1..-1).map {|num| num if num > pivot}.compact

  result = left + [pivot] + right
  result
end



p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]




# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  nodes = []
  lists.each do |l|
      while l
          nodes << l
          l = l.next
      end
  end

  nodes = nodes.sort_by(&:val)
  dummy = tmp = ListNode.new(nil)
  nodes.each do |node|
      tmp.next = node
      tmp = tmp.next
  end

  dummy.next
  
end

self is a special variable that points to the object that "owns" the currently executing code. Ruby uses self everwhere: For instance variables: @myvar. For method and constant lookup. When defining methods, classes and modules.2 nov. 2015


def quicksort(array, lower = 0, higher = array.length - 1)
  return [] if array.empty?

  if lower < higher
    pivot = partition_using_sub_arrays(array, lower, higher)
    quicksort(array, lower, pivot - 1)
    quicksort(array, pivot+1, higher)
    puts "#{array}"
  end
end