#!/bin/bash
menu(){
clear
echo "================================="
echo "1) Relatorio Atual"
echo "2) Relatório Completo"
echo "3) Iniciar serviço"
echo "4) Parar serviço"
echo "5) Equipamentos Monitorados"
echo "6) Sair"
echo "================================="
read -p "Escolha uma opção: " OPCAO

case $OPCAO in
	1) less relatorio ; clear ;;
	2) less relatoriolog ; clear ;;
	3) source pingando.sh 'start' ;;
	4) source pingando.sh 'stop' ;;
	5) less monitorados.csv ;;
	6) exit 0 ;;
	*) echo Opção inválida ;;
esac
}
menu
