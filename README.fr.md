# MyReads (Français)

`MyReads` est un projet exemple construit avec Flutter qui implémente le modèle **BLoC** (Business Logic Component) pour démontrer comment structurer une application avec des **bonnes pratiques** et une **architecture en couches**. Ce projet est conçu pour être modulaire, évolutif et facile à maintenir, en utilisant les principes de séparation des responsabilités.

[English](./README.md) | [Español](./README.es.md) | [Français](./README.fr.md) | [日本語](./README.jp.md)

## Description du Projet

L'objectif principal de ce projet est d'illustrer une approche pratique pour organiser une application Flutter en utilisant une architecture par couches. Les responsabilités sont séparées en couches bien définies pour garantir la maintenabilité et la lisibilité.

Ce projet simule une application de livres où les utilisateurs peuvent naviguer à travers plusieurs écrans, tels qu'une liste de livres, une recherche et des détails sur les livres.

## Fonctionnalités

- **Architecture en Couches** :
  - **Core** : Contient des configurations globales comme le routage de l'application, la gestion des thèmes et les utilitaires partagés.
  - **Services** : Gère les appels API et les intégrations externes, encapsulant la logique d'accès aux données.
  - **Providers** : Utilise le paquet `provider` pour gérer l'état et exposer la logique métier.
  - **Screens** : Définit l'interface utilisateur pour des pages spécifiques, telles que l'écran d'accueil et l'écran de détails.
  - **Widgets** : Composants d'interface utilisateur réutilisables pour construire des mises en page modulaires.

## Captures d'Écran

| **Accueil** | **Détail du Livre** |
|:-----------------------:|:-----------------------:|
| <img src="./screenshots/s1.png" width="200"> | <img src="./screenshots/s2.png" width="200"> |