We often need to provide information stored in different columns. To do that database systems provide the join functionality.

Joins are of different types e.g. Inner Join or Equi Join, Right Join, Left Join.

Following mysql queries perform inner join on the city and country table of the sample world database.


```sql
select city.ID, city.Name, country.Name
from city inner join country
on city.CountryCode = country.Code;
```

Qualifying each column with the table name can be error prone if table names are long, to address this problem we can use aliasing, the same join query above can be rewrittne as follows:

```sql
select c.ID, c.Name, ct.Name 
from city as c inner join country as ct 
on c.CountryCode = ct.Code;
```

Information provided by join is useful, and it is very common to frequently perform joins. Views can be very useful for such cases. We can create a view with the following query:

```sql
create view CityCountryName as 
select c.ID, c.Name as CityName, ct.Name as CountryName 
from city as c inner join country as ct  
on c.CountryCode = ct.Code;
```
