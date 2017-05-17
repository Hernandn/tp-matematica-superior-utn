function ret = menuFuncionalidades(transfer)
  opcion = 1;
  while opcion>0 && opcion<9,
    
    options = {"Obtener la expresion de la funcion transferencia", 
              "Obtener polos",
              "Obtener ceros",
              "Obtener ganancia",
              "Obtener expresion con polos, ceros y ganancia",
              "Graficar polos y ceros",
              "Indicar estabilidad del sistema",
              "Obtener todas las anteriores",
              "Ingresar nueva funcion",
              "Finalizar"};
    [opcion, ok] = listdlg ("ListString", options,
                          "SelectionMode", "Single", 
                          "ListSize",[400 200],
                          "Name","Menu",
                          "PromptString","Seleccione una opcion:");
    
    if opcion == 1,
      mostrarStringsEnPopup("Expresion",getExpresionFuncion(transfer));
    elseif opcion == 2,
      mostrarStringsEnPopup("Polos",getPolos(transfer));
    elseif opcion == 3,
      mostrarStringsEnPopup("Ceros",getCeros(transfer));
    elseif opcion == 4,
      mostrarStringsEnPopup("Ganancia",getGanancia(transfer));
    elseif opcion == 5,
      mostrarStringsEnPopup("Polos, ceros y ganancia",
                            getPolos(transfer),
                            getCeros(transfer),
                            getGanancia(transfer));
    elseif opcion == 6,
      graficarPolosCeros(transfer);
    elseif opcion == 7,
      mostrarStringsEnPopup("Estabilidad",getEstabilidad(transfer));
    elseif opcion == 8,
      mostrarStringsEnPopup("Todas",
                            getExpresionFuncion(transfer),
                            getPolos(transfer),
                            getCeros(transfer),
                            getGanancia(transfer),
                            getEstabilidad(transfer));
      graficarPolosCeros(transfer);
    end;
  end;
  ret = opcion;
endfunction