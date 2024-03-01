% task 1 while loop


sum = 0;
num = 2;
while num <=20 && num >=2
    
    if rem(num,2)==0
    sum = sum + num;
    end
    num = num+1;
end

fprintf('sum of even numbers = %d',sum);

% task 2 --> calculate factorial
clear;clc;close all

fact = 1;
index = 1;
num = input('enter num to calc fact \n');

while index<=num
    fact = fact * index;
    index = index +1;
end

% task 3 --> calculate cost of trip
clear;clc;close all

modes = input('enter mode of trans \n','s');
switch modes
    case 'car'
    cost_per_mile = 10;    
    case 'train'
    cost_per_mile = 20;
    case 'bus'
    cost_per_mile = 30;    
    case 'airplane'
    cost_per_mile = 40;
    otherwise
    cost_per_mile = 0;
    disp('no entered mode');
end

% task 4 --> map color code into corresponding name
clear;clc;close all
