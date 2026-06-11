#!/bin/bash
usuario="Maestro"


read -p "Buenas $usuario identifiquese para acceder al panel del almacenamiento:"  identificacion

if [ "$identificacion" == "Alex" ]; then
	echo "Acceso concedido"
	sleep 1
	echo "Cargando sistema..."
else
	echo "Acceso denegado"
fi

intentos=3
while	 [ $intentos -gt 0 ]; do
read 	-p "Introduzca la contraseña:" password
	echo ""

if 	[ "$password" == "1234" ]; then
	sleep 1
	echo "Acceso al almacenamiento concedido"
	break
else
	intentos=$((intentos - 1))

if	[ $intentos -gt 0 ]; then
	echo  "Contraseña incorrecta, $intentos oportunidades antes del bloqueo del sistema"
	sleep 3
else
	echo "0 oportunidades restantes. Bloqueando sistemas..."
	fi
fi
done
