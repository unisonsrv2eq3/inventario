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
    numero_serie    VARCHAR(50)  NOT NULL UNIQUE,
    estado          ENUM('Disponible','En uso','En mantenimiento', 'Fuera de servicio') NOT NULL DEFAULT 'Disponible',
    fecha_registro  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Registros de ejemplo (datos ficticios)
INSERT INTO equipos (nombre, tipo, numero_serie, estado) VALUES
('Computadora de escritorio 01', 'Computadora', 'CCTN-PC001', 'En uso'),
('Laptop de capacitación 01', 'Laptop', 'CCTN-LT001', 'Disponible'),
('Impresora de oficina 01', 'Impresora', 'CCTN-IMP001', 'En mantenimiento'),
('Proyector de aula 01', 'Proyector', 'CCTN-PRO001', 'Disponible'),
('Router principal 01', 'Router', 'CCTN-ROU001', 'En uso');
