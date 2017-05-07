function ret = menuFuncionalidades(transfer)
  opcion = 1;
  while opcion>0 && opcion<9,
    printf("\nSeleccione una opcion:\n");
    printf("1 - Obtener la expresion de la funcion transferencia\n");
    printf("2 - Obtener polos\n");
    printf("3 - Obtener ceros\n");
    printf("4 - Obtener ganancia\n");
    printf("5 - Obtener expresion con polos, ceros y ganancia\n");
    printf("6 - Graficar polos y ceros\n");
    printf("7 - Indicar estabilidad del sistema\n");
    printf("8 - Obtener todas las anteriores\n");
    printf("9 - Ingresar nueva funcion\n");
    printf("10 - Finalizar\n");
    opcion = input ("Opcion: ");
    if opcion == 1,
      printf("Falta implementar\n");
    elseif opcion == 2,
      getPolos(transfer);
    elseif opcion == 3,
      getCeros(transfer);
    elseif opcion == 4,
      getGanancia(transfer);
    elseif opcion == 5,
      getPolosCerosGanancia(transfer);
    elseif opcion == 6,
      graficarPolosCeros(transfer);
    elseif opcion == 7,
      printf("Falta implementar\n");
    end;
  end;
  if opcion == 9,
    printf("Falta implementar\n");
  elseif opcion == 10,
    printf("\nPrograma finalizado\n\n");
  end;
endfunction