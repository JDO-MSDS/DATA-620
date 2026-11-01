# Project 3: Building the Best Name Gender Classifier

**Joao De Oliveira** · DATA 620

## Assignment
Using any of the three classifiers from Chapter 6 of *Natural Language Processing with Python*, and any features we can think of, build the best name gender classifier possible (exercise 6.10.2). Split the Names Corpus into test (500), dev-test (500) and training (the rest). Start from the book's example classifier, improve it step by step using the dev-test set (trying multiple features and feature combinations), then check the final classifier on the test set and compare the two scores.

## Data
The NLTK **Names Corpus**: 7,944 first names (2,943 male, 5,001 female), split into test (500), dev-test (500) and training (6,944).

## Methods
- The book's example classifier (naive Bayes on the last letter), followed by error analysis
- Incremental improvements checked on the dev-test set: longer suffixes, prefixes, shape (length and vowels), letter counts, character n-grams
- All 31 combinations of the 5 feature groups, with naive Bayes and logistic regression
- The three Chapter 6 classifiers (naive Bayes, decision tree, maximum entropy) in NLTK and scikit-learn
- One final evaluation on the test set

## Key findings
- **Best classifier:** maximum entropy (scikit-learn logistic regression) on prefixes + letter counts + n-grams. It scores **86.4% on dev-test**, compared with 76.0% for the book's example.
- **Prefixes gave the biggest single improvement, and n-grams are the most useful feature group.** Decision trees fall behind on rich features.
- **Test accuracy is 83.6%, 2.8 points below dev-test.** This is expected: every choice was made using the dev-test set, which makes its score slightly optimistic. With only 500 names, a gap this size is also within normal sampling variation. The book's untuned example barely drops (76.0% → 75.4%).
- **Accuracy can't reach 100%:** 365 names appear on both the male and female lists, and they cause about half of the remaining errors.

## Files
- `data620_project3_name_gender_classifier.ipynb`: code, outputs and analysis
- `README.md`: this file

## How to run
Open the notebook in Google Colab or Jupyter and run all cells (about 2 minutes). It downloads the corpus with `nltk.download('names')` and needs `nltk`, `scikit-learn`, `pandas`, `numpy` and `matplotlib`.
