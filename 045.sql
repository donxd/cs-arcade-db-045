/*Please add ; after each select statement*/
CREATE PROCEDURE userCountries()
BEGIN
    SELECT 
        u.id, 
        IF(c.country IS NULL, 'unknown', c.country) as country
    FROM users u LEFT JOIN cities c ON c.city = u.city
    ORDER BY u.id;
END