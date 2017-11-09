#!/bin/bash
clear

pingando(){
> relatorio
for nome in $(cat monitorados.csv | cut -d";" -f1); do
	for ip in $(cat monitorados.csv | grep ^$nome\; | cut -d";" -f2); do
		ping -W 1 -i 1 -c 1 $ip > /dev/null 
		[[ $? == "0" ]] && \
		echo '['$(date)'host:'$nome'ip:'$ip']->UP' >> relatorio || \
		echo '['$(date)'host:'$nome'ip:'$ip']->DOWN' >> relatorio
	done	
done
cat relatorio >> relatoriolog
}
pingando
