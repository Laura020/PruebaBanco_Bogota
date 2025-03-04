# Prueba Técnica: Ingeniero de Datos

## Descripción

Este proyecto es una prueba técnica para el desarrollo de un sistema de gestión bancaria.   <br>    
El objetivo de esta prueba es diseñar e implementar un **Data Warehouse (DWH)** utilizando un **modelo dimensional estrella** para almacenar, procesar y analizar datos relacionados con las transacciones bancarias, clientes y productos financieros.  <br>    
Obteniendo como resultado algunos entregables que se detallan a continuación, adicionalmente estos entregables los encontrarán en la URL del proyecto en GIT y estarán nombrados de la misma manera como se detalla en este documento.
URL GitHub: https://github.com/Laura020/PruebaBanco_Bogota.git
Entregables de documentos a tener en cuenta:
1.	datos_transacciones.csv
2.	datos_transacciones_limpio.csv
3.	datos_transacciones_final.csv


## Contenido
- **Modelo Dimensional**: Diseño de un modelo estrella para el DWH.
- **Tablas de Hechos y Dimensiones**: Estructura que incluye tablas para transacciones, clientes, productos, tiempo y riesgo crediticio.
- **Consultas SQL**: Implementación de consultas SQL para extraer, transformar y cargar datos (ETL).
  
## Estructura del Proyecto

### 1. **Tablas de Dimensiones**
- `dim_cliente`: Información sobre los clientes (ID, nombre, edad, género, segmento de ingresos, historial crediticio).
- `dim_producto`: Detalles de los productos financieros (tipo: cuenta de ahorro, tarjeta de crédito, crédito).
- `dim_tiempo`: Estructura temporal (fecha, mes, trimestre, año).
- `dim_riesgo_crediticio`: Información del score crediticio y nivel de riesgo de los clientes.

### 2. **Tabla de Hechos**
- `transacciones`: Información detallada de cada operación financiera realizada por los clientes, incluyendo montos, tipos de transacción y productos asociados.
