%% Sonar
%% descargar datos
% <https://www.mediafire.com/file/m8qct204rfsm45m/Datos.rar/file https://www.mediafire.com/file/m8qct204rfsm45m/Datos.rar/file>
%% importar datos
% <https://www.youtube.com/watch?v=7dwNmUft4gE&list=PLg0Uook28IlczPTfmlmQ_EHndY8gbLkTQ&index=1 
% https://www.youtube.com/watch?v=7dwNmUft4gE&list=PLg0Uook28IlczPTfmlmQ_EHndY8gbLkTQ&index=1>
% 
% los datos son importados facilmente gracias a la funcion importfile creada 
% automaticamente por import data
% 
% entradas
% 
% ubicacion de la base de datos 'Datos\sonar.tot'
% 
% fila inicial '1'
% 
% fila final '2288'
% 
% salidas
% 
% base de datos DESORDENADA "sonarDesordenada"
%%
% 
%   nombreBasedatos = importfile ('ruta',filainicial,filafinal)
%

clear
close
clc
sonarDesordenada = importfile('Datos\sonar.tot', 1, 2288)
%% Ordenar datos
% <https://www.youtube.com/watch?v=hwQC7Vlw4IA&list=PLg0Uook28IlczPTfmlmQ_EHndY8gbLkTQ&index=2 
% https://www.youtube.com/watch?v=hwQC7Vlw4IA&list=PLg0Uook28IlczPTfmlmQ_EHndY8gbLkTQ&index=2>
% 
% entradas
% 
% base de datos desordenada "sonarDesordenada"
% 
% salidas
% 
% base de datos ordenada "sonarOrdenada"

sonarOrdenada = ordenardataBase(sonarDesordenada)
%% Configurar un solo Target
% se elimina la ultima columna [62] de la base de datos ordenada por que no 
% se necesita debido a que es exactamente la inversa de la columna [61]

sonarOrdenada(:,62)=[]
%% Separar roca y metal
% <https://www.youtube.com/watch?v=5f6VOCPxICI&list=PLg0Uook28IlczPTfmlmQ_EHndY8gbLkTQ&index=9 
% https://www.youtube.com/watch?v=5f6VOCPxICI&list=PLg0Uook28IlczPTfmlmQ_EHndY8gbLkTQ&index=9>
% 
% entradas
% 
% base de datos ordenada "sonarOrdenada"
% 
% numero de Rocas "97"
% 
% numero de Metales "111"
% 
% Target "61"
% 
% salidas
% 
% base de datos de Rocas "Roca"
% 
% base de datos de Metal "Metal"

[Roca,Metal]= separarTargets(sonarOrdenada,97,111,61)
%% Medidas Estadisticas
% media= nanmean();
% 
% desviacionEstandar= nanstd();
% 
% Varianza= nanvar();
% 
% IQR= iqr();
% 
% Skewness= skewness();
% 
% Kurtosis= kurtosis();

medidasEstadisticas_Roca = tablaMedidasEstadisticas(Roca(:,1:60))
medidasEstadisticas_Metal = tablaMedidasEstadisticas(Metal(:,1:60))
%% BOXPLOT
%     Metal

figure(1)
boxplot(Metal(:,1:60),"Colors","g")
%     Roca

figure(2)
boxplot(Roca(:,1:60),"Colors","b")
%     Superpuestas

figure(3)
boxplot(Metal(:,1:60),"Colors","g")
hold on
boxplot(Roca(:,1:60),"Colors","b")
hold off
%% Plot
%     Metal

graficasMedidasEstadisticas(medidasEstadisticas_Roca,'roca me1','roca me2')
graficasMedidasEstadisticas(medidasEstadisticas_Metal,'metal me1','metal me2')
%% 
%