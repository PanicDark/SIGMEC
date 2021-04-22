CREATE TABLE teclado(ns_teclado VARCHAR (100) PRIMARY KEY,
n_propio VARCHAR(3), estatus ENUM('ACTIVO','LIBRE','MANTENIMIENTO','BAJA'), observaciones TEXT);

CREATE TABLE mouse(ns_mouse VARCHAR (100) PRIMARY KEY,
n_propio VARCHAR(3), estatus ENUM('ACTIVO','LIBRE','MANTENIMIENTO','BAJA'), observaciones TEXT);

CREATE TABLE monitor(ns_monitor VARCHAR (100) PRIMARY KEY,
n_propio VARCHAR(3), estatus ENUM('ACTIVO','LIBRE','MANTENIMIENTO','BAJA'), observaciones TEXT);

CREATE TABLE gabinete(ns_gabinete VARCHAR (100) PRIMARY KEY,
n_propio VARCHAR(3), estatus ENUM('ACTIVO','LIBRE','MANTENIMIENTO','BAJA'), observaciones TEXT);

CREATE TABLE armado(id_armado INT auto_increment PRIMARY KEY,
ns_gabinete VARCHAR (100),
ns_monitor VARCHAR (100),
ns_teclado VARCHAR (100),
ns_mouse VARCHAR (100),
FOREIGN KEY (ns_gabinete) REFERENCES gabinete (ns_gabinete),
FOREIGN KEY (ns_monitor) REFERENCES monitor(ns_monitor),
FOREIGN KEY (ns_teclado) REFERENCES teclado(ns_teclado),
FOREIGN KEY (ns_mouse) REFERENCES mouse(ns_mouse));

CREATE TABLE responsable (
    id_responsable INT PRIMARY KEY auto_increment,
    id_empleado INT
);

CREATE TABLE encargado(
    id_encargado INT PRIMARY KEY auto_increment,
    id_armado INT,
    id_empleado INT,
    mobiepass VARCHAR (6),
    FOREIGN KEY (id_armado) REFERENCES armado(id_armado)
);

CREATE TABLE reporte (
id_reporte INT PRIMARY KEY auto_increment,
id_encargado INT,
id_responsable INT,
observaciones TEXT,
estatus ENUM('PENDIENTE', 'EN PROCESO', 'FINALIZADO'),
fec_hora_P DATETIME,
fec_hora_EP DATETIME,
fec_hora_T DATETIME,
FOREIGN KEY (id_encargado) REFERENCES encargado(id_encargado),
FOREIGN KEY (id_responsable) REFERENCES responsable(id_responsable)
);