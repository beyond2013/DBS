import MySQLdb

# create a connection
conn = MySQLdb.connect(host="localhost",
                     user="root",
                     passwd="3rdFeb1978",
                     db="world")

# create a cursor object to execute queries.
cur = conn.cursor()

# Select data from table using SQL query.
cur.execute("Select * from city")

# print the first and second columns
for row in cur.fetchall():
     print row[0], " ", row[1]

# close the connection 
conn.close()

