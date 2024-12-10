# MyReads

`MyReads` es un proyecto de ejemplo construido con Flutter que implementa el patrón **BLoC** (Business Logic Component) para demostrar cómo estructurar una aplicación con **buenas prácticas** y una **arquitectura en capas**. Este proyecto está diseñado para ser modular, escalable y fácil de mantener, utilizando los principios de separación de responsabilidades.

[English](./README.md) | [Español](./README.es.md) | [Français](./README.fr.md) | [日本語](./README.jp.md)

## Descripción del Proyecto

El objetivo principal de este proyecto es ilustrar un enfoque práctico para organizar una aplicación Flutter utilizando una arquitectura por capas. Separa las responsabilidades en capas bien definidas para garantizar mantenibilidad y claridad.

Este proyecto simula una aplicación de libros donde los usuarios pueden navegar por varias pantallas, como una lista de libros, búsqueda y detalles de libros.

## Características

- **Arquitectura por Capas**:
  - **Core**: Contiene configuraciones globales como rutas de la aplicación, gestión de temas y utilidades compartidas.
  - **Services**: Gestiona llamadas a la API e integraciones externas, encapsulando la lógica de obtención de datos.
  - **Providers**: Utiliza el paquete `provider` para gestionar el estado y exponer la lógica de negocio.
  - **Screens**: Define la interfaz de usuario para páginas específicas, como la pantalla de inicio y la pantalla de detalles.
  - **Widgets**: Componentes de interfaz de usuario reutilizables para construir diseños modulares.

  ## Capturas de Pantalla

| **Inicio** | **Detalle del Libro** |
|:-----------------------:|:-----------------------:|
| <img src="./screenshots/s1.png" width="200"> | <img src="./screenshots/s2.png" width="200"> |
