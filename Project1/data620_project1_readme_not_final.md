# Project 1: Centrality by Position in Euro 2024 Passing Networks

**Joao De Oliveira**

## Question
Do goalkeepers, defenders, midfielders and forwards differ in how central they are in their team's passing network? And does a team's centrality pattern relate to the chances it creates?

## Data
[StatsBomb Open Data](https://github.com/statsbomb/open-data): event-level data for all 51 matches of UEFA Euro 2024. The notebook downloads the JSON files directly from GitHub.

- **Network:** one passing network per team per match (starting XI, from kickoff until the first substitution or red card)
- **Nodes:** players, with **position group** as the categorical variable
- **Edges:** completed passes between teammates, weighted by count

## Methods
- Degree centrality, weighted degree (pass share) and eigenvector centrality for 1,100 player-match observations, using networkx
- Group comparisons: ANOVA, Kruskal–Wallis, and pairwise Welch t-tests and Mann–Whitney U tests with Bonferroni correction and Cohen's d
- Robustness checks: one averaged value per player, and full-match networks (including substitutes) adjusted for the minutes players shared on the pitch
- Team-level test of whether defender-heavy passing networks create less xG

## Key findings
- Midfielders connect with the most teammates (highest degree centrality).
- Center backs carry the most passing and have the highest eigenvector centrality.
- Forwards are as peripheral as goalkeepers in passing volume.
- Defender-heavy passing networks did **not** predict less xG or worse results.
- All group orderings hold when the full match is analyzed with minutes-adjusted measures.

## How to run
Open `project1_euro2024_centrality.ipynb` in Google Colab or Jupyter and run all cells (about 150 MB of data is downloaded on the first run). It needs `numpy`, `pandas`, `networkx`, `scipy` and `matplotlib`.

## Video
I will record this after I complete the final version of the project.

*Data: StatsBomb Open Data.*
https://github.com/hudl/open-data 
