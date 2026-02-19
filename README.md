# RA5 - Practica VideoJuego

# Índice
- [Conceptualización](#conceptualización)
- [Arte](#arte)
- [Problemas](#problemas)
    - [Dificultades con los cactus y la vida](#dificultades-con-los-cactus-y-la-vida)

## Integrantes
- Jiangyu Liu
- Jiakai Zhu
- Jiajun Zhu

# Conceptualización
## Ideas
- Un gerero que le viene de mediebal a mundo donde los edificios estan derumbados y llenos de esqueletos y otros seres vivos más.El caballero tiene que salvar el mundo para volver a su propio mundo.

## Diseño
- **Historia del videojuego:**
    - La narrativa completa puede leerse en el siguiente archivo: [Histotia del videojuego](/recursos/historia.md)
- **Descripción del personaje:**
    - Cavallero al estilo mediebal.
- **Arte conceptual:**
    - Story Boards
<img src="/recursos/Multimedia/storyBoards/storyBoards.png">
- **Motor de desarrollo:**
    - Utilizado el motor Godot 4.3 y 4.6, que permite una programación eficiente en GDScript, además de ofrecer herramientas visuales potentes para el desarrollo de juegos 2D.


# Arte
- **Música y efectos de sonido (BGM):**
    - Música seleccionada de la plataforma: [Musica o BGM](https://www.aigei.com/sound/class/games_category)
- **Texturas:**
    - Recursos visuales descargados de: [Textura](https://www.zhaozi.cn/s/all/otf/)
- **Personajes Enemigo:**
    - Personaje esqueleto obtenido desde: [Personaje Esqueleto](https://www.aigei.com/s?q=%E9%AA%B7%E9%AB%85%E5%85%B5&type=2d)
- **Otros recursos:**
    - Para completar la ambientación, se han utilizado recursos adicionales desde:
        - [itch.io](https://itch.io/)
        - [craftpix.net](https://craftpix.net/)
    - Recursos del archivo del aula virtual:
        - Moneda
        - Captus 
- **Generación de fondo mediante IA**
    - La imagen de fondo principal fue generada con inteligencia artificial.
    <img src="/recursos/Multimedia/CapturaIA.png">

# Problemas

## Dificultades con los cactus y la vida

A la hora de seguir los pasos de los apuntes, al llegar a la parte de cactus y de la vida me ha costado bastante en resolver el problema.

<img src="./recursos/Multimedia/VidaMoneda.png">

* Al llegar a ese apartado pienso que para mostrar moneda es lo mismo para mostrar la vida por lo tanto lo hice en la misma escena.

<img src="./recursos/Multimedia/CaptusVidaCodigo.png">

* En el script igual, pero a la hora de hacer la relación con el jugador me ha costado, porque los métodos eran en inglés y como se me daba muy mal inglés me ha costado entender las cosas y cómo hacer referencias.
* Pero luego ya he descubierto a lo largo de investigando y traduciendo las cosas.


<img src="./recursos/Multimedia/ProblevaVIda.png">


* Vemos que al agrandar la pantalla el corazón de la vida no se ajusta y no he podido descubrir cómo lograrlo.

* Ya se porque, porque el cuadro que hay es la vista que se ve la pantalla y la el configuración de l avista de pantalla no esta bien configurado.

<img src="./recursos/Multimedia/VidaResuelto.png">

* Para que se vea bien lo he movido todo a la izquierda para que se pueda ver.

>Git del juego: https://github.com/liuDam1/vg_practica.git 
