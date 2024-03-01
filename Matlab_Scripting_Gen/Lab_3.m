clear;clc;
% create cell array with different data types
name = 'hisham';
age = 24;
fav_colors = ['R','G','B'];
cell_arrary = {name,age,fav_colors};
disp(['Name : '  cell_arrary(1)]);
disp(['Age : '  cell_arrary(2)]);

%simple structure

person1.name = 'Ahmed';
person1.age = 20;
person1.city = 'Cairo';

fprintf(['name : ' , person1.name]);
fprintf(['\n age : ' , num2str(person1.age)]);
fprintf(['\n city : ' , person1.city]);


% character array

char_arr = 'Hisham Ahmed';
new_name = char_arr + " " + 'Mohamed';
disp('\n');
disp(['compined string : ',new_name]);

% check even or odd

num = 6;
res = 'even';
if rem(num,2)==0
    res = 'even';
else
    res = 'odd';
end
disp(res);
    
% generate numbers

for i=1:10
    disp(['num : ', num2str(i)]);
end

