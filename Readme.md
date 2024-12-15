<div align="center">
<table>
    <theader>
        <tr>
            <td><img src="https://github.com/rescobedoq/pw2/blob/main/epis.png?raw=true" alt="EPIS" style="width:50%; height:auto"/></td>
            <th>
                <span style="font-weight:bold;">UNIVERSIDAD NACIONAL DE SAN AGUSTIN</span><br />
                <span style="font-weight:bold;">FACULTAD DE INGENIERÍA DE PRODUCCIÓN Y SERVICIOS</span><br />
                <span style="font-weight:bold;">DEPARTAMENTO ACADÉMICO DE INGENIERÍA DE SISTEMAS E INFORMÁTICA</span><br />
                <span style="font-weight:bold;">ESCUELA PROFESIONAL DE INGENIERÍA DE SISTEMAS</span>
            </th>
            <td><img src="https://github.com/rescobedoq/pw2/blob/main/abet.png?raw=true" alt="ABET" style="width:50%; height:auto"/></td>
        </tr>
    </theader>
    <tbody>
        <tr><td colspan="3"><span style="font-weight:bold;">Formato</span>: Guía de Práctica de Laboratorio</td></tr>
        <tr><td><span style="font-weight:bold;">Aprobación</span>:  2022/03/01</td><td><span style="font-weight:bold;">Código</span>: GUIA-PRLD-001</td><td><span style="font-weight:bold;">Página</span>: 1</td></tr>
    </tbody>
</table>
</div>

<div align="center">
<span style="font-weight:bold;">PROYECTO</span><br />
</div>


<table>
<theader>
<tr><th colspan="6">INFORMACIÓN BÁSICA</th></tr>
</theader>
<tbody>
<tr><td>ASIGNATURA:</td><td colspan="5">Programación Web 1</td></tr>
<tr><td>TÍTULO DEL PROYECTO:</td><td colspan="5">EPISx</td></tr>
<tr>
<td>NÚMERO DE PRÁCTICA:</td><td>07</td><td>AÑO LECTIVO:</td><td>2024 B</td><td>NRO. SEMESTRE:</td><td>II</td>
</tr>
<tr>
<td>FECHA INICIO::</td><td>05-Dic-2024</td><td>FECHA FIN:</td><td>08-Dic-2024</td><td>DURACIÓN:</td><td>48 horas</td>
</tr>
<tr><td colspan="6">ESTUDIANTES:
    <ul>
	<h4>Mijael Leon</h4>
        <h4>Limberg Sarmiento Tico</h4>        
        <h4>Christian Alexander Yana Huanca (Git-Hub)</h4>
    </ul>
</td>
</<tr>
<tr><td colspan="6">DOCENTES:
<ul>
<li>Richart Smith Escobedo Quispe - rescobedoq@unsa.edu.pe</li>
</ul>
</td>
</<tr>
</tdbody>
</table>

# EPISx

[![License][license]][license-file]
[![Downloads][downloads]][releases]
[![Last Commit][last-commit]][releases]

[![Debian][Debian]][debian-site]
[![Git][Git]][git-site]
[![GitHub][GitHub]][github-site]
[![Vim][Vim]][vim-site]
[![Java][Java]][java-site]

#

## OBJETIVOS TEMAS Y COMPETENCIAS

### OBJETIVOS

- Aplicar todo lo aprendido de la asignatura.

### TEMAS
- CRUD
- CGI
- HTML
- CSS
- AJAX
- JSON
- Git
- GitHub

## REPOSITORIO
repositorio en GitHub (Usamos el de Christian Alexander Yana Huanca)
- Creamos un nuevo proyecto en GitHub
    - https://github.com/ChristianAlexYana/Proyecto-PW.git
#

## PROCESO
- echo.pl se sigue el mismo formato que el de la practica

Cargar tabla de registros: Al cargar la página, se realiza una solicitud AJAX (cargarTabla()) para obtener los datos de las mascotas registradas desde un script Perl (read.perl) que devuelve los datos en formato JSON. La información recibida se utiliza para generar y mostrar una tabla HTML con los registros, incluidos los botones para editar o eliminar cada mascota.


- create.perl gestiona el registro de información sobre mascotas en una base de datos MariaDB, respondiendo a solicitudes HTTP y devolviendo resultados en formato JSON:

```bash
 aqui  va codigo
```

Manejo de datos del formulario: Utiliza la librería CGI para manejar los parámetros enviados desde un formulario web (como el nombre, propietario, especie, sexo, fecha de nacimiento y fallecimiento de la mascota). Si no se proporciona la fecha de fallecimiento, se establece como NULL (representado por undef en Perl).

Conexión a la base de datos: Se conecta a una base de datos MariaDB llamada mascotas mediante el módulo DBI, utilizando las credenciales de usuario (root/admin) y la dirección del servidor de la base de datos (dbpets).

Inserción de datos: Prepara y ejecuta una consulta SQL para insertar los datos de la mascota en una tabla pet. Los valores de los parámetros (name, owner, species, sex, birth, death) se pasan como parámetros preparados para evitar inyecciones SQL.

Manejo de errores: Si ocurre un error durante la ejecución de la consulta (por ejemplo, problemas con la conexión o la consulta), se captura con eval y se devuelve un mensaje de error en formato JSON.

Respuesta exitosa: Si la inserción es exitosa, se genera una respuesta JSON que confirma que los datos fueron registrados correctamente, incluyendo la información de la mascota registrada.

Finalización: Una vez ejecutada la consulta, se cierra la declaración SQL ($sth->finish()) y se desconecta de la base de datos.

- delete.perl realiza la eliminación de una mascota de la base de datos:
#

## REFERENCIAS

#

[license]: https://img.shields.io/github/license/rescobedoq/pw2?label=rescobedoq
[license-file]: https://github.com/rescobedoq/pw2/blob/main/LICENSE

[downloads]: https://img.shields.io/github/downloads/rescobedoq/pw2/total?label=Downloads
[releases]: https://github.com/rescobedoq/pw2/releases/

[last-commit]: https://img.shields.io/github/last-commit/rescobedoq/pw2?label=Last%20Commit

[Debian]: https://img.shields.io/badge/Debian-D70A53?style=for-the-badge&logo=debian&logoColor=white
[debian-site]: https://www.debian.org/index.es.html

[Git]: https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white
[git-site]: https://git-scm.com/

[GitHub]: https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white
[github-site]: https://github.com/

[Vim]: https://img.shields.io/badge/VIM-%2311AB00.svg?style=for-the-badge&logo=vim&logoColor=white
[vim-site]: https://www.vim.org/

[Java]: https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white
[java-site]: https://docs.oracle.com/javase/tutorial/


[![Debian][Debian]][debian-site]
[![Git][Git]][git-site]
[![GitHub][GitHub]][github-site]
[![Vim][Vim]][vim-site]
[![Java][Java]][java-site]

[![License][license]][license-file]
[![Downloads][downloads]][releases]
[![Last Commit][last-commit]][releases]
