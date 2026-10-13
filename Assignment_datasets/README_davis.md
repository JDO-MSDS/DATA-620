# Davis Southern Women: Women, Events and the Ties Between Them

**Joao De Oliveira**

## Question
What can we infer about the relationships between (1) the 18 women and (2) the 14 social events they attended?

## Note
I could not open the first two links of the assignment, so I used the last link and found out what the first two links were referring to.

## Data
The Davis Southern Women dataset (Davis, Gardner and Gardner, *Deep South*, 1941): attendance of 18 women at 14 social events in a town in Mississippi in the 1930s.
- [Description](http://vlado.fmf.uni-lj.si/pub/networks/data/ucinet/ucidata.htm#davis)
- [Dataset (UCINET format)](http://vlado.fmf.uni-lj.si/pub/networks/data/Ucinet/davis.dat)

The notebook loads the same data with `nx.davis_southern_women_graph()`, as in the [networkx example](https://networkx.org/documentation/stable/auto_examples/algorithms/plot_davis_club.html).

## Methods
- Two-mode (bipartite) network of women and events, with 89 attendances
- Projections onto a woman-woman network (weight = shared events) and an event-event network (weight = shared women)
- Louvain community detection on the weighted women's projection
- Weighted degree, eigenvector and betweenness centrality for women; group composition, eigenvector and bipartite betweenness for events
- Attendance matrix reordered by community to show the block structure

## Key findings
- Nearly every pair of women (91%) attended at least one event together, so the number of shared events is what reveals the structure.
- The women form **two groups** (8 and 10 women), each with a core and a periphery. Same-group pairs shared 2.88 events on average, compared with 1.70 across groups.
- **Theresa** is the most central woman and the main bridge between the groups. **Pearl** and **Ruth** sit on the boundary.
- The events split into **Group 1 only (E1–E5)**, **Group 2 only (E10–E14)** and **mixed (E6–E9)**. No woman attended events from both private sets.
- **E8** (14 of 18 women, 7 from each group) and **E9** are the central events that hold the two circles together.

## Files
- `davis_southern_women.ipynb`: code, outputs and analysis
- `README.md`: this file

## How to run
Open the notebook in Google Colab or Jupyter and run all cells. It needs `networkx`, `pandas`, `numpy` and `matplotlib`, and no download is required.
