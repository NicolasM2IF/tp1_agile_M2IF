Feature: US_0002 – Entraîner le CoachIA pour sélectionner les meilleures obligations

En tant que financier expérimenté souhaitant maximiser mes investissements,
Je veux qu’un CoachIA m’aide à choisir automatiquement les meilleures obligations en fonction du rendement,
Afin de constituer un portefeuille optimal tout en respectant mes contraintes de capital et de nombre de titres.

Scenario Outline: sélection des obligations par ordre de rendement
  Given un CoachIA avec un capital de <capital> et un objectif de <nombre> obligations à acheter
  And une liste d'obligations disponibles avec les informations suivantes :
  | nom  | maturite | taux  | nominal |
  | <nom1> | <mat1> | <taux1> | <nominal1> |
  | <nom2> | <mat2> | <taux2> | <nominal2> |
  | <nom3> | <mat3> | <taux3> | <nominal3> |
  When le CoachIA entraîne son algorithme de sélection
  Then il retourne une liste contenant <nb_retournees> obligations
  And les obligations sont triées par rendement décroissant

Examples:
| capital | nombre | nb_retournees | nom1 | mat1 | taux1 | nominal1 | nom2 | mat2 | taux2 | nominal2 | nom3 | mat3 | taux3 | nominal3 |
| 4000    | 2      | 2             | SG   | 8    | 0.003 | 1500     | AXA  | 10   | 0.005 | 2000     | CA   | 6    | 0.002 | 1000     |
| 1500    | 3      | 1             | SG   | 5    | 0.003 | 1500     | AXA  | 10   | 0.005 | 2000     | CA   | 6    | 0.002 | 1000     |

Scenario Outline: aucune obligation ne peut être achetée faute de capital
  Given un CoachIA avec un capital de <capital> et un objectif de <nombre> obligations à acheter
  And une liste d'obligations disponibles avec :
  | nom  | maturite | taux  | nominal |
  | <nom1> | <mat1> | <taux1> | <nominal1> |
  When le CoachIA entraîne son algorithme de sélection
  Then la liste retournée est vide

Examples:
| capital | nombre | nom1 | mat1 | taux1 | nominal1 |
| 500     | 2      | SG   | 5    | 0.004 | 2000     |
