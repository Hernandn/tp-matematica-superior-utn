function transfer = menuIngresoFuncion()
  options = {"Coeficientes del polinomio del numerador y denominador", 
              "Polos, ceros y ganancia"};
  [opcion, ok] = listdlg ("ListString", options,
                          "SelectionMode", "Single", 
                          "ListSize",[400 100],
                          "Name","Menu",
                          "PromptString","Seleccione una opcion para ingresar la funcion de transferencia a traves de:");
  if opcion == 1,
    transfer = createTransFromNumDenCoef();
  elseif opcion == 2,
    transfer = createTransFromZeroPoleGain();
  end;
endfunction