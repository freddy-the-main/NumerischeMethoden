clc
clear all

%% Erzeugen aller Kombinationen in Variable k
combis = 0;
abstand = 0;
AbstandOptimal = 0;
for r1=5:5:55
    combis = 0;
    for r2=100:5:150
        for r3=5:5:55
            for r4=100:5:150
                if r1~=r3 & r2~=r4
                    combis =+1;
                end
                
            end
        end
    end
    if combis>=
end
%% Berechnen der zu k gehörigen Übersetzungen
ue=(k(:,2).*k(:,4))./(k(:,1).*k(:,3))

k[]
    for r4=100:5:105
        for r3 = 5:5:55
            for r2 = 100:5:150
                for r1 = 5:5:55
                    if r1~=r3 & r2~=r4
                        k = [k;r1,r2,r3,r4]
                    end
                end
            end
        end
    end


