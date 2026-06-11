echo "Hola a tempo la comida estara en segundos"

read segundos 

while	[ $segundos -gt 0 ]; do
	echo "Falta $segundos para que finalize el temporizador"
	sleep 1
	segundos=$((segundos -1))
done

echo "Ha finalizado el temporizador"
