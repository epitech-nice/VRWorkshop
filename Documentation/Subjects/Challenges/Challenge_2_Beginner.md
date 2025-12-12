---
title:      L'Atelier de Peinture 3D
subtitle:   Corrigez et améliorez une scène VR existante
author:     Alexandre De Freitas Martins (@AlexandreDFM | alexandre.defreitas@epitech.eu)
version:    1.0
---

Dans ce défi, vous allez réparer une application de peinture en réalité virtuelle. Certains outils sont cassés, les contrôles sont inversés et des fonctionnalités manquent. Suivez ce guide pas à pas.

Utilisez le document "L'interface de Unity" pour localiser les fenêtres (Lettres A à H). Utilisez le document "Rig Simulator" pour tester sans casque VR.

\newpage

## Partie 1 : Fixer l'Interface (Canvas)

**Le problème :** Le menu qui permet de changer de forme (Sphère, Cube...) vous suit partout et reste collé à votre visage (comme un HUD). Il devrait être posé dans le monde 3D, à côté du socle.

**La solution :**

- Dans la Fenêtre Hiérarchie (B), trouvez l'objet Canvas (celui qui contient les boutons de forme).
- Dans la Fenêtre Inspecteur (F), cherchez le composant Canvas.
- Changez le Render Mode de Screen Space - Overlay à World Space.
- Ajustez sa Pos (Position) et son Scale (Échelle) pour le placer proprement à côté du socle dans la Vue Scène (D). (Il sera probablement immense au début, réduisez l'échelle !).

\newpage

## Partie 2 : Inversion des Mains

**Le problème :** La palette de couleurs suit votre main droite au lieu de la gauche, et le rayon laser sort de la main gauche au lieu de la droite.

**La solution :**

- Sélectionnez l'objet représentant la Main Gauche (ex: XR Origin > Camera Offset > Left Hand Controller) dans la Hiérarchie (B).
- Dans l'Inspecteur (F), regardez le composant XR Controller (Action-based). Vérifiez les actions assignées (Position/Rotation). Elles pointent probablement vers les actions de la main droite (Right Hand). Changez-les pour utiliser les actions de la main gauche (Left Hand).
- Faites l'inverse pour le Right Hand Controller (Rayon).

::: tip
**Comment tester ?**

- En mode Play :
- Maj Gauche (Left Shift) active la main gauche (Palette).
- Barre Espace active la main droite (Rayon).
- Si la palette bouge quand vous appuyez sur Espace, c'est que c'est encore inversé !
:::

\newpage

## Partie 3 : Logique du Pinceau

**Le problème :** Le pinceau peint quand vous relâchez la gâchette et s'arrête quand vous appuyez. C'est l'inverse de ce qu'on veut.

**La solution :**

- Sélectionnez le Paintbrush (Pinceau) dans la Hiérarchie (B).
- Dans l'Inspecteur (F), cherchez le composant XR Grab Interactable.
- Déroulez la section Interactable Events.
- Regardez les événements Activated (Activé) et Deactivated (Désactivé). Vous verrez que la fonction StartPainting est sur "Deactivated" et StopPainting est sur "Activated". Inversez-les !

\newpage

## Partie 4 : Le Bouton "Moyen" Invisible

**Le problème :** Le bouton pour la taille de pinceau "Moyenne" devient invisible quand on clique dessus, et la taille du trait devient énorme.

**La solution :**

- Sélectionnez le bouton MediumBrushButton dans la Hiérarchie.
- Dans l'Inspecteur, composant Button, regardez la section Colors. Cliquez sur la couleur Pressed Color. Vérifiez la barre "A" (Alpha/Transparence) en bas du sélecteur de couleur. Elle est peut-être à 0. Mettez-la à 255.
- Dans le script BrushController (ou similaire) attaché au bouton, vérifiez la valeur de taille assignée. Elle doit être entre la valeur du "Petit" et du "Grand" bouton.

\newpage

## Partie 5 : Audio 3D

**Le problème :** Le son du pinceau est toujours au volume maximum, même si vous peignez loin de vous.

**La solution :**

- Sur l'objet Paintbrush, trouvez le composant Audio Source.
- Réglez le curseur Spatial Blend complètement vers la droite (sur 3D).
- Déroulez 3D Sound Settings et ajustez la courbe de Rolloff (atténuation) pour que le volume baisse quand la distance augmente.

\newpage

## Partie 6 : Audio de l'Interface

**Le problème :** Les boutons du menu ne font aucun bruit quand on clique dessus.

**La solution :**

- Sur chaque bouton du menu (UI), cherchez l'événement On Click () dans l'Inspecteur.
- Ajoutez une nouvelle action (+). Glissez l'objet qui gère les sons (parfois un AudioManager ou le bouton lui-même s'il a un script de son) dans la case.
- Sélectionnez la fonction PlayQuickSound (ou un script équivalent fourni dans le projet comme ButtonSound.Click).

\newpage

## Partie 7 : Cacher le Socle

**Le problème :** On ne peut pas cacher le socle pour admirer l'œuvre seule.

**La solution :**

- Dans le Canvas du menu, faites Clic-droit > UI > Toggle.
- Placez ce Toggle proprement.
- Dans l'événement On Value Changed du Toggle, assignez l'objet Pedestal.
- Choisissez la fonction GameObject.SetActive (Dynamic Bool) OU utilisez le script ToggleVisibility.Toggle si fourni (regardez les Hints).

\newpage

## Partie 8 & 9 : Défis Experts (Sauvegarde et Rotation)

Ces tâches demandent un peu plus de logique.

**Sauvegarde (Print Mini) :**

- **Concept :** Vous devez créer une copie miniature de votre dessin.
- **Action :**
  - Créez un bouton "Print". Ajoutez-lui un script qui, lorsqu'on clique :
    - Trouve l'objet parent qui contient tous les traits de peinture (ex: DrawingContainer).
    - Utilise Instantiate() pour cloner cet objet.
    - Change le transform.localScale de la copie à (0.1, 0.1, 0.1) (miniature).
    - Place la copie sur la petite table.

**Rotation du Socle :**

- **Concept :** Tourner la sculpture pour peindre derrière.
- **Action :**
  - Ajoutez un Slider (Curseur) dans l'UI.
  - Créez un script simple sur le Socle qui a une fonction `public void RotatePedestal(float value)`.
  - Dans cette fonction, faites `transform.localEulerAngles = new Vector3(0, value, 0);`.
  - Connectez l'événement On Value Changed du Slider à cette fonction. Réglez le Slider de 0 à 360.

Si jamais vous vouliez voir la solution en vidéo, elle est disponible ici :

::: center
[Challenge 2](https://www.youtube.com/watch?v=nN8cF5nJTRg)
:::
