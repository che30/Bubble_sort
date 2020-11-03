def Bubble_sort(arr)
    arr.each_index do|i|
        arr.each_index do |j|
            if((j>i)&&(j<arr.length))
                arr[i],arr[j]=arr[j],arr[i] if ((arr[j]<=>arr[i])==-1)
            end
            
        end
    end 
    p arr
end
Bubble_sort([-1,-2,4,0,5,-1])

def Bubble_sort_by(arr)
    arr.each_with_index do |i,j|
        arr.each_with_index do |k,l|
            if(yield(k,i)>0) 
                arr[j],arr[l]=arr[l],arr[j]
            end
        end
    end
    p arr
end
Bubble_sort_by(["hi","hello", "hey"]) do |left,right|
    left.length - right.length
    end 


