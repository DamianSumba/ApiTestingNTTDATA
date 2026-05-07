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

3. Pruebas
 - Escenarios con datos en el Feature
 - Escenarios con datos en archivo esterno (src/test/java/petstore/data)
 - Escenarios negativos en Feature separado

EJECUCIÓN:
4. Ejecutar pruebas:
   - mvn test (Global) 
   - Ejecutar Runners Individuales (src/test/java/petstore/runners)
   

5. RESULTADOS:
- Los reportes se generan en:
  target/karate-reports/karate-summary.html

DESCRIPCIÓN:
El proyecto realiza pruebas sobre la API PetStore:
- Crear mascota
- Consultar por ID
- Actualizar mascota
- Consultar por estatus

Se utilizan variables dinámicas (petId) para evitar conflictos.
