clear all; clc; close all;

% rng('default')

for (n = 1:10000)

for (i = 1:10000)

    x1 = round(rand(1,1)*60);
    x2 = round(rand(1,1)*20);
    x3 = round(rand(1,1)*40);
    x4 = round(rand(1,1)*30);
    T =  round(rand(1,1)*100);
    T1 = round(rand(1,1)*100);
%     
f(i,1) =(x1 + x2 + x3 + x4);

if (f(i)==100)
    a(i,1) = x1;
    a(i,2) = x2;
    a(i,3) = x3;
    a(i,4) = x4;
    a(i,5) = T;
    a(i,6) = T1;
    
else
    b(i,1) = x1;
    b(i,2) = x2;
    b(i,3) = x3;
    b(i,4) = x4;
    b(i,5) = T;
    b(i,6) = T1;
end
end
a(a(:,1)==0,:)=[];
b(b(:,1)==0,:)=[];
minF = 200*a(:,1) + 220*a(:,2) + 100*a(:,3) + 150*a(:,4)-100*a(:,5)-40*a(:,6);
F = sort(minF);

am(:,n) = [mean(a(:,1));mean(a(:,2));mean(a(:,3));mean(a(:,4));mean(a(:,5));mean(a(:,6))];
fm(n,1) = mean(F);


end
am1 = round([mean(am(1,:));mean(am(2,:));mean(am(3,:));mean(am(4,:));mean(am(5,:));mean(am(6,:))])
fm1 = round(mean(fm(:,1)))
plot(minF)
figure(1)
histogram(minF)
figure(2)
histogram(am)
figure(3)
histogram(b)
