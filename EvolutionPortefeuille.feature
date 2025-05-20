Feature : US_0002 Calcul position à un instant donné
En tant que financier
Je veux après avoir enregistré les différentes obligations avec leurs maturités, taux et nominals respectifs. Je souhaite calculer ma position au cours du temps.
Ceci afin de développer mes perspectives d'investissements.

Scenario outline : Création d'un portefeuille avec plusieurs obligations
Given l'enregistrement d'un portefeuille et des obligations
When l'utilisateur la valide
Then le système enregistre le portefeuille

Examples: 
| obligation1  | maturité1 | taux1 | nominal1 |
| obligationSG | 8 ans     | 0.3   | 1500     |
| obligation2  | maturité2 | taux2 | nominal2 |
| obligationBNP| 7 ans     | 0.2   | 2000     |

| portefeuille1  | obligation1 | obligation2  | 
| myportefeuille | obligationSG| obligationBNP|



Scenario outline : Calcul de la position à un certain instant 
Given l'enregistrement d'un portefeuille et d'une date
When l'utilisateur la valide
Then la position en cette date est calculée




Examples: 
| portefeuille1  | date1 |
| myportefeuille | 3     |










