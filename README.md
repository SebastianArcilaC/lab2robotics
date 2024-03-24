# Laboratorio 2
### Joan Sebastian Arcila Cardozo
### Gustavo Adolfo Ropero Bastidas

El repositorio alberga una guía práctica fundamental para el funcionamiento del Robot VT6L de EPSON mediante el software EPSON RC + 7.0. La guía está concebida para consolidar los conocimientos básicos necesarios para operar este robot, desde la instalación física y eléctrica hasta la programación de movimientos y funciones avanzadas.

### Recursos:

- Software EPSON RC + 7.0 – Versión 7.5.2
- Robot VT6L

### Prácticas:

### Simulador:
  - Configuración Inicial del Robot
Para comenzar, se abre el software EPSON RC + 7.0 y se crea una conexión virtual con el robot VT6L. Posteriormente, se procede a configurar el robot en la sección de Configuración del Sistema. Esta etapa es crucial para establecer los parámetros iniciales del robot y asegurar una comunicación adecuada con el software.


  - Creación de una Posición de Home
Una vez establecida la conexión y configuración del robot, se abre un nuevo proyecto y se utiliza el Robot Manager para configurar una posición de home. Esta posición servirá como punto de referencia inicial para los movimientos del robot durante la operación. Pero al momento de hacer la practica el ingeniero nos indico establer el home que nosotros quisieramos para que aprendieramos a establecerlos utilizando el robot, estos fueron los que escogimos:


  - Creación de Puntos y Programación en SPEL+
A continuación, se utilizan las herramientas de JOG&TEACH para crear tres puntos con coordenadas aproximadas. Estos puntos son cruciales para definir los movimientos del robot durante la operación. Posteriormente, se programa un programa en SPEL+ siguiendo la estructura básica proporcionada en la documentación. Este programa permite al robot navegar entre los tres puntos creados, estos valores tambien fueron modificos durante la practica, asi que son puntos unicamente establecicos por nosoros, tanto Z, como origen eje x y eje y.
![image](https://github.com/SebastianArcilaC/lab2robotics/assets/115434124/478ab764-5ccf-47ca-9246-c3e334b712bf)


  - Generación de Funciones de Paletizado
Se generan dos funciones de paletizado, "paletizado_z" y "paletizado_s", que permiten al robot ejecutar movimientos específicos de paletizado. La función "paletizado_z" configura un pallet de 3x3 posiciones y navega por estas posiciones en orden ascendente. Por otro lado, la función "paletizado_s" recorre las nueve posiciones generando un Track Render en forma de "S".


  - Condiciones y Manejo de Entradas/Salidas Digitales
Se codifican condiciones condicionales para ejecutar las funciones de paletizado solo si ciertas entradas digitales están activadas. Además, se programa la activación de salidas digitales durante la ejecución de las funciones de paletizado para indicar su estado.


  - Generación de Función de Paletizado Externo
Finalmente, se genera una tercera función llamada "paletizado_externo", que utiliza el comando Pallet Outside para configurar un pallet con 3 puntos iniciales y una cuarta fila y columna extendida. Esta función permite al robot navegar por los 16 puntos del pallet y se ejecuta solo si la entrada digital 11 está activada.

### Robot VT6L:
