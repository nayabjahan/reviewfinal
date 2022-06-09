for (( i=0;i<10; i++))
do
        n[$i]=$((RANDOM%900+100));
done
echo "array before sorting is :"${n[@]};
for((i=0; i<$((${#n[@]}-1));i++))
do
        for((j=$(($i+1));j<${#n[@]};j++))
        do
                if [ ${n[i]} -gt ${n[j]} ]
                then
                        temp=${n[i]};
                        n[$i]=${n[j]};
                        n[$j]=$temp;
                fi
        done
done

echo "array after sorting is : "${n[@]};
secondSmallest=${n[1]};
secondLargest=${n[8]};
echo "Second Smallest value from all is "$secondSmallest;
echo "Second Largest value from all is "$secondLargest;

