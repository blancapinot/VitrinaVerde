
*[Vitrina Verde](Título)

*[Índice](#índice)

*[Página disenada para promocionar productos ecoamigables](#descripción-del-proyecto)

*[Proyecto final para bootcamp Awakelab](#Estado-del-proyecto)

*[El proyecto está configurado de acuerdo a Spring MVC y JPA](#Características-de-la-aplicación-y-demostración)

*[Acceso al proyecto https://github.com/blancapinot/VitrinaVerde](#acceso-proyecto)

*[Spring MVC y JPA](#tecnologías-utilizadas)

*[Blanca Pinot Jara](#personas-desarrolladores)

*[create table Contacto
(
id            bigint auto_increment
primary key,
apellidos     varchar(255) null,
comentarios   varchar(255) null,
email         varchar(255) null,
fueRespondido varchar(255) null,
nombres       varchar(255) null,
rut           varchar(255) null,
telefonos     varchar(255) null
)
engine = MyISAM;

create table Producto
(
id          int auto_increment
primary key,
descripcion varchar(255) null,
idProveedor int          null,
nombre      varchar(255) null,
precio      int          null,
linkImagen  varchar(255) null
)
engine = MyISAM;

create table Proveedor
(
id      int auto_increment
primary key,
email   varchar(255) null,
nombre  varchar(255) null,
rut     int          null,
website varchar(255) null
)
engine = MyISAM;

create table Suscriptor
(
id               int auto_increment
primary key,
email            varchar(255) null,
newsletterStatus bit          not null,
nombre           varchar(255) null
)
engine = MyISAM;

create table Usuario
(
email          varchar(255) not null
primary key,
password       varchar(255) null,
nombreCompleto varchar(255) null,
rol            varchar(255) null,
rut            varchar(255) null
);

create table roles
(
username varchar(255) not null
primary key,
password varchar(255) null,
rol      varchar(255) null
);](#sql)

