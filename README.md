# TP-individual-Objetos-26-10
Este es el repositorio del TP individual de objetos realizado el 26/10/2026


Explicación del desarrollo del TP:

1- Responsabilidad: Este concepto hace referencia a que debe hacer cada objeto, se usó este concepto para hacer un código más limpio y más fácil de mantener, por ejemplo, es responsabilidad de la clase VIP saber cuanto debe ser el aumento, la productora le envía el mensaje para que aumente su descuento


2 y 3- Clases y polimorfismo: Se usó clases no solamente para evitar repetir lógica y poder instanciar la cantidad de bandas/Asistentes que queramos, además se usaron las clases para asegurarnos de que todos los objetos que pertenecen a esa clase compartan el mismo comportamiento, es decir, que puedan entender todos los métodos que le competen a esa clase, manteniendo el polimorfismo.


4- Métodos abstractos : Una herramienta que usamos en las clases para mantener el polimorfismo, se usó con las bandas, todas comparten los mismos métodos, pero el cálculo de popularidad y presupuesto varía, por eso se escribieron los métodos en la super clase pero no se definieron


5-Super clases y herencia: Definimos la super clase Banda de la cual las clases BandaRock, BandaTrap, BandaIndie heredan la lógica de que mensajes debe entender las bandas en general, dejando a cargo a las sub clases como cada una maneja cada mensaje
