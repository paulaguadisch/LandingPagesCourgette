## Hey ! Bienvenue à toi correcteur :
Boulot réalisé avec sueur et pls par la team courgette  : Tatijana, Ana, Richard, Paul & Olivier.


### Voici notre boulot :

##### Landing pages :

- Lancer l'app :
Gitclone l'application sur votre ordinateur

Faites un bon vieux bundle install --whithout production des familles pour bien installer tous les gems.

- Lancez le serveur : rails s
Vous arrivez sur une page home au design minimaliste rien que pour vous qui vous donnera accès à trois liens qui sont nos trois landing pages :

	- Landing page étudiants: destinée aux étudiants

	- Landing page entrepreneurs: qui est destinée aux entrepreneurs

	- Landing page reconversion pro: qui est destinée aux personnes en reconversion

�� �� �� IMPORTANT �� �� ��
Pour les landing pages étudiants et entrepreneurs, il vous faut zoomer ou dézoomer (CTRL + scroll) afin de pouvoir afficher le javascript dynamique en haut de page. Nous n'avons pas encore trouvé comment résoudre ce petit beug, veuillez nous excuser...

##### Mailer :

Notre mailer est bien dans notre application, il fonctionne bien: Il envoie un email automatiquement à la personne qui entre son mail dans notre formulaire.

Nous n'avons pas réussi à trouver comment lier les emails collectés sur nos LP avec l'envoie de newsletter, ou comment réussir à atteindre notre database une fois que l'application est en ligne sur Heroku.

##### Actions marketing :

- I. Bot twitter : Il fait une recherche sur les searchterms suivants: formation, reconversion & entreprenariat. On recherche les dernières personnes qui ont twitté avec ces mots clés et on envoie un tweet ciblé avec la bonne landing page.

Voici le lien Twitter: https://twitter.com/ApprendreCoder
On a exécuté 2 tweets pour voir si ça marchait. Notre task marche donc bien mais nous ne les avons pas exécutés longtemps pour promouvoir mais tu pourras test en local

Cibler les noms des comptes (bde, fac, universités, entreprenariat, reconversion). Il envoie ensuite un message ciblé aux comptes qui contiennent ces mots clés et nous leur envoyons un tweet ciblé.

Nous avons utilisé le scheduler d'Heroku pour que les actions se répètent tous les jours afin d'avoir une action sur le long terme.

- II. Bot linkedin: Gros problème ici : Nous n'avons pas réussi à récupérer les token/token secret afin de coder l'api, on s'est prit un joli "try again later"... 
