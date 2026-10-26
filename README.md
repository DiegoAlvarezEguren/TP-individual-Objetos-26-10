# TP-individual-Objetos-26-10
Este es el repositorio del TP individual de objetos realizado el 26/10/2026


Explicación del desarrollo del TP:

1- Encapsulamiento y Responsabilidad: Responsabilidad hace referencia a que debe hacer cada objeto, se usó este concepto para hacer un código más limpio y más fácil de mantener, por ejemplo, es responsabilidad del Asistente modificar el saldo y gestionar el historial de entradas. Encapsulamiento es la práctica de exponer al mínimo el estado de los objetos, siendo éstos responsables de su estado y los demás interactúan con él a traves de una interfaz


2 y 3- Clases y polimorfismo: Se usó clases no solamente para evitar repetir lógica y poder instanciar la cantidad de bandas/Asistentes que queramos, además se usaron las clases para asegurarnos de que todos los objetos que pertenecen a esa clase compartan el mismo comportamiento, es decir, que puedan entender todos los métodos que le competen a esa clase, manteniendo el polimorfismo. Además se utilizó para los abonos, la productora envía el mensaje bonificarVIP() al asistente y este a su vez busca en su atributo abono para definir que hacer, sin necesidad de usar un if, tanto los vips como los fans entienden el mensaje


4- Composición: Es la contraparte dinámica de la herencia, se usa cuando uno de los atributos heredados puede cambiar en el tiempo, durante la ejecución del programa. Consiste en delegar la lógica a una nueva clase/objeto y cada objeto conoce su atributo a partir de esta clase/objeto. Fue usado en la relación Asistente abono, en lugar de crear la clase asistente fan y asistente vip, tenemos solo una clase de asistente que tiene un atributo abono, el cual contiene la lógica del descuento, permitiendo así que en el futuro el fan pueda volverse vip o vice versa (se usó clase para el abono vip porque el descuento que puede tener cada uno varía, el fan siempre es cero, por eso se mantiene como objeto)


5-Super clases, herencia y metodos abstractos: La super clase nos permite evitar repetir lógica entre dos o más clases, en este caso definimos la super clase Banda de la cual las clases BandaRock, BandaTrap, BandaIndie heredan la lógica de que mensajes debe entender las bandas en general, dejando a cargo a las sub clases como cada una maneja cada mensaje. Luego tenemos el problema de que cada clase de banda maneja la popularidad y el presupuesto de manera distinta, aunque comparten los métodos, para esto usamos el método abstracto en la super clase, definimos que métodos debe entender pero al crear cada clase se definió la lógica que cada tipo de banda debía usar
