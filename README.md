https://github.com/alaixgg/Tadeo-Tours-Ferreteria

Diagrama Tadeo Tours: <div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embedded/e72e7232-f72a-4f98-ad9d-22d832741846" id="WSwr6l_D2x_9"></iframe></div>

Proyecto Asignatura Programación de Bases de Datos

El entregable del proyecto de la asignatura Programación de Bases de Datos, es un
documento que contenga los detalles técnicos de implementación de un esquema
de bases de datos para el manejo de información en el proceso de reservas de
tiquetes aéreos, alojamiento y paquetes turísticos, de la agencia de viajes Tadeo
Tours. 

A continuación la estructura de documento sugerida:

Tabla de Contenido
Introducción: Contexto del negocio, antecedentes, justificación, generalidades del
proyecto.

1. Objetivos: A nivel del proyecto, de cara al negocio, y en el ámbito académico.

2. Alcance del proyecto: Declaración y delimitación de alcance, descripción de los
requerimientos en términos generales. Restricciones o excepciones.

3. Modelo de Datos:
a. Diagrama modelo conceptual (Entidad – Relación) o diagrama de clases,
diseño lógico, diseño físico.
b. Diccionario del esquema de base de datos.

4. Catalogación de scripts para creación de objetos (tablas, índices, secuencias,
vistas, sinónimos, procedimientos, funciones, paquetes), parametrización y
cargue de datos, consultas requeridas.

5. Guía de instalación.

6. Consultas: Sentencias SQL para atender los siguientes requerimientos de
consulta:
a. Reporte (Listado) de las solicitudes de reserva registradas en un periodo
(fecha inicio – fecha fin), desplegando identificación de la solicitud, fecha de
registro, identificación del solicitante, nombre del solicitante, origen, destino,
fecha salida, fecha regreso, número de personas y estado de la solicitud a la
fecha de corte.
b. Listado de las reservas confirmadas en un periodo (fecha inicio – fecha fin),
desplegando identificación de la reserva, fecha de reserva, identificación del
cliente, nombre del cliente, origen, destino, fecha salida, fecha regreso,
número de personas, aerolínea, hotel y valor reserva.
c. Top 5 de los destinos turísticos más visitados por los clientes de la agencia en
un periodo (fecha inicio – fecha fin), con base en el número de reservas.
Desplegar el nombre del destino y la cantidad de reservas confirmadas.
d. Top 5 de los destinos turísticos más visitados por los clientes de la agencia en
un periodo (fecha inicio – fecha fin), con base en el número de viajeros.
Desplegar el nombre del destino y el número de viajeros.
e. Top 5 de los destinos turísticos más visitados por los clientes de la agencia en
un periodo (fecha inicio – fecha fin), con base en el volumen de ingresos por
reservas. Desplegar el nombre del destino y el monto de los ingresos por
reservas.
f. Top 5 de las aerolíneas preferidas por los clientes de la agencia en un periodo
(fecha inicio – fecha fin), con base en el número de reservas. Desplegar el
nombre de la aerolínea y la cantidad de reservas confirmadas.
g. Top 5 de los hoteles preferidos por los clientes de la agencia en un periodo
(fecha inicio – fecha fin), con base en el número de reservas. Desplegar el
nombre del hotel y la cantidad de reservas confirmadas.

7. Construcción de paquete almacenado que contenga los siguientes subprogramas:
a. Procedimiento para registro de cliente.
b. Procedimiento para registro de solicitud de reserva de tiquetes aéreos y/o
alojamiento.
c. Procedimiento para registro de reserva de tiquetes aéreos y/o alojamiento.
d. Procedimiento para cancelación de reserva de tiquetes aéreos y/o
alojamiento.
e. Función que calcule el indicador de efectividad del proceso de reservas en un
periodo (número de solicitudes de reserva / número de reservas
confirmadas).
f. Función que calcule el tiempo promedio por reserva en un periodo (El tiempo
de una reserva se obtiene con la diferencia entre la fecha de reserva y la
fecha de registro de la solicitud).

8. Conclusiones y recomendaciones

9. Bibliografía

10. Anexos
