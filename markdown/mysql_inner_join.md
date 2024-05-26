# Inner Join or Equi Join

- Following mysql queries perform **inner join** on the **city and country tables** of the **sample world database**.
- Inner join returns only matching rows from both tables


```sql
select city.ID, city.Name, country.Name
from city inner join country
on city.CountryCode = country.Code;
```

## Aliasing

- Qualifying each column with the table name can be error prone if table names are long
- To address this problem we can use **aliasing**, the same join query above can be rewrittne as follows:

```sql
select c.ID, c.Name, ct.Name 
from city as c inner join country as ct 
on c.CountryCode = ct.Code;
```

## Views

- Information provided by join is useful, and it is very common to frequently perform joins.
- Views can be very useful for such cases.
- We can create a view with the following query:

```sql
create view CityCountryName as 
select c.ID, c.Name as CityName, ct.Name as CountryName 
from city as c inner join country as ct  
on c.CountryCode = ct.Code;
```
