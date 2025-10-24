USE tienda_zapatillas;
	ALTER TABLE zapatillas
		ADD COLUMN marca VARCHAR(45) NOT NULL,
        ADD COLUMN talla INT NOT NULL;
        
	ALTER TABLE empleados
		MODIFY COLUMN salario float4;
        
	ALTER TABLE clientes
		DROP COLUMN pais;
	
    ALTER TABLE facturas
		ADD COLUMN total_facturas FLOAT NOT NULL;
        
	INSERT INTO zapatillas
		VALUES (1, 'XQYUN', 'Negro', 'Nike', '42'),
			   (2, 'UOPMN', 'Rosas', 'Nike', '39'),
               (3, 'OPNYT', 'Verdes', 'Adidas', '35');
	
	INSERT INTO empleados
		VALUES (1, 'Laura', 'Alcobendas', 25987, '2010-09-03'),
               (2, 'Maria', 'Sevilla', Null, '2001-01-11'),
               (3, 'Ester', 'Oviedo', 30165.98, '2000-11-29');
	
    INSERT INTO clientes
		VALUES (1, 'Monica', 123456789, 'monica@gmail.com', 'calle Felicidad', 'Móstoles', 'Madrid', 28176),
			   (2, 'Lorena', 678809345, 'lorena@gmail.com', 'calle Alegría', 'Barcelona', 'Barcelona', 12346),
               (3, 'Carmen', 677545454, 'carmen@gmail.com', 'calle del Color', 'Vigo', 'Pontevedra', 23456);
               
        
        
        