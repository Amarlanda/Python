import operator
nums=[1,2,3,4,5,6]

#check the first element is not a zero
def validatearry(nums):
    AccumlativeNums ="":
   ArrayMaximum =(max(nums, key=operator.itemgetter(1))):
    for i in range(len(nums)):
        if i == 0 :
            print("skipping zeros")
        elif i < ArrayMaximum:
            AccumlativeNums = nums[i]*nums[i+1]
            print("i is smaller than one")
        elif i == ArrayMaximum:
            return AccumlativeNums



def populateArrayList(AccumlativeNums)
if AccumlativeNums > lenght 2:

    AccumlativeNums = text.split()
    for num in AccumlativeNums:
           nums.append(num)
    validatearry(nums)
else
    return nums
