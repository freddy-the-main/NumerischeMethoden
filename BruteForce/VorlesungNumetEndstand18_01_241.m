clc
clear all
%% Erzeugen aller Kombinationen in Variable k
k=[]; 
for r1=5:5:55
    for r2=100:5:150
        for r3=5:5:55
            for r4=100:5:150
                k=[k;r1,r2,r3,r4];
            end
        end
    end
end
%% Berechnen der zu k gehörigen Übersetzungen
ue=(k(:,2).*k(:,4))./(k(:,1).*k(:,3))
%% Auswahl der r1,r2,r3,r4
uesoll=200;
kbest=k(ue==uesoll,:)


