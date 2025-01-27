1. Configurar la carpeta de Github (Dev Tools > Git)
2. Configurar DocumentRoot (Files & Databases > FTP > sf03)
3. Actualizar versión PHP (Dev Tools > PHP)
4. Cambiar a modo producción en el fichero .env.local 
    y credenciales de acceso a la BBDD (user: lore; pw: 9$hl3c98K)
5. Instalar dependencias (Dev Tools > PHP Composer)
6. Exportar la BBDD local
7. Crear BBDD remota (Files & Databases > Databases)
8. Importar base de datos local al servidor
9. Paso 4
10. Compilar los archivos de esilos, con el SSH del hosting,
    con los comandos:
    ```bash
    cd httpdocs
    php bin/console asset-map:compile
    ```
