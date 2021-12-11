if true then return true end
--[[
Créateur : Nightmane 
Discord : https://discord.gg/sGP4tw39X8

Merci d'avoir téléchargé mon Housing Systeme. Si jamais vous avez des questions ou des suggestions d'améliorations, n'hésitez pas à poster un commentaire ou à venir sur mon discord. ;)
Le module est actuellement encore en cours de développement.

Si vous souhaitez tester rapidement le module, mettez simplement le template "Housing Package" dans votre hierarchy, et c'est bon. Vous avez directement accès aux 4 maisons de test

=========== SOMMAIRE ==========
1) Que contient ce module ? - Explication rapide de ce que contient le module et les différents dossiers.
2) Utilisation du Housing Systeme - Je vais expliquer comment fonctionne le système, l'activer / le désactiver et les différentes options.
3) Sauvegarde/chargement des données - Exemple simple pour vous montrer comment sauvegarder la maison d'un joueur.
4) Création d'objet - Si vous souhaitez créer vos propre objets.
5) Création de maison : Si vous souhaitez créer vos propres maisons.
6) Problèmes récurents : Si vous avez un problème avec le module, lisez d'abord ceci.


                    ==========================================================
                    =========== PARTIE 1 : Que contient ce module ? ==========
                    ==========================================================

Le Housing System permet aux joueurs de poser toutes sortes d'objets dans des maisons préalablement construites par vous (le créateur). Il est possible de sauvegarder leurs créations afin d'être réutilisées par la suite.
Architecture du pack :

Housing Package
 | - Houses Test : 4 maisons de test disponibles pour que vous puissiez tester le module.
 | - Test : 4 dossiers de test pour activer le mode édition à l'approche des maisons ainsi qu'un script de remplissage automatique de la 4eme maison.
 | - Housing System : Le système en lui même, il contient des property pouvant être modifié pour modifier le module.
     | - BindingSet : Les racourcis du Module, vous pouvez les modifier si vous le désirez.
     | - Data : Les données du module, c'est ici que sont stockés les Objets et les Maisons que vous pouvez créer.
     | - Module : Tous les scripts relatifs aux modules.
     | - Client : Tous les objets relatifs aux clients, tel que les CameraCaptures pour créer les miniatures des objets, ou l'UI.

Vous pouvez trouver dans le dossier "Test" le script "Fill House 4", ce script permet de remplir automatiquement la maison 4 (celle en forme de L)
Cela vous permet de voir ce qu'il est possible de faire avec mon Housing System.
Vous pouvez si vous le souhaiter retirer ce script pour avoir une maison vide.


                    =================================================================
                    ===========  PARTIE 2 : Utilisation du Housing Systeme ==========
                    =================================================================

La 1ère chose à savoir, est de savoir comment activer ou désactiver le systèm. Pour cela, vous devrez utiliser le système d'Events.
Par défaut, l'event à utiliser est "activateHousing" pour l'activer, et "closeHousing" pour le fermer.
Ces events fonctionnent aussi bien côté client que côté serveur et attendent 3 paramètres:
1) Le joueur. (si appellé côté client, alors ce paramètre ne doit pas être mis, le joueur local étant pris directement)
2) L'id de la maison.
3) Le numéro d'étage. (actuellement cette version ne supporte que 1 étage par maison: le rez-de chaussée, ce chiffre doit donc être mis à 1 seulement pour le moment)

ATTENTION : Un seul joueur peut éditer une maison, tant que ce dernier est en mode édition, les autres joueurs ne peuvent pas éditer cette même maison.

Voici un exemple d'utilisation que ce soit côté serveur ou côté client : --]]

-- côté SERVEUR
Events.Broadcast('activateHousing', player, 3, 1) -- Le player correspond au joueur qui doit accéder aux housing, et il souhaite accéder à la maison ayant l'id 3 sur le 1er étage

-- Ou alors côté CLIENT
Events.BroadcastToServer('activateHousing', 3, 1) -- Pas besoin de spécifier le joueur, c'est le joueur local qui sera sélectionné, et on active le housing pour la maison ayant l'id 3 sur le 1er étage

--[[
Le nom de ces Events sont modifiable via les propriété de l'objet "Housing System". (qui se trouve dans le dossier "Housing Package")

Concernant l'event pour fermer le housing, par défaut il s'appelle "closeHousing" et ne prend qu'un paramètre : le joueur (sauf si appellé côté client, dans ce cas il n'y a pas de paramètre).
Il est également possible de savoir quand un joueur quitte le housing système. (que ce soit parce qu'il quitte le jeu, parce qu'il a lui même quitté, ou parce qu'on lui a forcé) 
Pour cela, il suffit d'écouter l'event "playerCloseHousing". (modifiable également dans les propriété de l'objet Housing Systeme)
Cela vous permet de récupérer le joueur qui a quitté, ainsi que l'ID de la maison qu'il était entrain d'éditer.
Cet event ne peut être écouté uniquement que côté serveur.

Petit exemple d'utilisation :
--]]
function playerCloseHousing(player, idHouse)
    print('Le joueur ' .. player.name .. ' a quitter l\'édition de la maison ' .. idHouse)
end

Events.Connect('playerCloseHousing', playerCloseHousing)
-- Ce code affichera un message dans le journal de log à chaque fois qu'un joueur quitte le mode édition de la maison
--[[

Enfin, l'objet "Housing System" a une dernière option appellé "AllowDisableGrid". Par défaut elle est activée et permet d'indiquer si le joueur peut désactiver la grid pour le placement des objets.


Passons à l'API pour les programmeurs, le système vous permet d'avoir accès à quelques fonctions, que ce soit côté client ou serveur, grâce à 2 variables globales accessibles depuis n'importe quel script : 
* _G.Housing_Manager : côté CLIENT, cette API vous permet d'avoir accès à quelque fonction sur l'utilisation actuel du joueur sur le housing.
* _G.Housing_Manager : côté SERVEUR, cette API vous permet de récupérer les données d'une maison (pour la sauvegarder par exemple) ou au contraire de charger directement une maison via uen sauvegarde. Cette API vous permet aussi de savoir si une maison est en cours d'édition.
* _G.Housing_Data : Côté SERVEUR et CLIENT, permet d'avoir quelques informations par rapport aux données du housing. (les maisons et les objects)

Je vais maintenant détailler chaque fonction de l'API.

*** _G.Housing_Manager : CLIENT ***

_G.Housing_Manager.toggleGrid() : Active / Désactive la grid. (l'active si elle est désactivée, la désactive si elle est activée)
_G.Housing_Manager.activateGrid() : Active la grid.
_G.Housing_Manager.isGridActivated() : Permet de savoir si la grid est actuellement activé ou non. (true = activé, false = désactivé)
_G.Housing_Manager.askForClose() : Force la fermeture du housing.


*** _G.Housing_Manager : SERVEUR ***

_G.Housing_Manager.isHouseEditing(idHouse) : Permet de savoir si la maison ayant l'id "idHouse" est actuellement en train d'être édité par un joueur. (retourne true ou false)
_G.Housing_Manager.getHouseEncode(idHouse) : Retourne une table qui correspond à la maison encodé, ayant l'id "idHouse".
_G.Housing_Manager.getHouseFloorEncode(idHouse, floorNumber) : Retourne une chaîne de caractère qui correspond à l'étage encodé pour la maison "idHouse".
_G.Housing_Manager.setHouseEncode(idHouse, code) : Rempli la maison ayant l'id "idHouse" grâce au code précédemment récupéré. (via un getHouseEncode)
_G.Housing_Manager.setHouseFloorEncode(idHouse, floorNumber, code) : Rempli un étage précis de la maison ayant l'id "idHouse" grâce aux code précédemment récupéré. (via un getHouseFloorEncode)

*** _G.Housing_Data : Attention, utilisez ces fonctions uniquement si vous savez ce que vous faites ***

_G.Housing_Data.getHouse(idHouse) : Retourne un objet Lua de type "House" correspondant à la maison ayant l'id "idHouse".
_G.Housing_Data.getAllHouses() : Retourne tous les objets "House" du housing système.
_G.Housing_Data.getObject(idObject) : Retourne une table sur les informations de l'objet désiré.
_G.Housing_Data.getAllObjects() : Retourne une table contenant les informations de tous les objets du système d'Housing actuellement mis en place.
_G.Housing_Data.getAllCategories() : Identique à "getAllObjects", excepté que les objets seront rangés dans une table spécifique à chaque catégorie.


                    ====================================================================
                    ===========  PARTIE 3 : Sauvegarde/Chargement des données ==========
                    ====================================================================

Commençons par la sauvegarde, le plus simple et de sauvegarder la maison une fois que le joueur termine l'édition, pour cela, on utilise l'event "playerCloseHousing".
Cet Event envoi 2 paramètres : le joueur et l'id de la maison qu'il a éditer

Voici comment procédé à la sauvegarde dans les données du joueurs :
(Script à éxécuter côté serveur uniquement)
]]--

function OnPlayerCloseHousing(player, houseId)
    local encodedHouse = _G.Housing_Manager.getHouseEncode(houseId) -- On récupère le code de la maison
    local data = Storage.GetPlayerData(player)
    data.housing = {
        id = houseId,
        encode = encodedHouse
    }
    Storage.SetPlayerData(player, data) -- On sauvegarde le tout
end

Events.Connect('playerCloseHousing', OnPlayerCloseHousing)

--[[
Ce script va automatiquement sauvegarder l'id et le code de la maison que l'utilisateur viens de modifier

Et maintenant, on charge la maison précédement sauvegardée quand le joueur rejoins : 
]]--

function OnPlayerJoined(player)
    local data = Storage.GetPlayerData(player)
    if data.housing ~= nil then
        _G.Housing_Manager.setHouseEncode(data.housing.id, data.housing.encode)
    end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

--[[
Ce script va automatiquement charger la maison lors de la connexion du joueur, cependant attention !
Si 2 joueurs possèdent la même maison, alors cela peut engendrer un conflit, mon housing système ne prend pas ce cas de figure en compte, c'est à vous de faire vos propres vérifications.


                    =====================================================
                    ===========  PARTIE 4 : Créations d'objets ==========
                    =====================================================

Ici je vais vous expliquer comment créer et ajouter vos propres objets.

D'abord, il vous faut créer l'asset de votre objet.
Mais avant tout, il faut que vous sachiez que le module fonctionne par système de "Tile". Une "Tile" possède la taille de 100/100, autrement dit, un "Cube" de scale 1/1. (le scale en Z est libre)
Pour vous aider dans la création d'objet, vous pouvez utiliser les nombreux template de type "placeholder" qui vous permet de créer rapidement un objet de la taille indiqué.
par exemple le template "Housing System - Placeholder - 2x1" vous permet de créer un objet de taille 200 en X et 100 en Y. (vous pouvez évidement le faire plus petit, mais essayez de ne pas laisser trop de vide)
Il y a également des objet de type "Housing System - Placeholder Wall - ..." pour la création d'objet à placer au mur.
Le plus important à retenir quand vous créez des objets, c'est que l'origine de l'objet, donc la "croix trimendisonnel" qui apparait quand vous cliquez sur la racine de l'objet doit OBLIGATOIREMENT se trouver dans le coin inférieur gauche
Essayez avec un template "Placeholder", cliquez dessus, et vous verrez où se trouve son origine. Si l'origine ne se trouve pas dans le coin inférieur gauche, cela pourrais avoir un effet indésirable en jeu.

Maintenant que vous avez crée votre objets, il faut l'intégrer au système. Pour cela, commencez par créer un template de votre objet.
Ensuite, rendez vous dans le dossier :

Housing Package -> Housing System -> Data -> Objects

Ce dossier contient toutes les catégories existantes d'objets. Vous pouvez soit créer votre propre catégorie, soit utiliser une déjà existante.
Pour créer votre catégorie, rien de plus simple. Créer simplement un group/folder avec le nom de votre catégorie, et voilà.
Attention, les catégories ne peuvent pas supporter plus de 64 objets, sans quoi les icones des objets ne fonctionneront pas. (c'est une limitation de Core)

Pour ajouter votre objet, il existe un template que vous pouvez utiliser, intitulé "Housing System - Data - Empty Object". Mettez-le dans la catégorie que vous souhaitez et renommez-le afin qu'il ai le nom de l'objet que vous voulez.
Le nom de ce dernier est important car c'est ce qui sera affiché au joueur quand il devra sélectionner les objets à placer.
Une fois renommé, il faut remplir les propriétés. Je vais expliquer en détail chaque property : 

** GENERAL **
- id : Le plus important, c'est l'identifiant de votre objet. Il doit être UNIQUE et ne doit plus être modifié une fois que votre jeu est en ligne, pour être sr de ne pas utilser un id déjà utilisé par le système, je vous conseil de démarer avec le chiffre 900, car les objets déjà en place utilisent des id allant de 1 à 800.
- asset : Le template de votre objet que vous avez créé plus tôt.
- size : La taille en "Tile" de votre objet. Par exemple, si vous avez utilisé le placeholder "2x1" alors le size de l'objet est de 2 en X, et 1 en Y. Seules des valeur entières sont autorisées, donc pas de nombres à virgule.

** POSITION **
- onFloor : L'objet peut-il être posé sur le sol ?
- onWall : L'objet peut-il être posé sur le mur ?
- onOtherObject : L'objet peut-il être posé sur d'autres objets ?
- canSupportObject : L'objet peut-il supporter d'autres objets? Incompatible avec "onOtherObject".
- isCarpet : L'objet est-il un tapis? Les tapis sont des objet pouvant être posé partout au sol, même sur les tiles rouges, et également sous d'autres objets.
- wallOffsetPositionZ : Pour les objets muraux, cela permet de les descendres ou monter. Par défaut, les objets muraux ont une position en Z égal à 200.

** ASSET CAPTURE **
- scaleMultiplier : Permet de modifier la taille de l'objet sur l'icône.
- positionOffset : Permet de modifier la position de l'objet sur l'icône.
- rotationOffset : Permet de modifier la rotation de l'objet sur l'icône.

Une fois rempli, votre objet est automatiquement ajouté au système. Vous pouvez dès à présent le tester :)


                    =======================================================
                    ===========  PARTIE 5 : Créations de maisons ==========
                    =======================================================

La création de maison est une partie plus complexe, mais le meilleur moyen de l'expliquer est que vous regardiez ce que contient le template "Housing System - House - Placeholder"

Voici un détail de la hiérarchie que TOUTES les maisons doivent obligatoirement avoir:
Vous pouvez vérifier grâce au template "Housing System - House - Placeholder" qui contient une maison de test ne contenant que l'essentiel.

House - Le groupe/dossier contenant votre maison.
| - Floors : Les différent étage de votre maison. (le système ne fonctionnant qu'avec 1 étage pour le moment)
  | - 1 : Le numéro de votre étage.
    | - Walls : Les murs de votre maison. (intérieur et extérieur)
    | - Floor : Le sol (visible ou invisible) de votre maison qui permet de dédecter où il est possible de placer des objets.
    | - Forbidden Floor : Les tiles où l'utilisateur n'aura pas le droit de placer des objets. (très utile à mettre devant les portes par exemple)
    | - Geo : Tout le reste que votre étage peut contenir. (piliers, portes, etc ..)
| - Roof : Le toit de votre maison.
  | - Static Geo : Il est conseillé de mettre tous les mesh de votre toit ici, pour ne pas surcharger les networked.

Je vais maintenant expliquer en détail chaque dossier.

Walls  :
Comme indiqué, ce dossier doit contenir tout les murs de votre maison, que ce soit les murs intérieurs ou extérieurs. C'est sur eux que pourront se poser les objets que l'on peut poser contre les murs.
Il est TRES important de ne pas créer de groupe ou de dossier dans le dossier Walls, tout les mesh que vous déposerez dedans doivent obligatoirement être des enfants directs.
Il est aussi TRES important d'activer la case à cocher "Can Overlap Triggers" si vous ne souhaitez pas voir vos objets traverser les murs.
Enfin, les mur ne peuvent pas avoir des rotations en Z autre que 0, 90, 180 et -90, faite donc attention à les placer correctement.

Floor :
Ce dossier est très important. Il vous permet d'indiquer les endroits où le joueur sera autorisé à poser des objets. Je vous conseil d'utiliser des mesh de type "Plane 1m - One Sided" pour recouvrir votre maison.
Les mesh doivent avoir des scales entier. (donc pas nombre décimaux)
Il est important de noter que toute votre grid sera alignée par rapport à la position et à la rotation du dossier "Floor" en tant que tel ainsi que du 1er enfant de ce dossier.
Ainsi, je vous conseil ceci pour avoir une grid parfaitement alignée : 
1) Le 1er enfant de ce dossier doit obligatoirement être en position X:0, Y:0
2) Tout les enfants de ce dossier ne doivent pas avoir de rotation (X:0, Y:0, Z:0)
3) La position des autres enfants doivent être des mutliple de 50 uniquement. (donc X:0, 50, 100, -50, etc ...)
Grâce à cela, vous obtiendrez une grid parfaitement alignée.

Forbidden Floor : 
Ce dossier focntionne avec les même règle que le "Floor",à l'exception qu'il permet d'interdire de poser des objet sur les case choisi (autre que les tapis)
L'utilsiation la plus courante est de poser des Forbidden Floor devant les portes
Vous devez donc placer des "Plane 1m - One Sided" à l'endroit ou vous désirez interdire le placement d'objets.
De même que pour le dossier Floor, utilisez uniquement des scale entier (pas de nombre décimaux) avec des positions multiples de 50.

Geo : 
Toute la déco de votre maison, comme les pillers par exemple. 
Attention, les objets que vous posez dans ce dossier ne sont pas pris en compte par les objets du housing, 
donc si vous poser un pillier au milieu de votre maison, vous devrez poser une "Forbidden Tile" au même endroit pour éviter que votre objet passe à travers

Roof et Static Geo : 
Le toit de votre maison. Intégrer toutes les mesh dans le dossier "Static Geo" afin de ne pas surcharger les networked. 
Ce dossier permet d'indiquer ce qui va devenir invisible quand le joueur va ouvrir l'édition de la maison.


N'hésitez surtout pas à regarder comment sont construite les maisons de test pour mieux comprendre son fonctionnement. 
Vous pouvez également m'envoyer un message sur Discord si vous avez des questions. :)

Une fois votre maison terminée, il est temps de l'ajouter au système.
Pour cela c'est très simple, rendez vous dans le dossier :

Housing Package -> Housing System -> Data -> Houses

Là, ajoutez simplement un groupe (ou dupliquer un groupe déjà présent) et mettez lui les 2 properties suivante :

id : L'identifiant unique de la maison, attention à ne pas avoir deux fois la même id pour deux maisons différentes.
houseObject : Le groupe qui contient toute votre maison. (donc le groupe qui contient le dossier "Floor" et "Roof")

Et voilà, votre maison a été ajoutée !

Pour la tester, il existe un template de test rapide, prenez donc le template : "Housing System - House - Test"
Mettez-le dans votre hierarchie, cliquez dessus, et modifier la property "houseId" par l'id de votre maison
Placer également ce dernier pour être accessible par votre personnage.
Il ne vous reste plus qu'a lancer la preview, diriger vous vers l'aura bleu, et vous pourrez ainsi commencer à éditer votre maison.


                    ======================================================
                    ===========  PARTIE 6 : Problèmes récurents ==========
                    ======================================================


Pourquoi ma maison n'est pas sauvegardée quand je quitte le jeu ?
    La sauvegarde des maisons n'est pas automatique, c'est au créateur de créer son propre système de sauvegarde.


Je viens de créer un objet, mais je ne le trouve pas quand j'édite une maison, pourquoi ?
    Vous devez ajouter l'objet au système pour le voir, rendez vous dans la partie 4 qui explique comment cela fonctionne.


Quand je souhaite poser un objet dans une maison, son apparence se trouve décallée par rapport a la position de ma souris.
    Cela est surement du au fait que l'origine de votre objet ne se trouve pas dans le coin inférieur gauche. Utiliser bien les templates de type "Housing System - Object - Placeholder XXX" pour créer vos objects
    Placer les mesh à l'intérieur de ce dernier et faites en sorte qu'il ne dépasse pas des boites bleues transparentes. (ils peuvent dépasser en hauteur cependant)


Ma grid est mal alignée !
    Votre grid est alignée par rapport au dossier nommé "Floor", il est donc conseillé de : 
    1) le 1er enfant de ce dossier doit être en position X:0 Y:0 
    2) tout les enfants ne doivent avoir aucune rotation.
    3) Conernant leur position, ils doivent avoir un multiple de 50. (donc -50, 0, 50, 100, etc ...)
    Si votre grid n'est toujours pas alignée en respectant ces règle, tenter de déplacer votre floor de 50pixel jusqu'à avoir un alignement parfait.


Pourquoi mes objets peuvent traverser les murs ?
    Cela est sûrement dû au fait que vous n'avez pas activé la checkbox "Can Overlap Triggers" sur les mesh des murs. Assurez-vous également que tout vos murs soient dans le dossier Walls.
]]--