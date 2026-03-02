# Conceptualización

## Diseño

### Historia del videojuego

La narrativa completa puede leerse en el siguiente archivo:  
[Historia del videojuego](./Historia.md)

### Descripción del personaje

El protagonista es un **caballero de estilo medieval**, equipado con armadura y espada.  
Su diseño representa valentía y resistencia, acorde con la ambientación fantástica del juego.

### Arte conceptual

#### Storyboards

![Storyboards](/resources/Multimedia/storyBoards/storyBoards.png)

Los storyboards muestran las escenas principales del juego y ayudan a visualizar la narrativa y la progresión de los acontecimientos.

## Personajes y Enemigos

### Caballero (Jugador)

Animaciones principales del personaje:

![Reposo](/resources/Multimedia/Personajes/Reposo_1.gif)
![Correr](/resources/Multimedia/Personajes/Correr.gif)
![Saltar](/resources/Multimedia/Personajes/saltar.gif)
![Morir](/resources/Multimedia/Personajes/Morrir.gif)
![Ataque](/resources/Multimedia/Personajes/ataque.gif)
![Bloqueo](/resources/Multimedia/Personajes/bloqueo.gif)
![Daño](/resources/Multimedia/Personajes/daño.gif)

El caballero cuenta con animaciones completas de movimiento, combate, defensa, daño y muerte, lo que permite una jugabilidad dinámica y fluida.

### Enemigos Dinámicos

Son enemigos que detectan al jugador y reaccionan a su presencia.

#### Esqueleto

![Esqueleto](/resources/Multimedia/Personajes/Esqueleto.gif)

Enemigo básico que persigue y ataca al jugador.

#### Planta Depredadora

![Depredador](/resources/Multimedia/Personajes/AtaqueEnemigo.gif)

Enemigo que ataca cuando el jugador entra en su rango de detección.

#### Boss Demonio

![Reposo](/resources/Multimedia/Personajes/boos_idle.gif)
![Andar](/resources/Multimedia/Personajes/boos_andar.gif)
![Atacar](/resources/Multimedia/Personajes/boos_atake.gif)
![Daño](/resources/Multimedia/Personajes/boo_dano.gif)
![Muerte](/resources/Multimedia/Personajes/boos_muerte.gif)

Jefe final del nivel, con animaciones completas de reposo, movimiento, ataque, daño y muerte.

### Enemigos Estáticos

Son obstáculos que no se desplazan, pero causan daño al entrar en contacto con el jugador.

![Cactus](/resources/Multimedia/Personajes/Captus.png)
![Pinchos](/resources/Multimedia/Personajes/Pinchos.png)

## Motor de Desarrollo

Se ha utilizado el motor **Godot 4.3 y 4.6**, que permite una programación eficiente en **GDScript**, además de ofrecer herramientas visuales potentes para el desarrollo de juegos en 2D.
