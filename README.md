# Sesión 03 - Algoritmos en PSeInt

## Descripción

En esta sesión se desarrollaron cinco algoritmos utilizando PSeInt, aplicando variables, estructuras condicionales, ciclos repetitivos, funciones y subprocesos.

Los ejercicios permiten practicar la lógica de programación y resolver diferentes situaciones mediante algoritmos.

---

## 1. CajeroParqueadero

### Descripción
Este algoritmo permite registrar los valores cobrados por un parqueadero. El usuario ingresa el valor de cada vehículo y el programa acumula el dinero recaudado y cuenta la cantidad de carros atendidos.

El ingreso del valor `0` permite cerrar la caja y mostrar los resultados.

### Variables utilizadas

| Variable | Tipo | Descripción |
|---|---|---|
| valor | Real | Valor cobrado por cada carro. |
| total | Real | Acumulación del dinero recaudado. |
| carros | Entero | Cantidad de carros atendidos. |

### Traza de escritorio

**Datos de entrada de ejemplo:**

- Primer carro: $5.000
- Segundo carro: $7.000
- Tercer ingreso: $0 (cierre de caja).

| Paso | Valor ingresado | Total acumulado | Carros atendidos |
|---|---:|---:|---:|
| Inicialización | - | 0 | 0 |
| 1 | 5000 | 5000 | 1 |
| 2 | 7000 | 12000 | 2 |
| 3 | 0 | 12000 | 2 |

### Resultado esperado

```text
Carros atendidos: 2
Total recaudado: $12000
```

### Estructuras utilizadas
- `Mientras`: permite repetir el proceso mientras el valor ingresado sea diferente de cero.
- Acumulador: suma los valores cobrados.
- Contador: registra la cantidad de carros atendidos.

---

## 2. Calificaciones

### Descripción
Este algoritmo solicita las notas de cinco estudiantes y calcula el promedio general, la cantidad de estudiantes aprobados, la nota más alta y la nota más baja.

También identifica si algún estudiante perdió la materia.

### Variables utilizadas

| Variable | Tipo | Descripción |
|---|---|---|
| i | Entero | Contador de estudiantes. |
| aprobados | Entero | Cantidad de estudiantes aprobados. |
| nota | Real | Nota ingresada por estudiante. |
| suma | Real | Suma de todas las notas. |
| mayor | Real | Nota más alta. |
| menor | Real | Nota más baja. |
| alguienPerdio | Lógico | Indica si algún estudiante perdió. |

### Estructuras utilizadas
- `Para`: repite el proceso cinco veces.
- `Si - SiNo`: determina si un estudiante aprobó o perdió.
- Acumulador: suma todas las notas.
- Contador: registra los estudiantes aprobados.
- Comparaciones: identifican la nota mayor y menor.

---

## 3. FacturaRestaurante

### Descripción
Este algoritmo permite calcular una factura de restaurante a partir del subtotal del pedido.

Calcula automáticamente un impuesto del 8% y una propina del 10%. Finalmente, muestra el subtotal, el impuesto, la propina y el total que debe pagar el cliente.

### Componentes utilizados

| Función o subproceso | Descripción |
|---|---|
| LeerPedido() | Solicita y devuelve el subtotal del pedido. |
| CalcularPorcentaje() | Calcula un porcentaje del subtotal recibido. |
| ImprimirFactura() | Muestra los valores de la factura y calcula el total. |

### Árbol de componentes

```text
             FacturaRestaurante
                     |
          +----------+----------+
          |          |          |
          v          v          v
      LeerPedido  CalcularPorcentaje  ImprimirFactura
                     |
              +------+------+
              |             |
              v             v
          Impuesto        Propina
            8%              10%
```

### Ejemplo de funcionamiento

**Dato de entrada:**

```text
Subtotal: 100000
```

**Resultados:**

| Concepto | Valor |
|---|---:|
| Subtotal | $100.000 |
| Impuesto (8%) | $8.000 |
| Propina (10%) | $10.000 |
| Total a pagar | $118.000 |

### Estructuras utilizadas
- Funciones: permiten reutilizar operaciones y devolver resultados.
- Subprocesos: permiten organizar instrucciones.
- Operaciones matemáticas: calculan los porcentajes y el total de la factura.

---

## 4. Piramide

### Descripción
Este algoritmo solicita al usuario la altura de una pirámide y utiliza ciclos repetitivos para imprimir una figura formada por asteriscos (`*`).

La cantidad de espacios disminuye en cada fila, mientras que la cantidad de asteriscos aumenta.

### Variables utilizadas

| Variable | Tipo | Descripción |
|---|---|---|
| n | Entero | Altura de la pirámide. |
| fila | Entero | Controla las filas de la pirámide. |
| j | Entero | Controla los espacios y asteriscos. |

### Traza de escritorio

**Dato de entrada:**

```text
n = 4
```

| Fila | Espacios (n-fila) | Asteriscos (2*fila-1) |
|---|---:|---:|
| 1 | 3 | 1 |
| 2 | 2 | 3 |
| 3 | 1 | 5 |
| 4 | 0 | 7 |

### Resultado esperado

```text
   *
  ***
 *****
*******
```

### Estructuras utilizadas
- Primer ciclo `Para`: controla las filas de la pirámide.
- Segundo ciclo `Para`: imprime los espacios antes de los asteriscos.
- Tercer ciclo `Para`: imprime los asteriscos de cada fila.
- `Sin Saltar`: permite imprimir los caracteres en una misma línea.

---

## 5. ValidarPIN

### Descripción
Este algoritmo simula la validación de un PIN de seguridad. El usuario tiene un máximo de tres intentos para ingresar el PIN correcto.

Si el PIN ingresado es `2580`, el sistema permite el acceso. Si se completan los tres intentos sin ingresar el PIN correcto, la tarjeta queda bloqueada.

### Variables utilizadas

| Variable | Tipo | Descripción |
|---|---|---|
| pin | Entero | PIN ingresado por el usuario. |
| intentos | Entero | Cantidad de intentos realizados. |
| acceso | Lógico | Indica si el acceso fue autorizado. |

### Estructuras utilizadas
- `Repetir - Hasta Que`: permite solicitar el PIN varias veces.
- `Si - SiNo`: verifica si el PIN es correcto.
- Contador: registra los intentos realizados.
- Variable lógica: controla si el acceso fue autorizado.

### Ejemplo de funcionamiento

| Intento | PIN ingresado | Acceso |
|---|---:|---|
| 1 | 1234 | Falso |
| 2 | 1111 | Falso |
| 3 | 2580 | Verdadero |

**Resultado esperado:**

```text
Bienvenido
```

---

## Conclusión

Durante esta sesión se practicaron diferentes estructuras fundamentales de programación en PSeInt.

Se trabajó con ciclos `Mientras`, `Para` y `Repetir`, estructuras condicionales `Si - SiNo`, contadores, acumuladores, funciones y subprocesos.

Estos ejercicios permitieron fortalecer el pensamiento lógico, comprender el funcionamiento de los algoritmos y aprender a organizar soluciones mediante componentes reutilizables.