
-- ============================================================
--  Script de inicialización de la base de datos "inventario"
--  MySQL lo ejecuta automáticamente SOLO la primera vez,
--  cuando el volumen datos_mysql está vacío.
-- ============================================================

SET NAMES utf8mb4;
USE inventario;

CREATE TABLE IF NOT EXISTS equipos (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    nombre          VARCHAR(100) NOT NULL,
    tipo            ENUM('Laptop','Computadora','Proyector','Impresora','Router') NOT NULL,
    marca           VARCHAR(60) NOT NULL,
    numero_serie    VARCHAR(50) NOT NULL UNIQUE,
    ubicacion       VARCHAR(100) NOT NULL,
    estado          ENUM('Disponible','En uso','En mantenimiento', 'Fuera de servicio') NOT NULL DEFAULT 'Disponible',
    fecha_registro  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Registros de ejemplo (datos ficticios)
INSERT INTO equipos (nombre, tipo, marca, numero_serie, ubicacion, estado) VALUES
('Computadora de escritorio 01', 'Computadora', 'Dell', 'CCTN-PC001', 'Aula 1', 'En uso'),
('Laptop de capacitación 01', 'Laptop', 'Lenovo', 'CCTN-LT001', 'Aula 2', 'Disponible'),
('Impresora de oficina 01', 'Impresora', 'HP', 'CCTN-IMP001', 'Oficina', 'En mantenimiento'),
('Proyector de aula 01', 'Proyector', 'Epson', 'CCTN-PRO001', 'Aula 3', 'Disponible'),
('Router principal 01', 'Router', 'TP-Link', 'CCTN-ROU001', 'Site de redes', 'En uso');

