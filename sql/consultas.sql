-- 1. Antiguedad promedio
SELECT ROUND(AVG(antiguedad), 2) AS antiguedad_promedio
FROM empleados;

-- 2. Ausentismo promedio
SELECT ROUND(AVG(ausencias), 2) AS ausentismo_promedio
FROM empleados;

-- 3. Satisfaccin laboral promedio
SELECT ROUND(AVG(satisfaccion_laboral), 2) AS satisfaccion_promedio
FROM empleados;

-- 4. Sueldo promedio por departamento
SELECT departamento, ROUND(AVG(sueldo), 2) AS sueldo_promedio
FROM empleados
GROUP BY departamento;

-- 5. Distribución por genero
SELECT sexo, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM empleados) AS porcentaje
FROM empleados
GROUP BY sexo;

-- 6. Cantidad total de empleados
SELECT COUNT(*) AS total_empleados FROM empleados;