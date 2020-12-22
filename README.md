# Back end Entrevista

Ejecutar

```
ejecutar npm install
```

Para levantar el servidor ejecutar

```
npm run start:dev
```

Los endpoints son

crear expediente

```
metodo POST
{
    "id":"aba33201-e8f6-458e-895f-9b36f61r49ep",
    "nombre":"Huatulco",
    "alergiaId":2,
    "tiposSangreId":2
}
http://localhost:3700/api/pasientes
```

buscar expediente

```
METODO POST
{
    "id":"aba33201-e8f6-458e-895f-9b36f61r49ep"
}
http://localhost:3700/api/busqueda
```

consultar todos los expedientes

```
METODO GET
http://localhost:3700/api/pasientes
```

consultar listado de alergias

```
METODO GET
http://localhost:3700/api/alergias
```

consultar listado de tipos de sangre

```
METODO GET
http://localhost:3700/api/tiposDeSangre
```
