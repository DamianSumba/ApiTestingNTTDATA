PROYECTO: Pruebas API PetStore con Karate

REQUISITOS:
- Java JDK 11 o superior
- Maven 3.8+
- Karate 1.4.1

INSTALACIÓN:
1. Clonar repositorio:
   git clone <https://github.com/DamianSumba/ApiTestingNTTDATA.git>

2. Ingresar al proyecto:
   cd petstore-karate

EJECUCIÓN:
3. Ejecutar pruebas:
   mvn test

RESULTADOS:
- Los reportes se generan en:
  target/karate-reports/karate-summary.html

DESCRIPCIÓN:
El proyecto realiza pruebas sobre la API PetStore:
- Crear mascota
- Consultar por ID
- Actualizar mascota
- Consultar por estatus

Se utilizan variables dinámicas (petId) para evitar conflictos.
