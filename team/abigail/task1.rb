puts "Enter a number"
num=gets.chomp.to_i


#positive or negative test
if (num<0) 
    num=num/-1 #becomes positive for counting digits
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
if (num==0) 
    puts "0 is one-digit number"  
else
    puts "#{n}-digit #{type} number"
end