# def threed(ary)
#     count = 0
#     (ary.size-1).times do |i|
#         slice = ary[i..(i+1)]
#         if slice == [3,3]
#             return false
#         end
#         if ary[i]==3
#             count += 1
#         end
#         if count == 3
#             return true
#         end
#     end
# end
# puts threed([3,3,3,6,9,2]) #false
# puts threed([3,3,6,9,2]) #false
# puts threed([3,5,3,6,3,2]) #true

# def same_first_last(ary)
#     if ary.size < 1
#         return false
#     elsif ary.size == 1
#         return true
#     elsif ary.size > 1 && ary[0] == ary[(ary.size-1)]
#         return true
#     else 
#         return false
#     end 
# end

# puts same_first_last ([6])
# puts same_first_last ([])
# puts same_first_last ([8,9,2,4])

# def get_sandwich (str)
#     bread_positions = []
#     (str.size - 4).times do |i|
#         slice = str[i..(i+4)]
#         if slice == "bread"
#             bread_positions.push(i)
#         end
#     end
#     if bread_positions.size >= 2
#         position1 = bread_positions[0] + 5
#         position2 = bread_positions[1]-1
#         return str[position1..position2]
#     else
#         return "GET MORE BREAD! You idiot!"
#     end
# end
# puts get_sandwich("breadhamburgerbread")
# puts get_sandwich("hibreadgeesebreadeatbreadyesbreadhi")

# def shift_left(ary)
#     new_ary=[]
#     if ary.size <= 1
#         return ary
#     end
#     if ary.size > 1
#         r = ary[0] 
#         ary.size.times do |i|
#             if i==0
#                 last = ary[i]
#             else
#                 new_ary.push(ary[i])
#             end
#         end
#     end
#     new_ary.push(r)
#     return new_ary
# end
# print shift_left([5,8,2,0,1,5,8]), "\n"

# def count_code (str)
#     count = 0
#     (str.size - 3).times do |i|
#         slice = str[i..(i+3)]
#         if slice[0..1] == "co" && slice[3] == "e"
#             count += 1
#         end
#     end
#     return count
# end
# puts count_code ("fhoihofconefkiaecodewyus")

# def can_balance(list)
#     total = 0
#     list.each do |n|
#         total += n
#     end
#     half = total / 2
#     add = 0
#     list.each do |n|
#         add +=n
#         if add == half
#             return true
#         end
#     end
#     return false            
# end
# puts can_balance ([1.0,2,4])

# def middle_way (list1,list2)
#     new_ary = []
#     if list1.size % 2 == 1
#         n = (list1[list1.size / 2])
#     else
#         n = (list1[list1.size / 2] + list1[list1.size / 2 - 1]) / 2.0
#     end
#     if list2.size % 2 == 1
#         r=(list2[list2.size / 2])
#     else
#         r=(list2[list2.size / 2] + list2[list2.size / 2 - 1]) / 2.0
#     end
#     new_ary.push(n,r)
#     return new_ary
    
# end
# print middle_way([3,8,2,7,2,5,8,9,3],[3,7,9,2,6,3,7,9,4,2]), "\n"

# def either_2_4(ary)
#     count = 0
#     count2 = 0
#     (ary.size-1).times do |i|
#         slice = ary[i..(i+1)]
#         if slice == [2,2]
#             count += 1
#         end
#         if slice == [4,4]
#             count2 += 1
#         end
#     end
#     if count >=1 && count2 >= 1
#         return false
#     elsif count >= 1
#         return true
#     elsif count2 >= 1
#         return true
#     else
#         return false
#     end
# end
# puts either_2_4([2,2,4,4,6,6]) #false
# puts either_2_4([2,2,5,9,3,6]) #true
# puts either_2_4([2,9,4,7,2,6]) #false

# def max_span (ary)
#     max=0
#     temp=0
#     ary.size.times do |i|
#         ary.size.times do |n|
#             if ary[n] == ary[i]
#                 temp = i - n
#                 if temp>max
#                     max=temp -1
#                 end
#             end
#         end
#     end
#     if max == 0
#         max = 1
#     end
#     return max
# end    
# puts max_span([4,8,2,7,4,6,2,7,5])

# def g_happy(str)
#     count1=0
#     count2=0
#     str.size.times do |i|
#         slice = str[i]
#         if slice == "g"
#             count1 += 1
#         end
#     end
#     (str.size-1).times do |i|
#         slice = str[i..(i+1)]
#         if slice == "gg"
#             count2 += 1
#         end
#     end
#     if count1 / 2 == count2
#         return true
#     else
#         return false
#     end
# end
# puts g_happy("erufhjdiwfyusghvzdhbcjNKsxmuifhygdjcskxnmifughbnjfk") #false
# puts g_happy("gghggh")#true

# def merge_1(list1,list2)
#     list_new = []
#     list1.size.times do |i|
#         list_new.push(list1[i])
#     end
#     list2.size.times do |i|
#         list_new.push(list2[i])
#     end
    
#     switch = true
#     time = list_new.size - 1
#     while switch == true
#         switch = false
#         time.times do |i|
#             if list_new[i] > list_new[i+1]
#                 temp = 0
#                 temp = list_new[i]
#                 list_new[i] = list_new[i+1]
#                 list_new [i+1] = temp
#                 switch = true
#             end
#         end
#     end
#     return list_new
# end
# puts merge_1([4,6,7,8],[2,7,2,6,8])

def merge2(list1,list2)
    list_new = []
    a_times=0
    b_times=0
    a = list1[0]
    b = list2[0]
    last1 = list1[list1.size]
    last2 = list2[list2.size]
    while a != last1 && b != last2
        if a < b
            list_new.push(a)
            a_times += 1
            a = list1[a_times] 
        else a > b
            list_new.push(b)
            b_times += 1
            b = list2[b_times]
        end 
    end
    if b == last2
        (list1.size - a_times).times do |i|
            i +=a_times
            list_new.push(list1[i])
        end
    else
        (list2.size-b_times).times do |i|
            i += b_times
            list_new.push(list2[i])
        end
    end    
    return list_new
end
print merge2([1,3,6,7],[2,5,6])