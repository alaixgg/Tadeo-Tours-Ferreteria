```sql
CREATE OR REPLACE PROCEDURE registrar_cliente(
    p_nombre IN VARCHAR2,
    p_apellido IN VARCHAR2,
    p_telefono_casa IN VARCHAR2,
    p_telefono_trabajo IN VARCHAR2,
    p_fax IN VARCHAR2,
    p_email IN VARCHAR2,
    p_direccion IN VARCHAR2
) AS 
BEGIN 
    INSERT INTO cliente (nombre, apellido, telefono_casa, telefono_trabajo, fax, email, direccion)
    VALUES (p_nombre, p_apellido, p_telefono_casa, p_telefono_trabajo, p_fax, p_email, p_direccion);
    
    DBMS_OUTPUT.PUT_LINE('Cliente registrado correctamente.');
EXCEPTION
    -- Capturar cualquier error y mostrar un mensaje de error
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al registrar cliente: ' || SQLERRM);
END registrar_cliente;
/

```

---de reservas

```sql
CREATE OR REPLACE PROCEDURE registrar_solicitud_reserva(
    p_id_solicitud   IN VARCHAR2, 
    p_id_fecha_viaje IN VARCHAR2,
    p_id_cliente     IN VARCHAR2,
    p_id_ciudad      IN VARCHAR2, 
    p_id_estado      IN VARCHAR2,
    p_id_ciudad_origen IN VARCHAR2, 
    p_fecha_solicitd   IN VARCHAR2
)AS
BEGIN 
    INSERT INTO solicitud_reserva (id_solicitud, id_fecha_viaje, id_cliente, id_ciudad, id_estado, id_ciudad_origen, fecha_solicitud)
    VALUES (p_id_solicitud, p_id_fecha_viaje,p_id_cliente,p_id_ciudad,p_id_estado, p_id_ciudad_origen,p_fecha_solicitd );
    
    DBMS_OUTPUT.PUT_LINE('Solicitud de reserva registrada correctamente.');
EXCEPTION
    -- Capturar cualquier error y mostrar un mensaje de error
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al registrar solicitud de reserva: ' || SQLERRM);
END registrar_solicitud_reserva;
/
   
```

---c

```sql
    
CREATE OR REPLACE PROCEDURE registrar_reserva_avion(
   p_id_reserva_avion IN VARCHAR2,
   p_id_vuelo IN VARCHAR2,
   p_id_viajero IN VARCHAR2
) AS 
BEGIN 
    -- Insertar la reserva en la tabla de reservas
    INSERT INTO reserva_avion (id_reserva_avion, id_vuelo, id_viajero)
    VALUES (p_id_reserva_avion, p_id_vuelo, p_id_viajero);
    
    DBMS_OUTPUT.PUT_LINE('Reserva de avión registrada correctamente.');
EXCEPTION
    -- Capturar cualquier error y mostrar un mensaje de error
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al registrar reserva de avión: ' || SQLERRM);
END registrar_reserva_avion;
/
```

---d

```sql

CREATE OR REPLACE PROCEDURE cancelar_reserva(
   p_id_reserva    IN VARCHAR2,
   p_id_reserva_avion IN VARCHAR2,
   p_id_reserva_hotel IN VARCHAR2,
   p_id_pago       IN VARCHAR2,
   p_id_cliente    IN VARCHAR2,
   p_numero_viajeros IN VARCHAR2,
   p_id_estado       IN VARCHAR2,
   p_id_solicitud    IN VARCHAR2,
   p_id_fecha        IN VARCHAR2
   
) AS 
BEGIN 
    
    DELETE FROM reserva WHERE id_reserva = p_id_reserva;
    
    DBMS_OUTPUT.PUT_LINE('Reserva cancelada correctamente.');
EXCEPTION

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al cancelar reserva: ' || SQLERRM);
END cancelar_reserva;
/

```

---E

```sql
CREATE OR REPLACE FUNCTION calcular_efectividad_reservas(
    p_id_fecha   IN DATE,
    p_fecha_inicio IN DATE,
    p_fecha_fin IN DATE
) RETURN NUMBER AS 
    v_num_solicitudes INTEGER;
    v_num_reservas INTEGER;
    v_efectividad NUMBER;
BEGIN 
    -- Contar el número de solicitudes de reserva en el periodo
    SELECT COUNT(*)
    INTO v_num_solicitudes
    FROM solicitud_reserva
    WHERE fecha_solicitud BETWEEN p_fecha_inicio AND p_fecha_fin;

    -- Contar el número de reservas confirmadas en el periodo
    SELECT COUNT(*)
    INTO v_num_reservas
    FROM v_num_solicitudes  BETWEEN p_fecha_inicio AND p_fecha_fin;

    -- Calcular la efectividad del proceso de reservas
    IF v_num_reservas > 0 THEN
        v_efectividad := v_num_solicitudes / v_num_reservas;
    ELSE
        v_efectividad := 0; -- Evitar división por cero
    END IF;

    RETURN v_efectividad;
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL; -- Manejar cualquier error retornando NULL
END calcular_efectividad_reservas;
/

```

---f

```sql
-- Crear el cuerpo del paquete
CREATE OR REPLACE PACKAGE BODY paquete_reservas AS
  -- Implementar la función para calcular el tiempo promedio por reserva
  FUNCTION calcular_tiempo_promedio_por_reserva RETURN NUMBER IS
    tiempo_promedio NUMBER;
  BEGIN
    -- Calcular el tiempo promedio por reserva
    SELECT AVG(DateDiff(fecha_inico, fecha_fin)) 
    INTO tiempo_promedio
    FROM fecha;
    
    RETURN tiempo_promedio;
  END calcular_tiempo_promedio_por_reserva;
END paquete_reservas;
/
```
