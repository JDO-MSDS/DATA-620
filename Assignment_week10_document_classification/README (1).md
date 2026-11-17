# Project 4: Document Classification of Math Problems by Subject

**Joao De Oliveira** · DATA 620

## Assignment
Use documents that are already labeled to predict the class of new documents. Instead of the Spambase data, I use competition math problems that are already tagged by subject. I train classifiers on most of them, then predict the subject of problems the model has never seen, including eight new problems I wrote myself.

## Data
The **MATH dataset** (Hendrycks et al., 2021): 12,500 problems from U.S. math competitions (AMC 10, AMC 12, AIME), each labeled with one of 7 subjects: Prealgebra, Algebra, Intermediate Algebra, Number Theory, Counting & Probability, Geometry and Precalculus. I use the copy in OpenAI's `prm800k` GitHub repository (`prm800k/math_splits/train.jsonl` and `test.jsonl`). After removing 1 duplicate, 12,499 problems remain, split into training (9,999) and test (2,500).

## Methods
- Use only the problem text (not the solution)
- Stratified 80/20 train/test split, with the test set used only once, at the end
- TF-IDF features with a math-aware tokenizer that keeps LaTeX commands, single letters, numbers and symbols
- Compare three feature sets with 5-fold cross-validation: default words, words + math tokens, words + math tokens with token pairs
- Compare four classifiers: naive Bayes, logistic regression (maximum entropy), decision tree, linear SVM
- Evaluate the best model on the test set: accuracy, per-subject results, confusion matrix
- Look at the strongest tokens for each subject
- Classify eight new problems I wrote

## Key findings
- **Features:** keeping the math notation and adding token pairs raised cross-validation accuracy from 73.7% to 79.4%.
- **Best classifier:** linear SVM at 79.4% in cross-validation (logistic regression 76.9%, naive Bayes 66.4%, decision tree 64.7%, always-Algebra baseline 23.5%).
- **Test accuracy is 78.7%**, close to the cross-validation estimate, as expected for a test set that wasn't used for any decisions.
- **Prealgebra is the hardest subject** (58.8% recognized). Its problems get confused with every other subject, because what sets prealgebra apart is mostly difficulty, not vocabulary. Precalculus is the easiest (86.0%).
- **New problems:** 5 of my 8 problems were classified correctly, and all 3 misses involve Prealgebra.

## Files
- `project4_math_subject_classifier.ipynb`: code, outputs and analysis
- `README.md`: this file

## How to run
Run all cells in Jupyter or Google Colab. The notebook downloads the data from GitHub (or uses `data/train.jsonl` and `data/test.jsonl` if they are next to the notebook). It takes under a minute and needs `pandas`, `numpy`, `matplotlib` and `scikit-learn`.
