# lost-whalers
connecting java with mysql tutorial

---
jdk stored @: `/usr/lib/jvm`  
installing mysql: `apt-get install mysql-server`  
starting mysql: `sudo service mysql start`  
checking statsus mysql: `sudo service mysql status`  
logging in: `mysql -u root -p`  

---
### challenges 12/26/19

**getting mysql root account password**  
this may be due to me having mysql installed previously - thought I erased it with the `apt-get purge` command?  
in any case I had to find the password for another account from `etc/mysql/debian.cnf`  
then queryed User to change the root password  
**getting jdbc connector working**  
the connector I needed was located at `usr/share/maven-repo/mysql`  
I opted not to use maven, but import the `.jar` for the connector  
    
---
### mysql notes

creating db: `CREATE DATABASE testdb;`  
creating user/password: `CREATE USER 'testuser'@'localhost' INDETIFIED BY 'password';`  
granting rights: `GRANT ALL ON 'testdb.*' TO 'testuser'@'localhost';`  

---
### jdbc notes

Connection instance: `Connection con = DriverManager.getConnection(url, user, password);`  
Statement instance: `Statement st = con.createStatement();`  
ResultSet instance: `ResultSet rs = st.execureQuery(query);`  
index to next row: `rs.next();`  
get result from first column: `rs.getString(1);`
catch: `SQLException`  

---
### general java notes

**try with resources**
declare resources inside parentheses following `try` keyword.  
these resouces will be automatically closed after block runs, regardless or whether exception is generated. 
 
```
try(Connection con = DriverManager.getConnection(url, user, password))
{
    // stuff to try
}
catch(SQLException ex){
    // do this stuff if stuff breaks
}
```
