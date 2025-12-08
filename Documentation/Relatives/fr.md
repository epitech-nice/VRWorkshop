# L'interface de Unity

Cette section propose une visite détaillée des fenêtres de l'éditeur les plus courantes et explique comment les utiliser pleinement.

<br>

![Unity Editor Layout](../img/unity-editor-window.png)

<br>

_Les fenêtres les plus courantes sont ici décrites dans leurs positions par défaut._

<br>

- **(A) The Toolbar (La Barre d'outils)** : donne accès à votre compte Unity et aux services Unity Cloud. Elle contient également les contrôles pour le Play mode (Mode jeu), l'historique d'annulation (Undo), Unity Search (Recherche Unity), un menu de visibilité des calques (layers), et le menu de disposition de l'éditeur (Editor layout).

- **(B) The Hierarchy window (La Fenêtre Hiérarchie)** : est une représentation textuelle hiérarchique de chaque GameObject (Objet de jeu) présent dans la Scene (Scène).

    - Note sur le GameObject : C'est l'objet fondamental des scènes Unity, qui peut représenter des personnages, des accessoires, des décors, des caméras, etc. La fonctionnalité d'un GameObject est définie par les Components (Composants) qui y sont attachés.

    - Note sur la Scene : Une Scene contient les environnements et les menus de votre jeu. Pensez à chaque fichier Scene unique comme à un niveau unique. Chaque élément de la Scene possède une entrée dans la hiérarchie, les deux fenêtres sont donc intrinsèquement liées. La hiérarchie révèle la structure de rattachement des GameObjects les uns aux autres.

- **(C) The Game view (La Vue Jeu)** : simule ce à quoi ressemblera votre jeu final rendu à travers les Cameras (Caméras) de votre Scene. Lorsque vous cliquez sur le bouton Play, la simulation commence.

- **(D) The Scene view (La Vue Scène)** : vous permet de naviguer visuellement et d'éditer votre Scene. La Scene view peut afficher une perspective 3D ou 2D, selon le type de Project (Projet) sur lequel vous travaillez.

- **(E) Overlays (Superpositions/Calques)** : contiennent les outils de base pour manipuler la Scene view et les GameObjects qui s'y trouvent. Vous pouvez également ajouter des Overlays personnalisés pour améliorer votre flux de travail.

- **(F) The Inspector window (La Fenêtre Inspecteur)** : vous permet de visualiser et de modifier toutes les propriétés du GameObject actuellement sélectionné. Comme différents types de GameObjects possèdent différents ensembles de propriétés, la disposition et le contenu de la fenêtre Inspector changent chaque fois que vous sélectionnez un GameObject différent.

- **(G) The Project window (La Fenêtre Projet)** : affiche votre bibliothèque d'Assets (Ressources) disponibles pour être utilisés dans votre Project. Lorsque vous importez des Assets dans votre Project, ils apparaissent ici.

- **(H) The status bar (La Barre d'état)** : fournit des notifications concernant divers processus Unity, ainsi qu'un accès rapide aux outils et paramètres associés.
