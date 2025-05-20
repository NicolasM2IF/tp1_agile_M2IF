# Tutoriel : La programmation orientée-objet pour financiers motivés

## Courte histoire pour une mise en jambe efficace

Pierre Chartier, financier expert sur le marché des obligations, en avait marre de jongler avec ses tableurs excel chargés de formules et illisibles. Un soir, après un énième café, il se dit : “Stop, j'en peux plus, il me faut un truc qui calcul tout, tout le temps et à ma place !”. Il se rendit sur internet, à la recherche d'un tutoriel qui le ménera vers un avenir radieux.

## Le tutoriel avec BlueJ
Nous commençons par créer une classe obligation qui représente un actif financier possédant une maturité, un nominal et un taux.
![image](https://github.com/user-attachments/assets/f0ca2f5f-8ae9-4fdc-b42f-d3b8d1cc355d)

Nous pouvons la compiler et l’instancier même sans schéma clair de sa constitution.
![image](https://github.com/user-attachments/assets/05f16ef3-72d2-410a-a4b2-e5898da8e958)


![image](https://github.com/user-attachments/assets/5cc0d42b-a0a7-4351-9b45-1ddfb06a9b7e)

Commençons à mieux définir notre classe.
![image](https://github.com/user-attachments/assets/534a89ae-690a-403b-b38e-8e0276a81aa7)

 ![image](https://github.com/user-attachments/assets/4850f5de-96b5-446c-a125-55b12a42917a)


 

![image](https://github.com/user-attachments/assets/ed01d1c5-3714-4434-a52a-31a4867ded7b)

 
Instancions notre classe et essayons notre méthode GetTaux().

Maintenant pour notre premier test nous créons une classe test, nous la compilons, nous définissons notre première méthode de test pour la méthode GetTaux.

Maintenant nous créons une nouvelle classe Portefeuille, qui va contenir une obligation à un instant t.

Enfin, nous utilisons nos méthodes de la classe Obligation afin de calculer le rendement de notre portefeuille.

Nous pouvons maintenant  créer une nouvelle méthode de test sur la méthode CalculRendement de la classe Portefeuille. 

Maintenant nous pouvons sauvegarder nos instances dans la fixture de la classe test.

Nous allons créer une classe PortefeuilleTemps, constituée d’une collection de portefeuille. Tous contiennent la même obligation mais à des instants différents.

