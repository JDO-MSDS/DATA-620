# High-Frequency Words in Grade-School Math Word Problems

**Joao De Oliveira**

## Corpus
[GSM8K](https://github.com/openai/grade-school-math) (Cobbe et al., 2021): 8,792 grade-school math word problems, each with a step-by-step solution written by a person. Together they contain about 681,000 words. For question 7, the corpus is compared with the [Brown Corpus](https://www.nltk.org/book/ch02.html) (about 1 million words of general American English).

## Questions answered
1. Choose a corpus of interest
2. Number of unique words (with four different definitions compared)
3. How many of the most common words make up half of the corpus
4. The 200 highest-frequency words
5. A graph of their relative frequency
6. Whether the frequencies follow Zipf's law
7. How the corpus differs from general English

## Key findings
- **12,722 unique words** (lowercase letters only; numbers excluded, though they make up 17% of the text).
- **65 words make up half of the corpus**, and they include the core vocabulary of word problems: *total, each, per, how many, half, twice, left, cost*.
- **Zipf's law holds approximately** (slope −0.96 for the top 200 words) but breaks at the tail: there are far fewer rare words than Zipf predicts, because word problems reuse a small, controlled vocabulary.
- **Compared with general English:** quantity words are 12× more common, and money and time words 19× more common, while storytelling words like *said* are about 29× rarer. The vocabulary is about a third the size of general English at the same length.
- **Questions and solutions read differently:** the questions tell a short story ending in "how many...?", while the solutions use reasoning words (*thus, therefore, let x, multiply*).

## Files
- `high_frequency_words_math.ipynb`: code, outputs and analysis
- `README.md`: this file

## How to run
Open the notebook in Google Colab or Jupyter and run all cells. The GSM8K data downloads directly from GitHub, and the Brown corpus and stopwords download through `nltk`. It needs `pandas`, `numpy`, `matplotlib` and `nltk`.
