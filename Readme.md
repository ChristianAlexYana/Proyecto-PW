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
<tr><td>TÍTULO DEL PROYECTO:</td><td colspan="5">Tienda Virtual</td></tr>
<tr>
<td>NÚMERO DE PRÁCTICA:</td><td></td><td>AÑO LECTIVO:</td><td>2024 B</td><td>NRO. SEMESTRE:</td><td>II</td>
</tr>
<tr>
<td>FECHA INICIO::</td><td>07-Dic-2024</td><td>FECHA FIN:</td><td>18-Dic-2024</td><td>DURACIÓN:</td><td>47 horas</td>
</tr>
<tr><td colspan="6">ESTUDIANTES:
    <ul>
	<h4>Mijael Paul Leon Ramos</h4>
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

## Video Youtube Proyecto Final
- Creamos un nuevo proyecto en GitHub
    - https://github.com/ChristianAlexYana/Proyecto-PW.git
#

## PROCESO
- crud-scripts/controller/compras/create.perl

Captura los parámetros email y producto_id enviados desde un formulario web utilizando el módulo CGI, y valida que ambos campos estén presentes. Si falta alguno, devuelve un mensaje de error en formato JSON. Luego, se conecta a una base de datos MariaDB usando DBI, prepara e intenta ejecutar una consulta SQL para insertar los datos en la tabla compras. Si la inserción es exitosa, responde con un mensaje de éxito en formato JSON, y si ocurre algún error durante la conexión o la ejecución, devuelve el error correspondiente. Finalmente, desconecta la base de datos.

```bash
 #!/usr/bin/perl
use strict;
use warnings;
use CGI;
use DBI;
use JSON;

# Crear un objeto CGI para manejar los datos del formulario
my $cgi = CGI->new();

# Capturar los parámetros enviados desde el formulario
my $email     = $cgi->param('email');
my $producto_id      = $cgi->param('producto_id');

# Imprimir el encabezado HTTP para devolver JSON
print $cgi->header('application/json;charset=UTF-8');

# Validar los datos de entrada
if (!$email || !$producto_id ) {
    print to_json({ error => "Todos los campos son obligatorios" });
    exit;
}

# Conectar a la base de datos
my $dsn = "DBI:MariaDB:database=datos;host=dbpets;port=3306";
my $user = "root";
my $password = "admin";

my $dbh = DBI->connect($dsn, $user, $password, { RaiseError => 1, AutoCommit => 1 });
if (!$dbh) {
    print to_json({ error => "Error al conectar a la base de datos: " . DBI->errstr });
    exit;
}

# Consulta SQL para insertar los datos
my $sql = 'INSERT INTO compras (email, producto_id) VALUES (?, ?)';
my $sth = $dbh->prepare($sql);
if (!$sth) {
    print to_json({ error => "Error al preparar la consulta: " . $dbh->errstr });
    $dbh->disconnect();
    exit;
}

# Ejecutar la consulta
eval {
    $sth->execute($email, $producto_id);
};

if ($@) {
    print to_json({ error => "Error durante la inserción: $@" });
} else {
    # Respuesta JSON de éxito
    # Enviar la respuesta JSON de éxito
print to_json({
    exito   => 1,  # Cambiar el campo a 'exito'
    mensaje => "Datos registrados exitosamente",
});

}

# Finalizar la declaración y desconectar
$sth->finish();
$dbh->disconnect();

```
- crud-scripts/controller/compras/read.perl

Conecta a una base de datos MariaDB, ejecuta una consulta SQL que selecciona información de las tablas compras y productos, y devuelve los resultados en formato JSON. La consulta obtiene los detalles de las compras, incluyendo el id, nombre, tipo, precio y url de los productos comprados. Los datos se almacenan en un array y se suman los precios de los productos. Finalmente, el script responde con un mensaje de éxito junto con los datos de los productos y la suma total de los precios, todo en formato JSON.

```bash
 #!/usr/bin/perl
use strict;
use warnings;
use CGI;
use DBI;
use JSON;

# Crear un objeto CGI para manejar los datos del formulario
my $cgi = CGI->new();

# Capturar los parámetros enviados desde el formulario
#my $name    = $cgi->param('name');

# Imprimir el encabezado HTTP para devolver JSON
print $cgi->header('application/json;charset=UTF-8');

# Conectar a la base de datos
my $dbh = DBI->connect("DBI:MariaDB:database=datos;host=dbpets;port=3306", 'root', 'admin', { RaiseError => 1, AutoCommit => 1 })
  or die to_json({ error => "Error al conectar a la base de datos: " . DBI->errstr });

# Consulta SQL para insertar los datos
my $sql = 'SELECT compras.id, productos.nombre, productos.tipo, productos.precio, productos.url from compras JOIN productos ON compras.producto_id = productos.id';
my $sth = $dbh->prepare($sql)
  or die to_json({ error => "Error al preparar la consulta: " . $dbh->errstr });

  

# Ejecutar la consulta
eval {
    $sth->execute()
      or die "Error al ejecutar la consulta: " . $sth->errstr;
};

if ($@) {
    print to_json({ error => "Error durante la inserción: $@" });
} else {

  my @productos;  # Array para los registros
my $suma_precio = 0;
while (my $row = $sth->fetchrow_hashref) {
    push @productos, {
        id     => $row->{id},
        nombre     => $row->{nombre},
        tipo => $row->{tipo},
        precio  => $row->{precio},
        url  => $row->{url},
};
$suma_precio += $row->{precio};
}

# Convertir el array a JSON
my $json = encode_json(\@productos);
    # Respuesta JSON de éxito
    print to_json({
        mensaje => "Datos leidos exitosamente",
        data    => \@productos,
	suma    => $suma_precio,
    });

}

# Finalizar la declaración y desconectar
$sth->finish();
$dbh->disconnect();
```
- 
```bash

```

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
