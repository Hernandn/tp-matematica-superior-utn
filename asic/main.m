clear; clc;
pkg load control;
pkg load signal;
printf("Bienvenido al Programa ASIC\n");
transfer = menuIngresoFuncion();
menuFuncionalidades(transfer);