# testVagrant
##Mise en place du vagrantfile

- git pull https://github.com/yanngit/vagrant-cordova
- cd vagrant-cordova
- vagrant up

C'est partit pour CentOs 6.5 + cordova avec VirtualBox

- Username : vagrant
- Password : vagrant

Attention : avant de se logger le système utilise un clavier qwerty ... lors de l'ouverture de la session la configuration du clavier va être modifiée afin de la passer en azerty et par conséquent un second mot de passe est demandé pour root, indiquer "vagrant".

##Mise en place de l'environnement
Dans /home/vagrant se trouve le projet WeatherApp (from github). Celui ci contient un squelette d'application cordova.

Nous allons ajouter une plateforme à notre projet avec la commande suivante qui doit être lancée depuis le répertoire racine du projet (dans notre cas /home/vagrant/WeatherApp)  :

- cordova platforms add android

Ainsi il sera possible de compiler notre application pour la plateforme android. Ensuite il faut mettre à jour le SDK d'android et installer l'API 21 d'android qui est la version de l'API nécessaire à cordova pour build l'application. Pour cela taper la commande suivante : 

- android

Choisir d'installer tools -> android sdk platform-tools ainsi que l'API voulue (içi Android 5.0.1 (api 21))

Maintenant tout est prêt pour la compilation du projet squelette avec la commande suivante :

- cordova build android 

ENJOY ;) 
