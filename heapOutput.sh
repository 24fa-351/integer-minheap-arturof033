: '
sh heapOutput.sh

This bash script compiles the files necessary to complete the actions 
    specified in heapTest.c, stores the output of the heap operations in the variable 
    heap_output, and prints them into the file 'heapOutput.txt'.
'

make

# stores heap operations from asst6.c into variable `heap_output`
heap_output=$( { ./minHeap 2>&1; } 2>&1)

#prints collatz list in two columns and places in file 'collatzResult.csv'
printf "Heap Output:\n" > heapOutput.txt
printf "$heap_output\n" >> heapOutput.txt