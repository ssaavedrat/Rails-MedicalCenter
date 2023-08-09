# Guía Ejercicios 1 a N en Rails: Centro Médico

Este repositorio contiene un ejercicio de programación diseñado para explorar y practicar cómo manejar relaciones uno a muchos en una aplicación web desarrollada con Ruby on Rails.

## Descripción

El desafío "Centro Médico" es una oportunidad para sumergirse en el mundo de las relaciones uno a muchos en el contexto de una aplicación médica ficticia. En este ejercicio, aprenderás a construir y gestionar un sistema que permite a los médicos y al personal médico registrar pacientes y asignarles tratamientos. Utilizarás las mejores prácticas de desarrollo de Rails para crear una aplicación funcional y bien estructurada.

## Características

* Asignación de Tratamientos: Se ha implementado la capacidad de asignar tratamientos médicos específicos a pacientes individuales. Cada paciente puede tener múltiples tratamientos a lo largo del tiempo.

* Visualización de Datos: La aplicación muestra de manera efectiva la información relevante en las vistas, incluido el último tratamiento asignado a un paciente. Esto brinda una visión clara de la historia médica de cada paciente.

* Diseño Amigable: Se ha utilizado Bootstrap para crear una interfaz de usuario atractiva y fácil de usar. El diseño amigable es esencial para proporcionar una experiencia de usuario positiva.

## Cómo Comenzar

1. Clona este repositorio en tu máquina local:

    ```bash
    git clone https://github.com/tu-usuario/<nombre_repo>.git
    ```

2. Navega al directorio del proyecto:

    ```bash
    cd <nombre_repo>
    ```

3. Instala las gemas y las dependencias:

   ```bash
   bundle install
   ```

4. Configura la base de datos:

   ```bash
   rails db:create
   rails db:migrate
   ```

5. Inicia el servidor:

   ```bash
   rails server
   ```

6. Abre tu navegador y visita `http://localhost:3000` para explorar el proyecto.

## Explorando el Código de Ejemplo

Este repositorio contiene todo el código necesario para explorar la implementación de relaciones uno a muchos en una aplicación Ruby on Rails. Si deseas comprender cómo se establecen y utilizan estas relaciones, cómo se asignan los tratamientos o cómo se presenta la información en las vistas, este proyecto te brinda un ejemplo práctico.
