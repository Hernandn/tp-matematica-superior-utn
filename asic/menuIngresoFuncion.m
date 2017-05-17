function [transfer,cancelado] = menuIngresoFuncion()
  cancelado = 1;
  while cancelado==1,
    options = {"Coeficientes del polinomio del numerador y denominador", 
                "Polos, ceros y ganancia"};
    [opcion, ok] = listdlg ("ListString", options,
                            "SelectionMode", "Single", 
                            "ListSize",[400 100],
                            "Name","Menu",
                            "PromptString","Seleccione una opcion para ingresar la funcion de transferencia a traves de:");
    if ok==1,
      cancelado = 0;
      if opcion == 1,
        [transfer,cancelado] = createTransFromNumDenCoef();
      elseif opcion == 2,
        [transfer,cancelado] = createTransFromZeroPoleGain();
      end;
    else
      cancelado = 1;
      transfer = 0;
      return;
    end;
  end;
endfunction