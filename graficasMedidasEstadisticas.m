function [grafica1,grafica2] = graficasMedidasEstadisticas(tablaMedidasEstadisticas,nombre1,nombre2)
%recordar que nombre tiene que ser de tipo caracter ''

grafica1= figure("Name",nombre1)
plot(tablaMedidasEstadisticas(1,:),'DisplayName','Media')
hold on
plot(tablaMedidasEstadisticas(2,:),'DisplayName','desviacionEstandar')
plot(tablaMedidasEstadisticas(3,:),'DisplayName','varianza')
plot(tablaMedidasEstadisticas(4,:),'DisplayName','IQR')
hold off
xlim([0.0 60.0])
ylim([0.000 0.800])
grid on
legend('show')
xlabel('Variables')
ylabel('valor')

grafica2=figure("Name",nombre2)
plot(tablaMedidasEstadisticas(5,:),'DisplayName','skewness')
hold on
plot(tablaMedidasEstadisticas(6,:),'DisplayName','Kurtosis')
hold off
grid on
legend('show')
xlabel('Variables')
ylabel('valor')
end

