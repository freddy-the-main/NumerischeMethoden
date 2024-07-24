clear 
clc

N1=10;
N2=12;
N5=13;

B=65;

% Moeglichkeiten;
% 
% Loesungen;
% Loesungsbetrag;
% 
% for i = 0:N1;
% 
%     Loesungen(Moeglichkeiten;i)=1;
%     Loesungsbetrag =+ (i*1);
% 
%     for
% 
%         
% 
%     end
% 
% 
% end

%% loesung
k = [];
for n1=0:N1
    for n2=0:N2
        for n5=0:N5
            if n1+2*n2+5*n5==B
                k=[k;n1,n2,n5]
            end
        end
    end
end
