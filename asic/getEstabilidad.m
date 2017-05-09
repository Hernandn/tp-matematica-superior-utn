function getEstabilidad(transfer)
  if (esEstable(transfer))
    aux = "La funcion es Estable";
  else
    aux = "La funcion NO es Estable";
  endif;
  printf("%s\n",aux);
  msgbox(aux);
endfunction