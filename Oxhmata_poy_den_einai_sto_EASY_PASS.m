close all;clc;
 %% �� ������� ��� ������� ��� ��� ����� ��� EASY PASS
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


%% ����� ����� ������� �� ������� ��� ��� ����� ������������ 
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
old = sortrows(OLD,2,'descend'); %��������� ��� ������ ��� �� ������� ����� ��� �� ���������� ��� ���������
OLD1 = max(OLD(:,2))

old1 = OLD(:,2) == OLD1;
OLD2 = OLD(:,1).*old1;
OLD2(OLD2(:,1) == 0, :) = []


%% �� ������

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
X = categorical({ '������� ��� ������� ������� ' , '��� ������� ��� ������� ������� ' });
X = reordercats(X,{ '������� ��� ������� �������' , '��� ������� ��� ������� �������' });
hold on
bar(X,[AT AT1],1)

figure(2)
X = categorical({ '����� ������������ ��� EP ' , '��� ����� ������������ ��� EP' });
X = reordercats(X,{ '����� ������������ ��� EP' , '��� ����� ������������ ��� EP' });
hold on
bar(X,[AN1 AN],1)
%%


