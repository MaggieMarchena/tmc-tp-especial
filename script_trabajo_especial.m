clear
clc

%--------------------------------------Epsilon = 0.1----------------------------------------- 
tic
epsilon = 0.1;
dni = 33820238;

[probabilidad, probabilidades_parciales] = calcular_probabilidad_2_fallos(epsilon, dni);

fprintf('Epsilon = %f \n', epsilon);
fprintf('Probabilidad de fallar 2 veces seguidas = %f \n', probabilidad);

%--------------------------------------Gráfico-----------------------------------------------
figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

%--------------------------------------Desvío estándar---------------------------------------

desvio_std_1 = std(probabilidades_parciales(1:20));
desvio_std_2 = std(probabilidades_parciales(end-20:end));
fprintf('Desvío estándar de las primeras 20 = %f \n', desvio_std_1);
fprintf('Desvío estándar de las ultimas 20 = %f \n', desvio_std_2);

%--------------------------------------------------------------------------------------------
tiempo = toc;
fprintf('Tiempo total = %f \n', tiempo);
%--------------------------------------------------------------------------------------------

%--------------------------------------Epsilon = 0.01----------------------------------------
tic
epsilon = 0.01;

[probabilidad, probabilidades_parciales] = calcular_probabilidad_2_fallos(epsilon, dni);

fprintf('Epsilon = %f \n', epsilon);
fprintf('Probabilidad de fallar 2 veces seguidas = %f \n', probabilidad);

% Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

%--------------------------------------Desvío estándar---------------------------------------

desvio_std_1 = std(probabilidades_parciales(1:20));
desvio_std_2 = std(probabilidades_parciales(end-20:end));
fprintf('Desvío estándar de las primeras 20 = %f \n', desvio_std_1);
fprintf('Desvío estándar de las ultimas 20 = %f \n', desvio_std_2);

%--------------------------------------------------------------------------------------------
tiempo = toc;
fprintf('Tiempo total = %f \n', tiempo);
%--------------------------------------------------------------------------------------------

%--------------------------------------Epsilon = 0.001---------------------------------------
tic
epsilon = 0.001;

[probabilidad, probabilidades_parciales] = calcular_probabilidad_2_fallos(epsilon, dni);

fprintf('Epsilon = %f \n', epsilon);
fprintf('Probabilidad de fallar 2 veces seguidas = %f \n', probabilidad);

% Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

%--------------------------------------Desvío estándar---------------------------------------

desvio_std_1 = std(probabilidades_parciales(1:20));
desvio_std_2 = std(probabilidades_parciales(end-20:end));
fprintf('Desvío estándar de las primeras 20 = %f \n', desvio_std_1);
fprintf('Desvío estándar de las ultimas 20 = %f \n', desvio_std_2);

%--------------------------------------------------------------------------------------------

tiempo = toc;
fprintf('Tiempo total = %f \n', tiempo);
%--------------------------------------------------------------------------------------------