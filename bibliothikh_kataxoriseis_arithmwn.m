%% дглиоуяциа пимайа циа тгм йатавыяисг тым пимайидым 
clear all; clc; close all;

A = randi([1000 9999],20000,1);
A1=sort(A(:,1),'descend');

i=2;
for N =1:15500
    
        A2(N,1) = A1(i-1,1) ~= A1(i,1);
     
        i=i+1;
end
   
G = A1(1:15500).*A2;
G(G(:,1) == 0, :) = [];

evalin( 'base', 'clear(''A'')')
evalin( 'base', 'clear(''A1'')' )
evalin( 'base', 'clear(''N'')' )
evalin( 'base', 'clear(''A2'')' )
evalin( 'base', 'clear(''i'')' )
%%