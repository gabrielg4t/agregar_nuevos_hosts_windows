# Agregar nuevos hosts Windows

Permite agregar nuevas líneas al archivo hosts de windows.

- Quita los permisos de sólo lectura al archivo HOSTS
- Agrega las nuevas líneas al archivo.
- Coloca nuevamente los permisos de lectura al archivo HOSTS
- Elimina la cache DNS para cargar nuevamente el HOSTS

+ Para agregar nuestros host o direcciones tenemos que colocarlas despues de ECHO de esta forma:
Ej.

ECHO 127.0.0.1 prueba.com
ECHO 127.0.0.1 youtube.com


# Add new Windows hosts

It allows adding new lines to the windows hosts file.

- Remove read-only permissions to the HOSTS file
- Add the new lines to the file.
- Put the read permissions back to the HOSTS file
- Clear the DNS cache to reload the HOSTS

+ To add our hosts or addresses we have to place them after ECHO in this way:
Ex.

ECHO 127.0.0.1 prueba.com
ECHO 127.0.0.1 youtube.com
