clear
clc

tic
epsilon = 0.1;
dni = 33820238;

[probabilidad, probabilidades_parciales] = calcular_probabilidad_2_fallos(epsilon, dni);

fprintf('Epsilon = %f: \n', epsilon);
fprintf('Probabilidad de fallar 2 veces seguidas = %f: \n', probabilidad);

% Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

epsilon = 0.01;
dni = 33820238;

[probabilidad, probabilidades_parciales] = calcular_probabilidad_2_fallos(epsilon, dni);

fprintf('Epsilon = %f: \n', epsilon);
fprintf('Probabilidad de fallar 2 veces seguidas = %f: \n', probabilidad);

% Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

epsilon = 0.001;
dni = 33820238;

[probabilidad, probabilidades_parciales] = calcular_probabilidad_2_fallos(epsilon, dni);

fprintf('Epsilon = %f: \n', epsilon);
fprintf('Probabilidad de fallar 2 veces seguidas = %f: \n', probabilidad);

% Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on
toc