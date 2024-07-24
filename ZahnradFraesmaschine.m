clc
combi[];
for r1= 5:5:55
    for r2=100:5:150
        for r3=5:5:55
            for r4=100:5:150
                combi=[combi;r1;r2;r3;r4];
            end
        end
    end
end
 R=combi(:,1).*combi(:,3)./combi(:,2)./combi(:,4);
 Rd=0.02005
 error = abs()

 gg