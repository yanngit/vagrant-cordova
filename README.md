# testVagrant
##Mise en place du vagrantfile

- git pull du projet 
- vagrant up

C'est partit pour CentOs 6.5 + cordova avec VirtualBox

##Mise en place de l'environnement
Dans /home/vagrant se trouve le projet WeatherApp (from github). Celui ci contient un squelette d'application cordova.

Nous allons ajouter une plateforme à notre projet avec la commande suivante :

- cordova platforms add android

Ensuite il faut mettre à jour le SDK d'android et installer l'API 21 d'android. Pour cela taper la commande suivante : 

- android

Choisir d'installer tools -> android sdk platform-tools ainsi que l'API voulue (içi Android 5.0.1 (api 21))

Maintenant tout est prêt pour la compilation du projet squelette avec la commande suivante :

- cordova build android 

ENJOY ;) 
