%% Erzeugen aller Kombinationen in Variable k
R1=[]; 
R2=[]; 
R3=[]; 
R4=[]; 
for r1=5:5:55
    for r2=100:5:150
        for r3=5:5:55
            for r4=100:5:150
                R1=[R1;r1];
                R2=[R2;r2];
                R3=[R3;r3];
                R4=[R4;r4];
            end
        end
    end
end
%% Berechnen der zu k gehörigen Übersetzungen
ue=R2.*R4./R1./R3
%% Auswahl der Kombinationen mit der gewünschten Übersetzung