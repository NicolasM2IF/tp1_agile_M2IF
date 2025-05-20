Feature : OBL_0001 Enregistrer les obligations

En tant que financier
Je veux enregistrer les différentes obligations avec leurs maturités, taux et nominals respectifs.
Ceci afin de développer la vision que j'ai de ma position.

Scenario outline : Calcul automatique du rendement à maturité
Given l'enregistrement d'une obligation avec maturité, taux, nominal
When l'utilisateur la valide
Then le rendement est calculé

Examples: 
| obligation1  | maturité1 | taux1 | nominal1 |
| obligationSG | 8 ans     | 0.3   | 1500     |


Scenario outline : Refus d'une obligation à maturité, taux ou nominal négatif
Given l'enregistrement d'une obligation avec maturité, taux, nominal
When l'utilisateur la valide
Then le système la refuse

Examples: 
| obligation1  | maturité1 | taux1 | nominal1 |
| obligationSG | 8 ans     | -0.3   | 1500     |
| obligationSG | 8 ans     |  0.3   |-1500     |
| obligationSG | -8 ans    |  0.3   | 1500     |
