
function [probabilidad, probabilidades_parciales] = calcular_probabilidad_2_fallos(epsilon, dni)
  probabilidad_anterior = 0; 
  probabilidad_actual = 1; 
  casos_favorables = 0;
  total_de_intentos = 0;
  probabilidades_parciales = [];
  intento1 = 0;
  intento2 = 0;
  
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_intentos)
    probabilidad_anterior = probabilidad_actual;
    intento1 = my_mex_service(dni);
    intento2 = my_mex_service(dni);
    total_de_intentos = total_de_intentos + 1;
    if (intento1 == 0)
      if (intento2 == 0)
      casos_favorables = casos_favorables + 1;
      end
    end
    probabilidad_actual = casos_favorables / total_de_intentos;
    probabilidades_parciales = cat(1, probabilidades_parciales, probabilidad_actual);
        
  end
  probabilidad = probabilidad_actual;
  
  fprintf('%f\n', probabilidad_actual);
  fflush(stdout);
  
end