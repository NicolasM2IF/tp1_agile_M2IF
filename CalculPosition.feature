Feature : US_0002 Calcul position à un instant donné
En tant que financier
Je veux après avoir enregistré les différentes obligations avec leurs maturités, taux et nominals respectifs. Je souhaite calculer ma position au cours du temps.
Ceci afin de développer mes perspectives d'investissements.

Scenario outline : Création d'un portefeuille avec plusieurs obligations
Given des obligations <obligation1> et <obligation2>
When l'utilisateur la valide
Then le système enregistre le portefeuille <portefeuille1> avec <obligation1> et <obligation2>

Examples: 
| obligation1  | 
| obligationSG | 
| obligation2  | 
| obligationBNP| 

| portefeuille1  | obligation1 | obligation2  | 
| myportefeuille | obligationSG| obligationBNP|



Scenario outline : Calcul de la position à un certain instant 
Given un portefeuille <portefeuille1> et une date <date1>
When l'utilisateur la valide
Then la position <position> en cette date est calculée




Examples: 
| portefeuille1  | date1 | position |
| myportefeuille | 3     |          |










