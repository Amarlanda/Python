def main(n, count=0):
    total = 1
    #print count
    numlist = [int(d) for d in str(n)]
    print(numlist)
    for num in numlist:
        total = total*int(num)
        #print count
    if n < 10:
        print(count)
        return count
    else:
        main(total, count = (count + 1))

#if __name__ == "__main__":
    #If started from outside Lambda, this will run
main(999)