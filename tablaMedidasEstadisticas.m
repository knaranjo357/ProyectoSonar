function [medidasEstadisticas] = tablaMedidasEstadisticas(dataBase)
%TABLAMEDIDADESTADISTICAS Summary of this function goes here
%   Detailed explanation goes here
medidasEstadisticas(1,:)= nanmean(dataBase);
medidasEstadisticas(2,:)= nanstd(dataBase);
medidasEstadisticas(3,:)= nanvar(dataBase);
medidasEstadisticas(4,:)= iqr(dataBase);
medidasEstadisticas(5,:)= skewness(dataBase);
medidasEstadisticas(6,:)= kurtosis(dataBase);
end

