USE northwind; 

/* Pedidos por empresa en UK:
Desde las oficinas en UK nos han pedido con urgencia que realicemos una consulta a la base de datos 
con la que podamos conocer cuántos pedidos ha realizado cada empresa cliente de UK. 
Nos piden el ID del cliente y el nombre de la empresa y el número de pedidos.
Deberéis obtener una tabla similar a esta:
*/

DESCRIBE customers;

SELECT country
	FROM customers; 
    
SELECT c.customerid AS Identificador, c.companyname AS NombreEmpresa, o.orderid AS NumeroPedidos
	FROM customers AS c
	INNER JOIN orders AS o
		ON c.customerid = o.orderid
	LIMIT 5; 
    
SELECT *
	FROM customers; 

SELECT COUNT(country)
	FROM customers
    GROUP BY country
    HAVING country = 'UK'; 
    
SELECT c.companyname AS NombreEmpresa, c.customerid AS identificador, COUNT(o.orderid) AS NumeroPedidos
	FROM customers AS c
    INNER JOIN orders AS o
		ON c.customerID = o.customerid
	WHERE c.country = 'UK'
    GROUP BY c.customerid, c.companyname; 
    
/* Productos pedidos por empresa en UK por año:
Desde Reino Unido se quedaron muy contentas con nuestra rápida respuesta a su petición anterior 
y han decidido pedirnos una serie de consultas adicionales. La primera de ellas consiste en una query 
que nos sirva para conocer cuántos objetos ha pedido cada empresa cliente de UK durante cada año. 
Nos piden concretamente conocer el nombre de la empresa (CompanyName), el año (OrderDate), y la cantidad de objetos que han pedido (UnitsOnOrder). 
Para ello hará falta hacer 2 joins.
El resultado será una tabla similar a esta: */

SELECT c.companyname AS NombreEmpresa, o.OrderDate AS Año, COUNT(p.UnitsOnOrder) AS NumObjetos
	FROM customers AS c, products AS p
    INNER JOIN orders AS o
		ON o.orderdate = p.unitsonorder
	WHERE c.country = 'UK'
    GROUP BY NombreEmpresa, Año; 

-- Nos da error o tabla vacia. Mistral sugiere de incluir otro JOIN en la query 
    
