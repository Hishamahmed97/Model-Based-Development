clear;clc;close all

matrixA = [3 2 1;6 5 4;9 8 7];
matrixB = [12 11 10;15 14 13;18 17 16];
matrixSum = matrixA + matrixB;

disp(matrixSum);
    
rowVector = [1:5];
colVector = [6:10]';
 
horizontalcat = horzcat(rowVector,colVector');
disp(horizontalcat);
  

originalmatrix = [10 20;30 40;50 60];
repeatedMatrix = repmat(originalmatrix,4,4);
disp(repeatedMatrix);
   
identityMatrix = eye(3,3);
matrixProduct = identityMatrix * matrixA; 

disp(matrixProduct);
    
