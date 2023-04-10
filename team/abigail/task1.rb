puts "Enter a number"
num=gets.chomp.to_i
num2=num

#positive or negative test
if (num<0) 
    num=num/-1 #becomes positive for counting digits
    num2=-1*num #remains sign
    type="negative"
else
    type="positive"
end

#digit count
temp=num
n=0
while (temp>0)
    n=n+1
    temp=temp/10
end

#zero test
if (num2==0) 
    puts "0 is one-digit number"  
else
    puts "#{num2} is #{n}-digit #{type} number"
end


