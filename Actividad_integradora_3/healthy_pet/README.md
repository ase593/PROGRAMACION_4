# Healthy Pet 🐾

Aplicación móvil desarrollada con Flutter y Dart como parte de la asignatura **Desarrollo de Aplicaciones Móviles**.

## Autor

**Alberto Steve Espinoza Espinoza**

## Descripción del proyecto

**Healthy Pet** es un emprendimiento orientado a la elaboración y comercialización de snacks y postres saludables para perros y gatos.

La propuesta nace con el objetivo de ofrecer alternativas diferentes a los productos comerciales tradicionales, utilizando ingredientes naturales y de calidad que permitan complementar de manera responsable la alimentación de las mascotas.

El nombre **Healthy Pet** significa “Mascota Saludable” y representa la finalidad principal del proyecto: contribuir al bienestar de perros y gatos mediante productos nutritivos y elaborados pensando en su cuidado.

El eslogan del emprendimiento es:

**“Amor en cada bocado”**

## Objetivo general

Desarrollar un emprendimiento dedicado a la elaboración y comercialización de snacks y postres saludables para perros y gatos, utilizando ingredientes naturales y de calidad que contribuyan a su bienestar y satisfagan las necesidades de sus dueños.

## Objetivos específicos

* Elaborar snacks y postres para perros y gatos utilizando ingredientes naturales, frescos y de calidad.
* Ofrecer productos variados que respondan a las preferencias y necesidades de las mascotas y sus dueños.
* Promover una alimentación más saludable y responsable.
* Ofrecer productos a precios accesibles y competitivos.
* Dar a conocer el emprendimiento mediante diferentes medios de difusión.

## Misión

La misión de Healthy Pet es elaborar y ofrecer snacks y postres saludables para perros y gatos, utilizando ingredientes naturales y de calidad.

El emprendimiento busca brindar alternativas nutritivas y accesibles que contribuyan al bienestar de las mascotas, promoviendo una alimentación más consciente y responsable por parte de sus dueños.

## Visión

La visión de Healthy Pet es convertirse en un emprendimiento reconocido por ofrecer productos saludables y naturales para mascotas, destacándose por la calidad, innovación y dedicación en cada uno de sus productos.

También busca fomentar una mayor conciencia sobre la importancia de una alimentación adecuada para mejorar el bienestar y la calidad de vida de perros y gatos.

## Aplicación móvil

La aplicación móvil de Healthy Pet fue desarrollada utilizando **Flutter y Dart**.

En esta primera versión se presenta la identidad del emprendimiento, su logotipo, información sobre sus productos y una interfaz sencilla orientada a demostrar los conceptos básicos aprendidos durante la materia.

La pantalla principal presenta:

* Logotipo de Healthy Pet.
* Eslogan “Amor en cada bocado”.
* Descripción del emprendimiento.
* Snacks naturales.
* Postres saludables.
* Ingredientes de calidad.
* Botón interactivo para consultar información adicional.
* Colores personalizados relacionados con la identidad del emprendimiento.

## Tecnologías utilizadas

* Flutter.
* Dart.
* Visual Studio Code.
* Android Studio.
* Android Emulator.
* GitHub.

## Widgets utilizados

Para desarrollar la interfaz se utilizaron diferentes widgets de Flutter, entre ellos:

* `MaterialApp`
* `Scaffold`
* `AppBar`
* `SingleChildScrollView`
* `Column`
* `Row`
* `Card`
* `Container`
* `Text`
* `Image`
* `Icon`
* `Padding`
* `SizedBox`
* `Divider`
* `ElevatedButton`

También se utiliza un `StatefulWidget` para manejar cambios en la interfaz después de una acción realizada por el usuario.

## Paquete externo

Para personalizar la tipografía de la aplicación se instaló el paquete:

`google_fonts`

La instalación se realizó mediante:

```bash
flutter pub add google_fonts
```

Dentro del proyecto se utiliza **Google Fonts** para aplicar una tipografía personalizada a diferentes elementos de texto de Healthy Pet.

## Interacción de la aplicación

La aplicación incorpora un botón denominado:

**Conocer Healthy Pet**

Al presionar este botón se muestra información adicional relacionada con el emprendimiento.

Para controlar este comportamiento se utiliza una variable booleana junto con `setState()`.

Ejemplo:

```dart
setState(() {
  mostrarInformacion = !mostrarInformacion;
});
```

Esto permite actualizar la interfaz cada vez que el usuario presiona el botón.

Cuando la información se encuentra visible, el botón permite volver a ocultarla.

## Colores de Healthy Pet

La aplicación utiliza colores relacionados con la identidad visual del emprendimiento:

* **Verde:** representa naturaleza, bienestar y alimentación saludable.
* **Marrón:** representa ingredientes naturales.
* **Naranja:** representa energía y vitalidad.

Estos colores también están presentes en el logotipo original de Healthy Pet.

## Ejecución del proyecto

Para obtener las dependencias del proyecto se utiliza:

```bash
flutter pub get
```

Para comprobar los dispositivos disponibles:

```bash
flutter devices
```

Para ejecutar la aplicación:

```bash
flutter run
```

También puede ejecutarse directamente sobre un emulador Android utilizando su identificador:

```bash
flutter run -d ID_DEL_EMULADOR
```

## Evidencias

### 1. Configuración de Flutter

Se ejecutó `flutter doctor` para verificar la instalación y configuración del entorno de desarrollo.

![Flutter Doctor](./capturas/01Flutter_Doctor.png)

### 2. Emulador Android

Se verificó el funcionamiento del proyecto Flutter utilizando un dispositivo virtual Android.

![Emulador Android](./capturas/02_Emulador_Android.png)

### 3. Instalación del paquete externo

Se instaló el paquete `google_fonts` mediante la terminal.

![Paquete Externo](./capturas/03_Paquete_Externo.png)

### 4. Google Fonts en pubspec.yaml

El paquete `google_fonts` fue agregado correctamente dentro de las dependencias del proyecto.

![Google Fonts](./capturas/04_google_Fonts.png)

### 5. Aplicación Healthy Pet

La aplicación se ejecuta correctamente en el emulador Android y presenta la identidad visual y los productos principales del emprendimiento.

![Aplicación Healthy Pet](./capturas/05_Aplicacion.png)

### 6. Aplicación instalada en el emulador

Se realizó una comprobación adicional desde el menú de aplicaciones del dispositivo virtual.

![Aplicación en Android](./capturas/06_icono_medihuella.png)

## Estructura principal del proyecto

```text
healthy_pet/
├── android/
├── assets/
│   └── images/
├── capturas/
├── lib/
│   └── main.dart
├── test/
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

## Historial de desarrollo

El proyecto fue desarrollado progresivamente mediante diferentes commits para demostrar las distintas etapas de creación de la aplicación.

Los cambios principales corresponden a:

1. Creación inicial del proyecto Flutter.
2. Incorporación del logotipo y paquete externo.
3. Desarrollo de la interfaz e interacción de Healthy Pet.
4. Incorporación de evidencias y documentación final.

## Estado actual

La primera versión de **Healthy Pet** permite presentar de manera visual el emprendimiento y demostrar conceptos fundamentales del desarrollo de aplicaciones móviles con Flutter.

El proyecto utiliza widgets, imágenes, colores personalizados, un paquete externo y una interacción básica mediante manejo de estado.

Esta aplicación puede continuar evolucionando posteriormente mediante nuevas pantallas y funcionalidades relacionadas con productos, catálogo, pedidos e información para el cuidado y alimentación saludable de mascotas.

## Repositorio

El código fuente completo se encuentra publicado en un repositorio público de GitHub.

**Enlace del repositorio:**
PEGAR AQUÍ EL ENLACE PÚBLICO DEL REPOSITORIO

---

**Healthy Pet — Amor en cada bocado 🐾**

**Autor: Alberto Steve Espinoza Espinoza**


# Actividad Integradora 2
## Desarrollo de una Aplicación Flutter con Navegación y Nuevos Widgets

> **Continuidad del proyecto Healthy Pet**
>
> Esta sección corresponde a la segunda fase del desarrollo de la aplicación Healthy Pet, iniciada en la Actividad Integradora 1.

---

## 1. Continuidad del proyecto

La Actividad Integradora 2 corresponde a la segunda fase del desarrollo de la aplicación móvil **Healthy Pet**.

Esta etapa continúa directamente el proyecto desarrollado durante la Actividad Integradora 1. No se desarrolló una aplicación nueva, sino que se tomó la versión anterior como base para incorporar nuevas funcionalidades, nuevas pantallas, navegación, manejo de estado y una organización más modular del código.

La propuesta y la identidad visual de Healthy Pet se mantienen, incorporando nuevas características para convertir la aplicación inicial en una aplicación móvil más completa e interactiva.

El eslogan del emprendimiento continúa siendo:

**“Amor en cada bocado”**

---

## 2. Objetivo de la Actividad Integradora 2

El objetivo de esta segunda fase fue ampliar la aplicación Healthy Pet mediante la incorporación de:

- Nuevas pantallas.
- Navegación entre pantallas.
- Nuevos widgets de Flutter.
- Organización del código en diferentes carpetas y archivos.
- Manejo básico del estado mediante `setState()`.
- Interacciones con el usuario.
- Uso de `SnackBar`.
- Uso de `AlertDialog`.
- Navegación mediante `NavigationBar`.
- Catálogo de productos.
- Detalle de productos.
- Sistema de favoritos.
- Cambio de cantidades y cálculo de subtotales.
- Personalización del nombre, logotipo, colores e ícono de la aplicación.
- Documentación y evidencias del desarrollo.

---

## 3. Mejoras incorporadas en esta fase

Durante la Actividad Integradora 2 se realizaron las siguientes mejoras sobre la aplicación desarrollada en la primera fase.

### Catálogo de productos

Se incorporó un catálogo visual de productos utilizando una cuadrícula mediante `GridView`.

Los productos disponibles son:

- Snack Natural.
- Galletas de Avena.
- Premios de Pollo.
- Mix Saludable.

Cada producto presenta:

- Imagen.
- Nombre.
- Descripción.
- Precio.
- Botón de favoritos.

### Detalle de producto

Se incorporó una nueva pantalla para consultar la información detallada de cada producto.

El usuario puede consultar:

- Imagen.
- Nombre.
- Precio.
- Descripción.
- Cantidad.
- Subtotal.
- Estado de favorito.
- Información adicional.

### Sistema de favoritos

Se implementó un sistema que permite agregar y eliminar productos de favoritos.

Los productos seleccionados pueden visualizarse posteriormente desde la pantalla **Mis favoritos**.

### Control de cantidad

En la pantalla de detalle se incorporaron botones para aumentar o disminuir la cantidad de productos.

El subtotal se actualiza automáticamente de acuerdo con la cantidad seleccionada.

### Información adicional

Se incorporaron diálogos mediante `AlertDialog` para mostrar información adicional sobre los productos y datos de contacto de Healthy Pet.

---

## 4. Pantallas desarrolladas

En esta segunda fase se implementaron cuatro pantallas principales relacionadas con la temática de Healthy Pet.

### Inicio

Es la pantalla principal de la aplicación.

Presenta:

- Logotipo.
- Nombre Healthy Pet.
- Eslogan.
- Información introductoria.
- Acceso a las diferentes secciones de la aplicación.

### Productos

Presenta el catálogo de productos de Healthy Pet.

La pantalla utiliza un `GridView` para organizar visualmente los productos en dos columnas.

Desde esta pantalla el usuario puede:

- Consultar productos.
- Abrir el detalle de un producto.
- Agregar productos a favoritos.
- Acceder a la pantalla de favoritos.

### Favoritos

Presenta los productos que fueron seleccionados por el usuario.

Desde esta pantalla se puede:

- Consultar los productos favoritos.
- Visualizar su precio.
- Eliminar productos de favoritos.

### Nosotros

Presenta información sobre el emprendimiento Healthy Pet.

Incluye:

- Misión.
- Visión.
- Valores.
- Información de contacto.
- Identidad visual del emprendimiento.

---

## 5. Pantalla de detalle de producto

Además de las cuatro pantallas principales, se incorporó una pantalla adicional para consultar el detalle de cada producto.

La navegación funciona de la siguiente manera:

```text
Inicio
   |
   +-- Productos
          |
          +-- Snack Natural
          +-- Galletas de Avena
          +-- Premios de Pollo
          +-- Mix Saludable
                    |
                    v
             Detalle del producto
```

La pantalla permite modificar la cantidad y visualizar el subtotal correspondiente.

---

## 6. Navegación

Se incorporó navegación utilizando `Navigator`.

Se utilizaron acciones como:

```dart
Navigator.push()
```

para navegar hacia nuevas pantallas y:

```dart
Navigator.pop()
```

para regresar a la pantalla anterior.

También se implementó una navegación principal mediante `NavigationBar`.

La aplicación permite acceder directamente a:

- Inicio.
- Productos.
- Favoritos.
- Nosotros.

Esta navegación facilita el acceso a las principales funcionalidades de la aplicación.

---

## 7. Widgets incorporados

Durante esta segunda fase se incorporaron y utilizaron diferentes widgets de Flutter.

Entre los principales se encuentran:

- `MaterialApp`
- `Scaffold`
- `AppBar`
- `NavigationBar`
- `NavigationDestination`
- `GridView`
- `ListView`
- `ListView.separated`
- `ListTile`
- `Card`
- `CircleAvatar`
- `Divider`
- `Image`
- `Icon`
- `IconButton`
- `ElevatedButton`
- `OutlinedButton`
- `Padding`
- `SizedBox`
- `Expanded`
- `Container`
- `Column`
- `Row`
- `Stack`
- `InkWell`
- `SnackBar`
- `AlertDialog`
- `StatefulWidget`

Con esto se supera ampliamente el requisito mínimo de cinco widgets solicitado en la actividad.

---

## 8. Interacciones implementadas

La aplicación incorpora diferentes interacciones.

### Navegación entre pantallas

El usuario puede desplazarse entre Inicio, Productos, Favoritos y Nosotros mediante la navegación principal.

### Selección de productos

Al tocar una tarjeta del catálogo se abre la pantalla de detalle correspondiente.

### Favoritos

El usuario puede agregar y eliminar productos de favoritos mediante el botón representado por el ícono de corazón.

### Cambio de cantidad

En el detalle del producto se puede aumentar o disminuir la cantidad mediante los botones `+` y `-`.

### Actualización del subtotal

El subtotal se recalcula automáticamente según la cantidad seleccionada.

### SnackBar

Se utiliza `SnackBar` para informar al usuario cuando un producto:

- Es agregado a favoritos.
- Es eliminado de favoritos.

### AlertDialog

Se utiliza `AlertDialog` para mostrar información adicional y datos de contacto.

---

## 9. Manejo del estado mediante setState()

Uno de los requisitos principales de la Actividad Integradora 2 fue implementar una funcionalidad que modificara información en pantalla utilizando `setState()`.

Healthy Pet utiliza `setState()` principalmente para controlar el estado de los productos favoritos.

Ejemplo:

```dart
setState(() {
  productos[indice].favorito =
      !productos[indice].favorito;
});
```

Cuando el usuario presiona el botón de favoritos, el estado cambia entre:

- Producto no seleccionado.
- Producto seleccionado.

La interfaz se reconstruye automáticamente mostrando el nuevo estado.

También se utiliza `setState()` para controlar la cantidad:

```dart
setState(() {
  cantidad++;
});
```

De esta forma el usuario puede modificar la cantidad y observar inmediatamente el nuevo subtotal.

---

## 10. Organización del proyecto

A diferencia de la primera versión, en esta fase se reorganizó el código para evitar concentrar toda la aplicación en `main.dart`.

La estructura actual es:

```text
healthy_pet/
|
+-- android/
|
+-- assets/
|   +-- images/
|       +-- logo_healthy_pet.png
|       +-- snack_natural.png
|       +-- galletas.png
|       +-- premios.png
|       +-- mix_saludable.png
|
+-- capturas/
|
+-- capturas2/
|
+-- lib/
|   +-- data/
|   |   +-- productos_data.dart
|   |
|   +-- models/
|   |   +-- producto.dart
|   |
|   +-- screens/
|   |   +-- inicio_screen.dart
|   |   +-- productos_screen.dart
|   |   +-- favoritos_screen.dart
|   |   +-- nosotros_screen.dart
|   |   +-- detalle_producto_screen.dart
|   |   +-- principal_screen.dart
|   |
|   +-- theme/
|   |   +-- tema_app.dart
|   |
|   +-- widgets/
|   |   +-- producto_card.dart
|   |
|   +-- main.dart
|
+-- test/
|   +-- widget_test.dart
|
+-- pubspec.yaml
+-- pubspec.lock
+-- README.md
```

La organización permite separar las responsabilidades del proyecto en:

- `models`: modelos de datos.
- `data`: información inicial de los productos.
- `screens`: pantallas de la aplicación.
- `widgets`: componentes reutilizables.
- `theme`: configuración visual.
- `assets`: imágenes y recursos.
- `capturas2`: evidencias de la Actividad Integradora 2.

---

## 11. Modelo de producto

Los productos se manejan mediante el modelo:

`Producto`

Este modelo contiene información como:

- Nombre.
- Descripción.
- Precio.
- Imagen.
- Estado de favorito.

Los datos iniciales se encuentran separados en:

`lib/data/productos_data.dart`

Esto permite mantener separada la información de los productos de las pantallas.

---

## 12. Widget reutilizable ProductoCard

Para evitar repetir código en el catálogo se creó el widget:

`lib/widgets/producto_card.dart`

Este componente se encarga de representar visualmente cada producto.

El widget utiliza:

- `Card`.
- `InkWell`.
- `Image`.
- `IconButton`.
- `Expanded`.
- `Stack`.
- `Text`.
- `Padding`.

Además permite navegar hacia el detalle del producto al tocar la tarjeta.

---

## 13. Paquete externo

Se utilizó el paquete externo:

`google_fonts`

El paquete permite utilizar tipografías personalizadas dentro de la aplicación.

La dependencia forma parte del archivo:

`pubspec.yaml`

y se incorporó mediante:

```bash
flutter pub add google_fonts
```

Su utilización permite mantener una presentación visual personalizada y coherente con la identidad de Healthy Pet.

---

## 14. Personalización de la aplicación

La aplicación mantiene la identidad visual desarrollada durante la Actividad Integradora 1 y la amplía en esta segunda fase.

### Nombre

La aplicación se identifica como:

**Healthy Pet**

### Eslogan

**Amor en cada bocado**

### Logotipo

Se utiliza el logotipo de Healthy Pet como imagen representativa.

Ubicación:

`assets/images/logo_healthy_pet.png`

### Imágenes de productos

Se incorporaron imágenes específicas para:

- Snack Natural.
- Galletas de Avena.
- Premios de Pollo.
- Mix Saludable.

### Colores

Se mantienen tonalidades relacionadas con:

- Naturaleza.
- Bienestar.
- Alimentación saludable.
- Productos naturales.

Los estilos principales se centralizan en:

`lib/theme/tema_app.dart`

### Launcher Icon

Se personalizó el ícono de la aplicación Android utilizando el logotipo de Healthy Pet.

El ícono personalizado fue comprobado directamente en el menú de aplicaciones del emulador Android.

---

## 15. Evidencias de la Actividad Integradora 2

Las evidencias de esta segunda fase se encuentran organizadas en:

`capturas2/`

### Pantalla principal

![Pantalla principal](capturas2/02_pantalla_inicio.png)

### Catálogo de productos

![Catálogo de productos](capturas2/03_catalogo_productos.png)

### Detalle del producto

![Detalle del producto](capturas2/06_detalle_producto.png)

### Producto favorito

![Producto favorito](capturas2/08_producto_favorito.png)

### Mis favoritos

![Mis favoritos](capturas2/09_mis_favoritos.png)

### Cambio de cantidad

![Cambio de cantidad](capturas2/11_cantidad_producto.png)

### AlertDialog

![AlertDialog](capturas2/12_alertdialog_producto.png)

### Pantalla Nosotros

![Pantalla Nosotros](capturas2/14_pantalla_nosotros.png)

### Navegación principal

![Navegación principal](capturas2/16_navegacion_principal.png)

### Productos mediante NavigationBar

![Productos mediante NavigationBar](capturas2/17_productos_navigationbar.png)

### Launcher Icon

![Launcher Icon](capturas2/18_icono_launcher.png)

---

## 16. Historial de desarrollo de la Actividad Integradora 2

El desarrollo de esta segunda fase se realizó progresivamente mediante commits independientes.

### Commit 1
Preparar base de Healthy Pet para Actividad Integradora 2.

### Commit 2
Crear nueva interfaz principal de Healthy Pet.

### Commit 3
Crear catálogo visual de productos.

### Commit 4
Implementar navegación entre pantallas.

### Commit 5
Crear detalle e interacción de productos.

### Commit 6
Implementar favoritos con `setState()`.

### Commit 7
Agregar cantidad y `AlertDialog` al detalle.

### Commit 8
Mejorar pantalla Nosotros e información de contacto.

### Commit 9
Implementar navegación principal de la aplicación.

### Commit 10
Actualizar documentación y finalizar Actividad Integradora 2.

---

## 17. Ejecución del proyecto

Para obtener las dependencias:

```bash
flutter pub get
```

Para verificar los dispositivos disponibles:

```bash
flutter devices
```

Para analizar el proyecto:

```bash
flutter analyze
```

Para ejecutar la aplicación:

```bash
flutter run
```

También puede ejecutarse directamente sobre el emulador Android:

```bash
flutter run -d emulator-5554
```

La aplicación fue comprobada utilizando un emulador Android.

---

## 18. Resultado de la Actividad Integradora 2

Al finalizar esta segunda fase, Healthy Pet cuenta con una aplicación móvil más completa que la versión desarrollada durante la Actividad Integradora 1.

Las principales mejoras son:

- Cuatro pantallas principales.
- Pantalla adicional de detalle de producto.
- Navegación mediante `Navigator`.
- Navegación mediante `NavigationBar`.
- Catálogo de productos.
- Sistema de favoritos.
- Manejo de estado mediante `setState()`.
- Control de cantidades.
- Cálculo de subtotales.
- `SnackBar`.
- `AlertDialog`.
- Widgets reutilizables.
- Organización modular del código.
- Imágenes de productos.
- Logotipo.
- Launcher Icon personalizado.
- Paquete externo `google_fonts`.
- Evidencias documentadas.

---

## 19. Continuidad del proyecto

La Actividad Integradora 2 representa la segunda fase del desarrollo de Healthy Pet.

El proyecto mantiene la base conceptual, identidad visual y funcionalidad desarrollada durante la Actividad Integradora 1 y amplía progresivamente sus características.

La aplicación continuará evolucionando en futuras actividades académicas, manteniendo la estructura desarrollada en esta fase y agregando nuevas funcionalidades sobre la versión actual.

La siguiente etapa del proyecto corresponderá a la **Actividad Integradora 3**, en la cual se continuará trabajando sobre esta misma aplicación.

---

## Healthy Pet 🐾

**Amor en cada bocado**

**Actividad Integradora 2 — Desarrollo de Aplicaciones Móviles**

Autor: **Alberto Steve Espinoza Espinoza**

