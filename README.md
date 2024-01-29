# README
Este proyecto es una aplicación básica de ASP.NET Core MVC que realiza operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en una entidad `Usuario`. La aplicación utiliza Entity Framework Core para interactuar con una base de datos y proporciona vistas para crear, editar, eliminar y mostrar detalles de un usuario.

## Configuración

1. **Configuración de la Base de Datos:**
   - La aplicación está configurada para usar Entity Framework Core con una base de datos SQL Server.
   - La cadena de conexión está actualmente comentada en la clase `MvccrudContext`. Descomenta y configura la cadena de conexión según sea necesario. Se recomienda almacenar información sensible, como cadenas de conexión, de manera segura, fuera del código fuente.

2. **Migración de la Base de Datos:**
   - Una vez que la cadena de conexión esté configurada, puedes utilizar las migraciones de Entity Framework Core para crear la base de datos. Abre una terminal en el directorio del proyecto y ejecuta:
     ```bash
     dotnet ef migrations add InitialCreate
     dotnet ef database update
     ```

3. **Ejecutar la Aplicación:**
   - Compila y ejecuta la aplicación utilizando Visual Studio o el siguiente comando en la terminal:
     ```bash
     dotnet run
     ```

   La aplicación debería ser accesible en `https://localhost:5001` (o `http://localhost:5000`).

## Estructura del Proyecto

- **Modelos:**
  - `MvccrudContext`: Representa el contexto de la base de datos e incluye configuraciones para la entidad `Usuario`.
  - `Usuario`: Representa la entidad de usuario con propiedades como `Id`, `Nombre`, `Fecha` y `Clave`.

- **Vistas:**
  - `Create.cshtml`: Vista para crear un nuevo usuario.
  - `Delete.cshtml`: Vista para confirmar y eliminar un usuario.
  - `Details.cshtml`: Vista para mostrar detalles de un usuario.
  - `Edit.cshtml`: Vista para editar un usuario existente.
  - `Index.cshtml`: Vista para listar todos los usuarios con opciones para editar, eliminar y ver detalles.

## Uso

- **Crear un Usuario:**
  - Navega al enlace "Crear Nuevo" en la página de índice.
  - Completa los detalles del usuario y haz clic en "Crear".

- **Editar un Usuario:**
  - Haz clic en el botón "Editar" junto al usuario en la página de índice.
  - Modifica los detalles del usuario y haz clic en "Guardar".

- **Ver Detalles:**
  - Haz clic en el botón "Detalles" junto al usuario en la página de índice.

- **Eliminar un Usuario:**
  - Haz clic en el botón "Eliminar" junto al usuario en la página de índice.
  - Confirma la eliminación en la página siguiente.

- **Listar Usuarios:**
  - La página de índice muestra una tabla con todos los usuarios, incluyendo opciones para editar, ver detalles y eliminar cada usuario.

**Nota:** Las vistas de la aplicación utilizan Bootstrap para el estilo y asumen que Bootstrap está disponible. Si no es así, es posible que necesites incluir la biblioteca Bootstrap para un estilo adecuado.
