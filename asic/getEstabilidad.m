function ret = getEstabilidad(transfer)
  if (esEstable(transfer))
    aux = "La funcion es Estable";
  else
    aux = "La funcion NO es Estable";
  endif;
  aux=sprintf("Estabilidad:\t\t\t\t\t.\n%s\n",aux);
  printf("%s\n",aux);
  ret = aux;
endfunction