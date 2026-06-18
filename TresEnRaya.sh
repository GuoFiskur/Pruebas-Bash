echo "Hola mi brothel, hoy vamos a jugar al 3 en raya"
echo "Dime los nombre de los que vais a jugar mi loco"
read -p "Nombre del Jugador 1 (sera X)" j1
read -p "Nombre del Jugador 2 (sera O)" j2

tablero=(1 2 3 4 5 6 7 8 9)
jugador=$j1
marca="X"

dibujar_tablero() {
echo " Vamo a juga pibe "
echo " ${tablero[0]} | ${tablero[1]} | ${tablero[2]} "
echo " <><><><><>"
echo " ${tablero[3]} | ${tablero[4]} | ${tablero[5]} "
echo " <><><><><>"
echo " ${tablero[6]} | ${tablero[7]} | ${tablero[8]} "
}

verificar_ganador() {

if [[ ${tablero[0]} == ${tablero[1]} && ${tablero[1]} == ${tablero[2]} ]] || \
       [[ ${tablero[3]} == ${tablero[4]} && ${tablero[4]} == ${tablero[5]} ]] || \
       [[ ${tablero[6]} == ${tablero[7]} && ${tablero[7]} == ${tablero[8]} ]] || \
       [[ ${tablero[0]} == ${tablero[3]} && ${tablero[3]} == ${tablero[6]} ]] || \
       [[ ${tablero[1]} == ${tablero[4]} && ${tablero[4]} == ${tablero[7]} ]] || \
       [[ ${tablero[2]} == ${tablero[5]} && ${tablero[5]} == ${tablero[8]} ]] || \
       [[ ${tablero[0]} == ${tablero[4]} && ${tablero[4]} == ${tablero[8]} ]] || \
       [[ ${tablero[2]} == ${tablero[4]} && ${tablero[4]} == ${tablero[6]} ]]; then
	return 0
else
	return 1
fi
}
for i in {1..9}; do
	dibujar_tablero
	echo "Turno de mi compa el: $jugador ($marca)"

	read -p "Elige una posicion manito (1-9): " p

	indice=$((p-1))
	tablero[$indice]=$marca
if 	verificar_ganador; then
	dibujar_tablero

	echo "<><><><>Bien hecho $jugador ganaste la partida manin<><><><>"
	echo "<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>"
	 echo "<><><><>Bien jugado a $j1 y $j2, se termino el juego<><><><>"
	echo "<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>"

	exit
fi
	if [ "$jugador" == "$j1" ]; then
	jugador=$j2
	marca="O"

	else

	jugador=$j1
	marca="X"
	fi
done


dibujar_tablero
echo "EMPATE"
echo "<><><><><><><><><><><><><><><><><><><><><><><><><><><><>"
echo "<><><>Bien jugado a $j1 y $j2, se termino el juego<><><>"
echo "<><><><><><><><><><><><><><><><><><><><><><><><><><><><>"
exit 0
