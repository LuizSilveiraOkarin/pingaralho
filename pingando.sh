#!/bin/bash
case $1 in
	"start") source pingd.sh > /dev/null & ;;
	"stop") killall pingaralho.sh ;;
	*) echo Opção Inválida ;;
esac
