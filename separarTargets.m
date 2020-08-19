function [Roca,Metal] = separarTargets(dataBase,numeroRocas,numeroMetales,target)
Roca =zeros(numeroRocas,target);
Metal=zeros(numeroMetales,target);
r=1;
m=1;
for i=1:208
    if dataBase(i,target)==-1 
        Roca(r,1:target)=dataBase(i,1:61);
        r=r+1;
    elseif dataBase(i,target)==1
        Metal(m,1:61)=dataBase(i,1:61);
        m=m+1;
    end
end
end

