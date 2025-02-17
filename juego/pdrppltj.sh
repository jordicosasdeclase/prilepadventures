#!/bin/bash

inicio() {
    cat ./ascii/title.txt
    sleep 1
    echo -e "\n¿Como te llamas? " | pv -qL 30
    read nombre
    echo "Elige una velocidad para el texto(lento/normal/veloz):" | pv -qL 30
    read vel
    case $vel in 
        lento) texto=1 ;;
        normal) texto=0.5 ;;
        veloz) texto=0.25 ;;
        *) echo "Por favor, elige una opción valida"; sleep 1.5 ; clear ; inicio;;
    esac
    clear
    sleep $texto
    echo -e "\n$nombre, espero que estes preparado para esta ingeniosa aventura..." | pv -qL 30
    primero
}
primero() {
    sleep $texto
    echo "Te encuentras perdido en la entrada de un deshabitado pueblo llamado Ezerani, a tu vista hay 3 casas, elige una para pedir ayuda." | pv -qL 30
    sleep $texto
    echo "1. Casa de la familia Vasiliev (Arkady), está cuidada pero parece antigua." | pv -qL 30
    sleep $texto
    echo "2. Casa de Tamara (Ershova), parece que vive sola." | pv -qL 30
    sleep $texto
    echo "3. Casa de la familia Panina (Olga), está practicamente en ruinas, dudo que viva alguien dentro." | pv -qL 30
    sleep $texto
    if [[ $c_primero -eq 1 ]]; then
        echo "4. Adentrarse en el pueblo" | pv -qL 30
        sleep $texto
        read -p "¿Qué decides? (1/2/3/4): " eleccion
    else
        read -p "¿Qué decides? (1/2/3): " eleccion
    fi
    case $eleccion in
        1) vasiliev ;;
        2) tamara ;;
        3) panina ;;
        4) if [[ $c_primero -eq 1 ]]; then 
            segundo
        else
            echo "Por favor, elige una opción válida."; sleep 1.5; clear; primero
        fi ;;
        *) echo "Por favor, elige una opción válida."; sleep 1.5; clear; primero ;; 
    esac
}

segundo () {
    clear
    sleep $texto
    echo "Te adentras al pueblo y el camino se divide en tres, ¿hacia que dirección decides continuar?" | pv -qL 30
    sleep $texto
    echo "1. Camino hacia la izquierda, solo se alcanzan a ver mas casas" | pv -qL 30
    sleep $texto
    echo "2. Camino hacia la derecha, ves como el camino al final se corta repentinamente" | pv -qL 30
    sleep $texto
    echo "3. Seguir recto, parece un barrio de tiendas" | pv -qL 30
    sleep $texto
    echo "4. Volver a la entrada del pueblo" | pv -qL 30
    sleep $texto
    read -p "¿Qué decides? (1/2/3/4): " eleccion
    case $eleccion in
        1) segundo_i ;;
        2) segundo_d ;;
        3) segundo_r ;;
        4) clear ; primero ;;
        *) echo "Por favor, elige una opción válida."; sleep 1.5; clear; segundo ;;
    esac

}

segundo_i () {
    clear
    sleep $texto
    echo "Las casas en esta calle parecen mas modernas asi que decides parar en alguna para pedir ayuda" | pv -qL 30
    sleep $texto
    echo "1. Casa de Karolina Ilieva, vive al lado de su clínica privada" | pv -qL 30
    sleep $texto
    echo "2. Casa de Petar Trajkovski, no sabes nada de él" | pv -qL 30
    sleep $texto
    echo "3. Casa de Irina Todorova, su casa esta decorada con muchas flores y se autodenomina como filósofa" | pv -qL 30
    sleep $texto
    echo "4. Casa de la familia Filipov, es la casa mas grande del pueblo" | pv -qL 30
    sleep $texto
    echo "5. Volver atrás" | pv -qL 30
    sleep $texto
    read -p "¿Qué decides? (1/2/3/4/5): " eleccion
    case $eleccion in
        1) karolina ;;
        2) petar ;;
        3) irina ;;
        4) filipov ;;
        5) segundo ;;
        *) echo "Por favor, elige una opción válida."; sleep 1.5; clear; segundo_i ;;
    esac


}

segundo_d () {
    clear
    sleep $texto
    echo "Chocas de frente con un muro donde ves un botón" | pv -qL 30
    sleep $texto
    echo "1. Pulsas el botón" | pv -qL 30
    sleep $texto
    echo "2. Regresas al camino" | pv -qL 30
    sleep $texto
    read -p "¿Qué decides? (1/2): " eleccion
    case $eleccion in
        1) pared ;;
        2) segundo ;;
        *) echo "Por favor, elige una opción válida."; sleep 1.5; clear; segundo_d ;;
    esac

}

segundo_r () {
    clear
    sleep $texto
    echo "Hay varias tiendas pero tambien casas, parece el centro del pueblo" | pv -qL 30
    sleep $texto
    echo "1. Tienda de pociones, aqui puedes mejorar tus habilidades (🧪)" | pv -qL 30
    sleep $texto
    echo "2. Tienda de motos, aqui está lo que necesitas (‼️ )" | pv -qL 30
    sleep $texto
    echo "3. Casa de Veronika Dimitrova, es la dueña de la tienda de motos" | pv -qL 30
    sleep $texto
    echo "4. Mansión de la familia (Todor) Andonov, parecen millonarios" | pv -qL 30
    sleep $texto
    echo "5. Volver atrás" | pv -qL 30
    sleep $texto
    if [[ $c_segundo -eq 1 ]]; then
        echo "6. Seguir adelante (Parece el final del pueblo)" | pv -qL 30
        sleep $texto
        read -p "¿Qué decides? (1/2/3/4/5/6): " eleccion
    else
        read -p "¿Qué decides? (1/2/3/4/5): " eleccion
    fi
    case $eleccion in
        1) tienda_pociones ;;
        2) tienda_motos ;;
        3) veronika ;;
        4) andonov ;;
        5) segundo ;;
        6) if [[ $c_segundo -eq 1 ]]; then 
            tercero
        else
            echo "Por favor, elige una opción válida."; sleep 1.5; clear; primero
        fi ;;
        *) echo "Por favor, elige una opción válida."; sleep 1.5; clear; segundo_d ;;
    esac

}

tercero () {
    clear
    sleep $texto
    echo "Ya alcanzas a ver el camino hacia la montaña, pero también hay otras casas" | pv -qL 30
    sleep $texto
    echo "1. Chabola de Dragica Popovska, tiene un cartel colgado en la puerta asegurando que tiene poderes" | pv -qL 30
    sleep $texto
    echo "2. Casa de Darko Stojanovski, parece una casa bastante normal" | pv -qL 30
    sleep $texto
    echo "3. Casa de Adrijan Atanasova, su casa está llena de luces sin razón aparente" | pv -qL 30
    sleep $texto
    echo "4. Empezar el camino hacia el monte Prilep" | pv -qL 30
    sleep $texto
    echo "5. Volver atrás" | pv -qL 30
    sleep $texto
    read -p "¿Qué decides? (1/2/3/4/5): " eleccion
    case $eleccion in
        1) dragica ;;
        2) darko ;;
        3) adrijan ;;
        4) camino ;;
        5) segundo_r ;;
        *) echo "Por favor, elige una opción válida."; sleep 1.5; clear; tercero ;;
    esac


}

combate () {
    while [[ $ps_jugador -gt 0 && $ps_enemigo -gt 0 ]]; do
        echo "========================="
        echo "$nombre : $ps_jugador ❤️ |  $nom_enemigo: $ps_enemigo ❤️"
        echo "========================="
        echo "Elige tu movimiento: piedra(1), papel(2), tijera(3)"
        read -r jugador
        if [[ $jugador -gt 3 || $jugador -lt 1 ]]; then
            echo "Movimiento no valido, tienes que seleccionar un valor entre 1 y 3"
            sleep 1
            clear
            continue
        fi
        enemigo=$(( (RANDOM % 3) + 1 ))
        case $jugador in 
            1) echo "Has elegido piedra" | pv -qL 30 ; sleep 1 ;;
            2) echo "Has elegido papel" | pv -qL 30 ; sleep 1 ;;
            3) echo "Has elegido tijera" | pv -qL 30 ; sleep 1 ;;
        esac
        case $enemigo in 
            1) echo "Tu rival ha elegido piedra" | pv -qL 30 ; sleep 1 ;;
            2) echo "Tu rival ha elegido papel" | pv -qL 30 ; sleep 1 ;;
            3) echo "Tu rival ha elegido tijera" | pv -qL 30 ; sleep 1 ;;
        esac
        if [[ "$jugador" == "$enemigo" ]]; then
            echo "¡Empate!" | pv -qL 30
        elif [[ ("$jugador" == 1 && "$enemigo" == 3) || 
                ("$jugador" == 2 && "$enemigo" == 1) || 
                ("$jugador" == 3 && "$enemigo" == 3) ]]; then
            echo "¡Has ganado esta ronda!" | pv -qL 30
            ((ps_enemigo -= $pot_jugador))  # Restar PS al enemigo
        else
            echo "Has perdido esta ronda..." | pv -qL 30
            ((ps_jugador -= $pot_enemigo))  # Restar PS al jugador
        fi
        sleep 1
        if [[ $heal -gt 0 ]]; then
            if (( RANDOM % $heal == 0 )); then  
            ((ps_enemigo += 1))
            echo "$nom_enemigo se ha curado" | pv -qL 30
            sleep 1
        fi
        clear
    done
        if [[ $ps_jugador -le 0 ]]; then
        echo "¡Has sido derrotado!" | pv -qL 30
        sleep 2
        echo "¿Quieres volver a jugar?" | pv -qL 30
        read retry
        clear
        case $retry in
            si) exec $0 ;;
            *) echo "chao pescao"; sleep 2; exit ;;
        esac
    else
        echo "¡Has vencido al enemigo!" | pv -qL 30
    fi
}

vasiliev() {
    if [[ $c_vasiliev -eq 1 ]]; then 
    echo "Ya has completado esta sala" | pv -qL 30
    sleep 1.5
    clear
    primero
    else
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "+ Perdona, ¿quien eres?" | pv -qL 30
    sleep $texto
    echo "- Soy $nombre, no se como he llegado hasta aqui" | pv -qL 30
    sleep $texto
    echo "+ ¿Sabes quien soy?" | pv -qL 30
    sleep $texto
    echo "- Emm..." | pv -qL 30
    sleep $texto
    echo "+ Soy Arkady Vasiliev, me retiré del ejercito macedonio siendo comandante, ¿Para que vienes a molestarme?" | pv -qL 30
    sleep $texto
    echo "- Queria saber si podrias ayudarme a ubicarme" | pv -qL 30
    sleep $texto
    echo "+ Para que pierda el tiempo contigo vas a tener que demostrarme que mereces la pena" | pv -qL 30
    sleep 1.5
    clear
    ps_enemigo=5
    pot_enemigo=2
    nom_enemigo=Arkady
    heal=0
    combate
    c_vasiliev=1
    c_primero=1
    echo "+ Me has vencido..." | pv -qL 30
    sleep $texto
    echo "+ Has sido un rival digno, lo que te puedo decir es que debes de subir al pico del monte Prilep y batallar alli arriba" | pv -qL 30
    sleep $texto
    echo "- ¿Como llego hasta alli?" | pv -qL 30
    sleep $texto
    echo "+ Al final del pueblo hay una tienda de motos, si juntas algo de dinero podrias comprar una" | pv -qL 30
    sleep $texto
    echo "- ¿Y como lo consigo?" | pv -qL 30
    sleep $texto
    echo "+ Yo te voy a dar unas cuantas monedas, el resto recae sobre ti" | pv -qL 30
    sleep $texto
    ((monedas += 200))
    echo "¡Has obtenido 200 monedas!" | pv -qL 30
    sleep 2
    segundo
    fi

}
tamara() {
    if [[ $c_tamara -eq 1 ]]; then 
    echo "Ya has completado esta sala" | pv -qL 30
    sleep 1.5
    clear
    primero
    else
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "+ ¿Hola...?" | pv -qL 30
    sleep $texto
    echo "- Perdona las molestias, me llamo $nombre, estoy algo perdido y queria saber si podias ayudarme" | pv -qL 30
    sleep $texto
    echo "+ Claro, entra y ponte cómodo" | pv -qL 30
    sleep $texto
    echo "- ¡Muchas gracias!" | pv -qL 30
    cat ./ascii/casa.txt
    sleep $texto
    echo "- Tu casa es realmente acogedora, se me ha pasado preguntarte, ¿como te llamas?" | pv -qL 30
    sleep $texto
    echo "+ Me llamo Tamara, llevo viviendo sola aqui unos pocos meses" | pv -qL 30
    sleep $texto
    echo "- ¿Por que vives sola aqui?" | pv -qL 30
    sleep $texto
    echo "+ En resumen, nací en una familia conflictiva y queria escapar de ese mundo, pero desde que marché no paran de intentar buscarme, trato de no salir mucho de aqui, por eso intento cuidar mi casa" | pv -qL 30
    sleep $texto
    echo "- Uff, debió ser duro" | pv -qL 30
    sleep $texto
    echo "- Yo ni siquiera se porque estoy aqui, simplemente he despertado a la entrada de este pueblo y he decidido preguntar" | pv -qL 30
    sleep $texto
    echo "+ Me recuerda mucho a una leyenda de este pueblo..." | pv -qL 30
    sleep $texto
    echo "- ¿?" | pv -qL 30
    sleep $texto
    echo "+ Si, me parece que esto ya pasó una vez en Ezerani" | pv -qL 30
    sleep $texto
    echo "- No te entiendo, ¿que pasó?" | pv -qL 30
    sleep $texto
    echo "+ Hace ya muchos años otro joven apareció en unas circunstancias parecidas a las que me has contado" | pv -qL 30
    sleep $texto
    echo "+ No sé con seguridad que tuvo que hacer para poder volver a su casa, creo que venia de unas tierras muy lejanas y tuvo que ir al castillo que hay en lo alto del monte Prilep" | pv -qL 30
    cat ./ascii/montaña.txt
    sleep $texto
    echo "+ Pero para llegar a ese castillo no hay forma de que llegues andando..." | pv -qL 30
    sleep $texto
    echo "- ¿Y como puedo llegar hasta alli?" | pv -qL 30
    sleep $texto
    echo "+ Al final del pueblo hay una tienda de motos, quizá si juntas dinero puedes conseguir una" | pv -qL 30
    sleep $texto
    echo "- No sé como lo haré, pero gracias por tu ayuda" | pv -qL 30
    sleep 1
    echo "+ ESPERA!!!" | pv -qL 30
    sleep $texto
    echo "- ¿Que.. pasa..?" | pv -qL 30
    sleep 1
    echo "+ Creo que he escuchado a mi hermano..." | pv -qL 30
    sleep $texto
    echo "* TAMARA, SE QUE ESTAS AHI" | pv -qL 30
    sleep $texto
    echo "* SI NO ABRES AHORA MISMO, TE PROMETO QUE TUMBO LA PUERTA" | pv -qL 30
    sleep $texto
    echo "+ Por favor, sal y defiendeme, quiere matarme" | pv -qL 30
    sleep 1
    clear
    aplay -d 1 ./sonidos/reventon.wav > /dev/null 2>&1 &
    ps_enemigo=8
    pot_enemigo=2
    nom_enemigo=Ershov
    heal=0
    combate
    c_tamara=1
    c_primero=1
    echo "+ ¡¡Coge todo el dinero que puedas y márchate!!" | pv -qL 30
    sleep $texto
    ((monedas += 300))
    echo "¡Has obtenido 300 monedas!" | pv -qL 30
    sleep 2
    segundo
    fi

}

panina (){
    if [[ $c_panina -eq 1 ]]; then 
    echo "Ya has completado esta sala" | pv -qL 30
    sleep 1.5
    clear
    primero
    else
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "- ¿¿¿Hola???" | pv -qL 30
    sleep $texto
    cat ./ascii/olga.txt
    echo "+ ..." | pv -qL 30
    sleep $texto
    echo "- Soy $nombre, no sé donde estoy y habia venido a pedir ayuda" | pv -qL 30
    sleep $texto
    echo "+ ..." | pv -qL 30
    sleep $texto
    echo "- Disculpe señora, ¿está bien?" | pv -qL 30
    sleep $texto
    echo "+ ..." | pv -qL 30
    sleep $texto
    echo "- Bueno, le dejo en paz..." | pv -qL 30
    sleep 1
    echo "+ E-espera..." | pv -qL 30
    sleep $texto
    echo "- ¿?" | pv -qL 30
    sleep $texto
    echo "+ Pasa..." | pv -qL 30
    sleep $texto
    echo "+ Te tengo..." | pv -qL 30
    sleep 1.5
    clear
    cat ./ascii/olga2.txt
    ps_enemigo=10
    pot_enemigo=3
    nom_enemigo=Olga
    heal=0
    combate
    c_panina=1
    c_primero=1
    echo "+ Me has vencido..." | pv -qL 30
    sleep $texto
    echo "+ Sube al pico del monte Prilep y encontrarás tu destino..." | pv -qL 30
    ((monedas += 150))
    sleep $texto
    echo "¡Has obtenido 150 monedas!" | pv -qL 30
    sleep $texto
    echo "¡LARGO!" | pv -qL 30
    sleep 2
    segundo
    fi
}

karolina () {
    if [[ $c_karolina -eq 1 ]]; then 
    echo "Ya has completado esta sala" | pv -qL 30
    sleep 1.5
    clear
    segundo_i
    else
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "- Hola, me llamo $nombre, venia a preguntar si podias ayudarme" | pv -qL 30
    sleep $texto
    echo "+ Disculpame $nombre, la clínica está cerrada hasta el lunes" | pv -qL 30
    sleep $texto
    echo "- No tiene nada que ver con eso, he llegado hasta este pueblo sin saber como y me han dicho que para poder volver a mi casa tengo que subir a la montaña" | pv -qL 30
    sleep $texto
    echo "- Quería saber si podias ayudarme a juntar dinero para obtener una moto" | pv -qL 30
    sleep $texto
    echo "+ Por supuesto, pero vas a tener que vencerme..." | pv -qL 30
    sleep 1.5
    clear
    ps_enemigo=7
    pot_enemigo=2
    nom_enemigo=Karolina
    heal=4
    combate
    c_karolina=1
    echo "+ Me has sorprendido..." | pv -qL 30
    sleep $texto
    echo "+ Lo prometido es deuda, aqui tienes" | pv -qL 30
    sleep $texto
    ((monedas += 400))
    echo "¡Has obtenido 400 monedas!" | pv -qL 30
    sleep 2
    segundo_i
    fi
}

petar () {
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "- Hola, me llamo $nombre, queria saber si podias ayudarme" | pv -qL 30
    sleep $texto
    echo "+ Si vienes a intentar venderme algo ya puedes marcharte" | pv -qL 30
    sleep $texto
    echo "- Emmm no, es que me he perd-" | pv -qL 30
    sleep $texto
    aplay -d 1 ./sonidos/reventon.wav > /dev/null 2>&1 &
    sleep 1
    echo "Te ha cerrado la puerta en la cara" | pv -qL 30
    cat ./ascii/puerta.txt
    sleep 2
    segundo_i

}

irina () {
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "- Hola, me llamo $nombre, pod-" | pv -qL 30
    sleep $texto
    echo "+ Como dijo Sócrates \" Solo existe un bien: el conocimiento. Solo hay un mal: la ignorancia \"" | pv -qL 30
    sleep $texto
    echo "- ¿Vale?" | pv -qL 30
    sleep $texto
    echo "- Bueno, voy al grano, necesito subir al Monte Prilep y estaba intentando juntar algo de dinero para una mo-" | pv -qL 30
    sleep $texto
    echo "+ El amigo debe ser como el dinero; antes de necesitarlo, es necesario saber su valor" | pv -qL 30
    sleep $texto
    echo "- ¿?" | pv -qL 30
    sleep $texto
    echo "+ Si me dices el código secreto, te mandaré directo al castillo..." | pv -qL 30
    sleep $texto
    read -p "Escribe el código: " secreto 
    if [[ $secreto -eq 88916 ]]; then
        echo "¡Es correcto!" | pv -qL 30
        sleep $texto
        echo "Vas a avanzar directamente al castillo" | pv -qL 30
        sleep 2
        castillo
    else
        echo "El código es incorrecto" | pv -qL 30
        sleep 2
        segundo_i
    fi
}

filipov () {
    if [[ $c_filipov -eq 1 ]]; then 
    echo "Ya has completado esta sala" | pv -qL 30
    sleep 1.5
    clear
    segundo_i
    else
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "- Hola, soy $nombre, venia a pedirte una ayudita" | pv -qL 30
    sleep $texto
    echo "+ Márchate, por favor" | pv -qL 30
    sleep $texto
    echo "- Dame un momento, necesito tu ayuda para llegar a lo alto del monte Prilep, un dinero me vendria bien" | pv -qL 30
    sleep $texto
    echo "+ Márchate, no te lo diré una vez mas" | pv -qL 30
    sleep $texto
    echo "- ¿Entonces no pretendes ayudarme? Parece que te lo puedes permitir" | pv -qL 30
    sleep $texto
    echo "+ TE HE DICHO QUE-" | pv -qL 30
    aplay -d 1 ./sonidos/disparo.wav > /dev/null 2>&1 &
    ps_enemigo=1
    pot_enemigo=6
    nom_enemigo=Dragan
    heal=0
    sleep 1.5
    clear
    combate
    c_filipov=1
    echo "TOMA ESTO Y MÁRCHATE DE UNA VEZ" | pv -qL 30
    sleep $texto
    ((monedas += 500))
    echo "¡Has obtenido 500 monedas!" | pv -qL 30
    sleep 2
    segundo_i
    fi

}

pared () {
    opcion=$((RANDOM % 5 + 1))  
    case $opcion in
    1) echo "8(1)"; sleep 2; segundo_d;;
    2) echo "8(2)"; sleep 2; segundo_d;;
    3) echo "9(3)"; sleep 2; segundo_d;;
    4) echo "1(4)"; sleep 2; segundo_d;;
    5) echo "6(5)"; sleep 2; segundo_d;;
    esac
}
tienda_pociones () {
    clear
    echo "¡Bienvenido a la tienda de pociones! 🧪" | pv -qL 30
    sleep $texto
    echo "Tienes $monedas monedas" | pv -qL 30
    sleep $texto
    echo -e "Tu salud máxima es: $limit_ps\tTu salud actual es: $ps_jugador\tLa potencia de tu ataque es de: $pot_jugador" | pv -qL 30
    sleep $texto
    echo "1. Comprar pocion de salud por 150 monedas (+5 salud máx +5 salud)" | pv -qL 30
    sleep $texto
    echo "2. Comprar pocion de potencia por 150 monedas (+1 potencia)" | pv -qL 30
    sleep $texto
    echo "3. Comprar poción de curación por 100 monedas (+10 salud)" | pv -qL 30
    sleep $texto
    echo "4. Salir de la tienda" | pv -qL 30
    sleep $texto
    read -p "¿Que deseas comprar?(1/2/3/4): " eleccion
    case $eleccion in
    1) poc_salud ;;
    2) poc_potencia ;;
    3) poc_curación ;;
    4) segundo_r ;;
    *) echo "Por favor, elige una opción válida."; sleep 1.5; clear; tienda_pociones ;;
    esac

}

poc_salud () {
    if [[ $monedas -lt 150 ]]; then 
        echo "No tienes suficientes monedas" | pv -qL 30
        sleep 2
        tienda_pociones
    else
        ((limit_ps += 5))
        ((ps_jugador += 5))
        ((monedas -= 150))
        echo "¡Gracias por comprar!" | pv -qL 30
        sleep 2
        tienda_pociones
    fi

}

poc_potencia () {
    if [[ $monedas -lt 150 ]]; then 
        echo "No tienes suficientes monedas" | pv -qL 30
        sleep 2
        tienda_pociones
    else
        ((pot_jugador += 1))
        ((monedas -= 150))
        echo "¡Gracias por comprar!" | pv -qL 30
        sleep 2
        tienda_pociones
    fi

}

poc_curación () {
    if [[ $monedas -lt 100 ]]; then 
        echo "No tienes suficientes monedas" | pv -qL 30
        sleep 2
        tienda_pociones
    fi

    if [[ $ps_jugador -eq $limit_ps ]]; then
        echo "Tu salud ya está al máximo, no puedes usar la poción" | pv -qL 30
        sleep 2
        tienda_pociones
    else 
        ((ps_jugador += 10))
        ((monedas -= 100))
        echo "¡Gracias por comprar!" | pv -qL 30
        sleep 2
    fi

    if [[ $ps_jugador -gt $limit_ps ]]; then
        ps_jugador=$limit_ps
    fi
    tienda_pociones
}

veronika () {
    if [[ $c_veronika -eq 1 ]]; then 
    echo "Ya has completado esta sala" | pv -qL 30
    sleep 1.5
    clear
    segundo_r
    else
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "- Hola, soy $nombre, ¿eres la dueña de la tienda de motos?" | pv -qL 30
    sleep $texto
    echo "+ Si, nada más y nada menos" | pv -qL 30
    sleep $texto
    echo "+ Soy Veronika por cierto, encantado de conocerte, ¿quieres algo?" | pv -qL 30
    sleep $texto
    echo "- Emmm si, es que necesito una moto para llegar al pico del monte Prilep y queria saber cuando abre la tienda" | pv -qL 30
    sleep $texto
    echo "+ Pues la tienda está disponible una vez me ganes" | pv -qL 30
    ps_enemigo=10
    pot_enemigo=4
    nom_enemigo=Veronika
    heal=0
    sleep 1.5
    clear
    combate
    c_veronika=1
    c_segundo=1
    echo "+ Wow, me has sorprendido realmente, eres muy habilidoso" | pv -qL 30
    sleep $texto
    echo "+ Puedes venir a mi tienda de motos cuando quieras" | pv -qL 30
    sleep $texto
    echo "+ Toma, lo necesitarás" | pv -qL 30
    sleep $texto
    ((monedas += 250))
    echo "¡Has obtenido 250 monedas!" | pv -qL 30
    sleep 2
    segundo_r
    fi

}

tienda_motos () {
    clear
    if [[ $c_veronika -eq 1 ]]; then
    echo "Bienvenido a la tienda de motos" | pv -qL 30
    sleep $texto
    echo "Tienes $monedas monedas" | pv -qL 30
    sleep $texto
    echo "1. Comprar moto por 2000 monedas" | pv -qL 30
    sleep $texto
    echo "2. Salir de la tienda" | pv -qL 30
    sleep $texto
    read -p "¿Que decides?(1/2): " eleccion
    case $eleccion in
        1) comp_moto ;;
        2) segundo_r ;;
        *) echo "Por favor, elige una opción válida."; sleep 1.5; clear; tienda_motos ;;
    esac
    else
        echo "La dueña de la tienda no está, quizá está en su casa" | pv -qL 30
        sleep 1.5
        segundo_r
    fi    

}

comp_moto () {
    if [[ $moto -eq 1 ]]; then
        echo "Ya tienes la moto" | pv -qL 30
        sleep 1.5
        segundo_r
    elif [[ $monedas -lt 2000 ]]; then
        echo "No tienes suficientes monedas" | pv -qL 30
        sleep 1.5
        segundo_r
    else
        moto=1
        ((monedas -= 2000))
        echo "¡Has comprado la moto!" | pv -qL 30
        cat ./ascii/moto.txt
        sleep 1.5
        segundo_r
    fi
}

andonov () {
    if [[ $c_andonov -eq 1 ]]; then 
    echo "Ya has completado esta sala" | pv -qL 30
    sleep 1.5
    clear
    segundo_r
    else
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "* A ti no te conozco, si quieres hablar con Todor vas a tener que superarme a mi primero" | pv -qL 30
    ps_enemigo=12
    pot_enemigo=2
    nom_enemigo=Guardia
    heal=0
    sleep 1.5
    clear
    combate
    c_andonov=1
    c_segundo=1
    echo "* Puedes pasar." | pv -qL 30
    sleep 1.5
    clear
    echo "- Buenas, soy $nombre, venia en busca de ayuda" | pv -qL 30
    sleep $texto
    echo "+ ¿Has superado a mi guardia? Realmente mereces la pena" | pv -qL 30
    sleep $texto
    echo "- Je... gracias" | pv -qL 30
    sleep $texto
    echo "+ Bueno, ¿que necesitas?" | pv -qL 30
    sleep $texto
    echo "- No queria ser tan directo pero bueno, no se del todo como he llegado aqui y me han dicho que para poder volver a casa necesito subir al monte Prilep" | pv -qL 30
    sleep $texto
    echo "- El caso, necesito dinero para comprar una moto, serias muy amable si me das algo para poder ahorrar" | pv -qL 30
    sleep $texto
    echo "+ Por supuesto, en ayudar a alguien tan fuerte como tú no tengo ningun problema" | pv -qL 30
    sleep $texto
    ((monedas += 1500))
    echo "¡Has obtenido 1500 monedas!" | pv -qL 30
    sleep 2
    echo "- ¡WOW! ¡MUCHAS GRACIAS!" | pv -qL 30
    sleep 1.5
    segundo_r
    fi

}

dragica () {
    if [[ $c_dragica -eq 1 ]]; then 
    echo "Dragica recupera tu salud al completo" | pv -qL 30
    ps_jugador=$limit_ps
    sleep 1.5
    clear
    tercero
    else
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "- Hola, soy $nombre, venia a pedirte ayuda" | pv -qL 30
    sleep $texto
    echo "+ Nada te va a ayudar mas en esta vida que la confianza en ti mismo" | pv -qL 30
    sleep $texto
    echo "- Emmm... ¿vale?" | pv -qL 30
    sleep $texto
    echo "+ ¿Como puedo ayudarte?" | pv -qL 30
    sleep $texto
    echo "- Verás... necesito subir el monte Prilep y queria saber si podias ayudarme con algo" | pv -qL 30
    sleep $texto
    echo "+ Si me vences te concederé un poder que te ayudará mucho" | pv -qL 30
    ps_enemigo=20
    pot_enemigo=4
    nom_enemigo=Dragica
    heal=0
    sleep 1.5
    clear
    combate
    c_dragica=1
    ((monedas += 750))
    echo "¡Has obtenido 750 monedas!" | pv -qL 30
    sleep 2
    echo "+ Me has vencido..." | pv -qL 30
    sleep $texto
    echo "+ No creia que fueses a ser capaz..." | pv -qL 30
    sleep $texto
    echo "+ Cada vez que vengas a mi casa te curaré tu salud al completo" | pv -qL 30
    sleep $texto
    echo "Dragica recupera tu salud al completo" | pv -qL 30
    ps_jugador=$limit_ps
    sleep 1.5
    tercero
    fi

}

darko () {
    if [[ $c_darko -eq 1 ]]; then 
    echo "Ya has completado esta sala" | pv -qL 30
    sleep 1.5
    clear
    tercero
    else
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "- Buenas, soy $nombre, venia a saber si podias ayudarme" | pv -qL 30
    sleep $texto
    echo "+ Hola $nombre, yo soy Darko, ¿que necesitas?" | pv -qL 30
    sleep $texto
    echo "- Pues estoy intentando subir al pico del monte Prilep, ¿podrias ayudarme con algo?" | pv -qL 30
    sleep $texto
    echo "+ Claro, pero vas a tener que vencerme primero" | pv -qL 30
    ps_enemigo=12
    pot_enemigo=3
    nom_enemigo=Darko
    heal=0
    sleep 1.5
    clear
    combate
    c_darko=1
    ((monedas += 500))
    echo "¡Has obtenido 500 monedas!" | pv -qL 30
    sleep 2
    echo "+ Aqui tienes, espero que te sirva de ayuda" | pv -qL 30
    sleep $texto
    echo "- ¡Gracias!" | pv -qL 30
    sleep 1.5
    tercero
    fi

}

adrijan () {
    if [[ $c_adrijan -eq 1 ]]; then 
    echo "Ya has completado esta sala" | pv -qL 30
    sleep 1.5
    clear
    tercero
    else
    clear
    aplay -d 1 ./sonidos/puerta.wav > /dev/null 2>&1 &
    sleep 1
    echo "+ HOLA" | pv -qL 30
    sleep $texto
    echo "- ¿Hola?" | pv -qL 30
    sleep $texto
    echo "+ ¿QUÉ QUIERES?" | pv -qL 30
    sleep $texto
    echo "- Venia a preguntar si podias ayudarme a subir al monte Prilep" | pv -qL 30
    sleep $texto
    echo "+ CLARO" | pv -qL 30
    sleep $texto
    echo "+ PRIMERO VENCEME SI PUEDES JEJEJEJEJAJSKJDOIUYAGOFIUDSGFIJGHFAUIG" | pv -qL 30
    ps_enemigo=12
    pot_enemigo=3
    nom_enemigo=Adrijan
    heal=0
    sleep 1.5
    clear
    combate
    c_adrijan=1
    ((monedas += 500))
    echo "¡Has obtenido 500 monedas!" | pv -qL 30
    sleep 2
    echo "+ TOMA, POR GANARME ASGDQUYTWEIUADSKLJFGOAIWDJ" | pv -qL 30
    sleep $texto
    echo "- ¿Estás bien?" | pv -qL 30
    sleep $texto
    echo "+ ¿YO? ¿BIEN? QASOIHSIDFHAWKJHDIUSHAÑHARÑDOYUH" | pv -qL 30
    sleep 1.5
    tercero
    fi
}

camino () {
    if [[ $moto -eq 1 ]]; then
        if [[ $c_camino -eq 1 ]]; then
            clear
            echo "1. Subir al castillo (final)" | pv -qL 30
            sleep $texto
            echo "2. Volver al pueblo" | pv -qL 30
            sleep $texto
            read -p "¿Qué decides? (1/2): " eleccion
            case $eleccion in
                1) castillo ;;
                2) tercero ;;
                *) echo "Por favor, elige una opción válida."; sleep 1.5; clear; camino ;;
            esac
        else
        clear
        sleep $texto
        echo "+ ¡ALTO!" | pv -qL 30
        sleep $texto
        echo "- ..." | pv -qL 30
        sleep $texto
        echo "+ BAJA DE ESA MOTO AHORA MISMO" | pv -qL 30
        sleep $texto
        echo "- ..." | pv -qL 30
        sleep $texto
        echo "+ Si pretendes subir al castillo del dragón debes vencerme primero" | pv -qL 30
        sleep $texto
        echo "- ¿Que dragón?" | pv -qL 30
        ps_enemigo=15
        pot_enemigo=4
        nom_enemigo=Protector
        heal=0
        sleep 1.5
        clear
        combate
        c_camino=1
        echo "+ Pareces preparado para el combate..." | pv -qL 30
        sleep 1.5
        camino
        fi
    else
    clear
    echo "Para poder avanzar por el camino necesitas la moto" | pv -qL 30
    sleep 2
    tercero
}

castillo () {
    clear
    cat ./ascii/castillo.txt
    sleep 2
    echo "- ¿Hola...?" | pv -qL 30
    sleep $texto
    echo "- ¿¿¿Hay alguien???" | pv -qL 30
    sleep $texto
    echo "+ grrr" | pv -qL 30
    sleep $texto
    echo "- ... Holaaaaaa" | pv -qL 30
    sleep $texto
    echo "+ GRAAAAAAAAH" | pv -qL 30
    sleep $texto
    cat ./ascii/dragon.txt
    aplay -d 3 ./sonidos/dragon.wav > /dev/null 2>&1 &
    sleep 3
    ps_enemigo=30
    pot_enemigo=5
    nom_enemigo=Dragón
    heal=2
    clear
    combate
    echo "+ grrr" | pv -qL 30
    sleep 1
    echo "- POR FIIIIIIIIIN" | pv -qL 30
    cat ./ascii/fin.txt
    sleep 4
    exit


}

clear
limit_ps=20
ps_jugador=20
pot_jugador=3
monedas=0
inicio