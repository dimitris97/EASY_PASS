close all;clc;
 %% ΟΙ ΑΡΙΘΜΟΙ ΠΟΥ ΠΕΡΑΣΑΝ ΚΑΙ ΔΕΝ ΕΙΝΑΙ ΣΤΟ EASY PASS
 Red = sort(out.Red);
 Redr=[Red;1000];
ii = 2;
for n = 1:size(Redr,1)-1
    Red3(n,1) = ((Redr(ii-1,1) ~= Redr(ii,1)));
    ii=ii+1;
end
Red4 = Red3.*Redr(1:(size(Red3,1)),1);
Red4(Red4(:,1) == 0, :) = [];
%


%% ΠΟΣΕΣ ΦΟΡΕΣ ΠΕΡΑΣΑΝ ΤΑ ΟΧΗΜΑΤΑ ΠΟΥ ΔΕΝ ΕΙΝΑΙ ΕΓΓΕΓΡΑΜΜΕΝΑ 
Red = sort(out.Red);

for u = 1:(size(Red,1))
    
   for i=1:10000
        Red1(u,i) = Red(u,1)==i;
        
    end
    
end
Red2 = sum(Red1);
Red2 = Red2';
Red2(Red2(:,1) == 0, :) = [];

OLD = [Red4 Red2];
old = sortrows(OLD,2,'descend'); %ταξινομει τον πινακα απο τη δευτερη στιλη απο το μεγαλιτερο στο μικροτερο
OLD1 = max(OLD(:,2))

old1 = OLD(:,2) == OLD1;
OLD2 = OLD(:,1).*old1;
OLD2(OLD2(:,1) == 0, :) = []


%% οι χρονοι

% 
T1 = out.Success;
T2 = out.Failure;
Namber = out.Red;
Namber1 = out.Green;
TOL = size(T1)+size(T2);
NOL = size(Namber)+size(Namber1);
%
AT = size(T1)/TOL *100;
AT1 = size(T2)/TOL *100;
AN = size(Namber)/NOL *100;
AN1 = size(Namber1)/NOL *100;
figure(1)
X = categorical({ 'Περνάει στο επόμενο επίπεδο ' , 'Δεν περνάει στο επόμενο επίπεδο ' });
X = reordercats(X,{ 'Περνάει στο επόμενο επίπεδο' , 'Δεν περνάει στο επόμενο επίπεδο' });
hold on
bar(X,[AT AT1],1)

figure(2)
X = categorical({ 'Είναι εγγεγραμμένο στο EP ' , 'Δεν είναι εγγεγραμμένο στο EP' });
X = reordercats(X,{ 'Είναι εγγεγραμμένο στο EP' , 'Δεν είναι εγγεγραμμένο στο EP' });
hold on
bar(X,[AN1 AN],1)
%%


