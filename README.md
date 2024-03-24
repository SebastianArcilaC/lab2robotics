# Laboratorio 2
### Joan Sebastian Arcila Cardozo
### Gustavo Adolfo Ropero Bastidas

El repositorio alberga una guía práctica fundamental para el funcionamiento del Robot VT6L de EPSON mediante el software EPSON RC + 7.0. La guía está concebida para consolidar los conocimientos básicos necesarios para operar este robot, desde la instalación física y eléctrica hasta la programación de movimientos y funciones avanzadas.

### Recursos:

- Software EPSON RC + 7.0 – Versión 7.5.2
- Robot VT6L

### Prácticas:

### Simulador:
  - Configuración Inicial del Robot:
Para comenzar, se abre el software EPSON RC + 7.0 y se crea una conexión virtual con el robot VT6L. Posteriormente, se procede a configurar el robot en la sección de Configuración del Sistema. Esta etapa es crucial para establecer los parámetros iniciales del robot y asegurar una comunicación adecuada con el software.


  - Creación de una Posición de Home:
Una vez establecida la conexión y configuración del robot, se abre un nuevo proyecto y se utiliza el Robot Manager para configurar una posición de home. Esta posición servirá como punto de referencia inicial para los movimientos del robot durante la operación. Pero al momento de hacer la practica el ingeniero nos indico establecer el home que nosotros quisieramos para que aprendieramos a establecerlos utilizando el robot


  - Creación de Puntos y Programación en SPEL+:
A continuación, se utilizan las herramientas de JOG&TEACH para crear tres puntos con coordenadas aproximadas. Estos puntos son cruciales para definir los movimientos del robot durante la operación. Posteriormente, se programa un programa en SPEL+ siguiendo la estructura básica proporcionada en la documentación. Este programa permite al robot navegar entre los tres puntos creados, estos valores tambien fueron modificos durante la practica, asi que son puntos unicamente establecicos por nosoros, tanto Z, como origen, eje x y eje y.

![image](https://github.com/SebastianArcilaC/lab2robotics/assets/115434124/478ab764-5ccf-47ca-9246-c3e334b712bf)
![image](https://github.com/SebastianArcilaC/lab2robotics/assets/115434124/d26e9b9c-92e4-41e2-ab52-511f6ed7e072)


  - Generación de Funciones de Paletizado
Se generan dos funciones de paletizado, "paletizado_z" y "paletizado_s", que permiten al robot ejecutar movimientos específicos de paletizado. La función "paletizado_z" configura un pallet de 3x3 posiciones y navega por estas posiciones en orden ascendente. Por otro lado, la función "paletizado_s" recorre las nueve posiciones generando un Track Render en forma de "S".

![image](https://github.com/SebastianArcilaC/lab2robotics/assets/115434124/45cffd11-c742-4ac1-baca-9b4145065044)
![image](https://github.com/SebastianArcilaC/lab2robotics/assets/115434124/ed6f80e4-0fe9-4a1d-b118-12d6132b83f4)

  - Condiciones y Manejo de Entradas/Salidas Digitales
Se codifican condiciones condicionales para ejecutar las funciones de paletizado solo si ciertas entradas digitales están activadas. Además, se programa la activación de salidas digitales durante la ejecución de las funciones de paletizado para indicar su estado.

![image](https://github.com/SebastianArcilaC/lab2robotics/assets/115434124/c8d95341-d490-4126-977f-41c314e83ee9)

  - Generación de Función de Paletizado Externo
Finalmente, se genera una tercera función llamada "paletizado_externo", que utiliza el comando Pallet Outside para configurar un pallet con 3 puntos iniciales y una cuarta fila y columna extendida. Esta función permite al robot navegar por los 16 puntos del pallet.

![image](https://github.com/SebastianArcilaC/lab2robotics/assets/115434124/73403497-d162-407e-93b3-319701a9a81c)

### Robot VT6L:

Para la debida conexión con el robot se estableció por USB, se definió Home y los demás valores necesarios para ejecutar el código debidamente, también se establecieron las entradas digitales.

- Primero se hizo una prueba en LOW POWER para mirar el correcto funcionamiento del código sin llamar las funciones
- Una vez verificado que el código funciona correctamente se quita la casilla de LOW POWER y el robot ejecuta las funciones correctamente.

# Video de comprobación de funcionamiento

[![Alt text](https://img.youtube.com/vi/https://youtu.be/-4INf5pHHNA?si=TjSUPCf2pic9-xDL/0.jpg)](https://www.youtube.com/watch?v=https://youtu.be/-4INf5pHHNA?si=TjSUPCf2pic9-xDL)


