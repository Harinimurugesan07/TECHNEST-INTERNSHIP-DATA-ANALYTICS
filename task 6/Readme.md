Sentiment Analysis of Amazon Product Reviews
📌 Project Overview
This project focuses on building a Sentiment Analysis Model to classify Amazon product reviews into Positive or Negative categories.
The project demonstrates the complete pipeline:

Data preprocessing using Natural Language Processing (NLP) techniques
Feature extraction using TF-IDF Vectorization
Model training using Logistic Regression
Model evaluation with accuracy, precision, recall, and F1-score
🎯 Objectives
Develop a sentiment analysis model to classify Amazon reviews as positive or negative
Utilize NLP techniques to preprocess and analyze textual data
Train, evaluate, and deploy a machine learning model
Provide a reusable pipeline for text classification
🛠 Tools & Libraries
Python – Programming Language
Pandas & NumPy – Data Handling
NLTK – Text preprocessing (tokenization, stopword removal, lemmatization)
Scikit-learn – TF-IDF Vectorization, Logistic Regression, Evaluation metrics
Matplotlib & Seaborn – Visualization
Transformers (Hugging Face) (optional, advanced) – For fine-tuning pre-trained models
📂 Dataset
A sample dataset (amazon_reviews_sample.csv) is included with 10 Amazon reviews.
Dataset format:

review_text	rating
This product is amazing, works perfectly!	5
Terrible quality, broke after one use.	1
Labeling logic:

rating ≥ 4 → Positive (1)
rating ≤ 2 → Negative (0)
rating = 3 → Neutral (ignored)
🚀 Project Workflow
Data Loading & Cleaning

Remove punctuation, HTML tags, URLs
Convert to lowercase
Remove stopwords & lemmatize words
Label Creation

Positive / Negative labels based on rating
Feature Extraction

TF-IDF Vectorizer
Model Training

Logistic Regression classifier
Evaluation

Accuracy, Precision, Recall, F1-score
Confusion Matrix visualization
Prediction

Predict sentiment for new Amazon reviews
📊 Results
Accuracy: ~90% (on sample dataset)
Model successfully classifies positive and negative reviews
