# MBAN 5560 — Machine Learning & Artificial Intelligence

> A foundations-first tour of modern ML: from the bias-variance tradeoff and cross-validation, through tree-based ensembles and boosting, to neural networks, deep learning, and sequence models — all implemented in R.

**Term:** Winter 2026  •  **Instructor:** Dr. Yigit Aydede  •  **Level:** Graduate (MBAN)

[← Back to dashboard](../../README.md)

---

## 📌 Summary

This course builds machine learning from the ground up, with a consistent emphasis on *why* each method works, not just how to call it. The arc moves from parametric vs. nonparametric thinking and the overfitting problem, into self-learning (cross-validation, bootstrapping, hyperparameter tuning), then through the tree-based family (CART → bagging → random forests → gradient boosting → XGBoost), into interpretability (SHAP), unsupervised learning (clustering), handling imbalanced data (SMOTE), and finally neural networks — covering gradient descent and its stochastic variants, single-hidden-layer networks, activation functions, deep learning with Keras, and recurrent architectures (RNN / LSTM) for time series. All labs are in R using Quarto notebooks.

---

## 🎯 Key concepts

- **Bias-variance tradeoff & overfitting** — why training error always decreases with flexibility, but prediction error has a U-shape; how to diagnose where a model sits on the curve.
- **Self-learning via resampling** — k-fold cross-validation and bootstrapping as the two canonical ways to estimate prediction error and tune hyperparameters without touching the test set.
- **Out-of-bag (OOB) evaluation** — the "free" validation set you get from bootstrap sampling (~35% of observations omitted per draw), used heavily in random forests.
- **Recursive partitioning (CART)** — Gini impurity as a split criterion, greedy top-down tree construction, and why single trees are high-variance.
- **Ensemble learning** — three flavors:
  - *Bagging*: bootstrap + aggregate, reduces variance
  - *Random forests*: bagging + feature subsampling at each split, de-correlates trees
  - *Boosting*: sequential weak learners that focus on previous errors, reduces bias
- **Gradient boosting machines (GBM)** — fitting trees to pseudo-residuals (negative gradients of a loss function), which generalizes boosting beyond squared-error regression.
- **XGBoost** — regularized GBM with L1/L2 penalties on leaf weights, sparsity-aware splits, and approximate quantile sketches for speed.
- **SHAP (Shapley values)** — per-observation, theoretically-grounded feature attributions that satisfy fairness axioms; the modern alternative to permutation importance.
- **Unsupervised learning** — k-means clustering, the elbow method, and the silhouette for choosing k.
- **Imbalanced classification** — oversampling/undersampling and SMOTE (synthetic minority oversampling) for skewed class distributions.
- **Gradient descent** — batch, stochastic (SGD), and mini-batch variants; why the closed-form OLS solution breaks down at scale and what replaces it.
- **Neural networks** — from polynomial regression with fixed bases to ANNs with *adaptive* bases; activation functions (ReLU, sigmoid, tanh); backpropagation as the chain rule.
- **Deep learning** — stacking hidden layers to learn hierarchical representations; regularization (dropout, L2, batch norm); optimizers (SGD, Adam, RMSprop); implemented in R via `keras` + TensorFlow.
- **Sequence models** — RNNs for temporal data, the vanishing-gradient problem, and LSTM memory cells as the fix.
- **Time-series embedding for ML** — using `embed()` to reshape time-series into a feature matrix so non-sequential models (RF, GBM) can do direct multi-step forecasting.

---

## 🛠️ Skills & tools

- **Language:** R
- **Notebook environment:** Quarto (`.qmd` → HTML)
- **Core packages:** `caret`, `class`, `rpart`, `rpart.plot`, `randomForest`, `ranger`, `gbm`, `xgboost`, `smotefamily`, `ROCR`, `pROC`, `cluster`, `neuralnet`, `keras`, `tensorflow`, `fpp3`, `tsibble`
- **Concepts operationalized:** building resampling loops from scratch, grid search, parallel computing (Windows-safe `parallel` workflows), confusion matrices, ROC/AUC, variable importance (MDI, MDA, SHAP), custom gradient descent implementations

---

## 📄 Course materials

Lecture slides and lab notebooks are organized into `lectures/` and `labs/`. Rendered HTML versions of the labs are included as zips alongside each `.qmd`.

### Lectures (slides)

| # | Topic | File |
|---|-------|------|
| 01 | Self-Learning I — CV & Bootstrapping for Regression | [pptx](./lectures/01-self-learning-part1.pptx) |
| 02 | Self-Learning II — Grid Search for Classification | [pptx](./lectures/02-self-learning-part2.pptx) |
| 03 | CART — Classification & Regression Trees | [pptx](./lectures/03-cart-trees.pptx) |
| 04 | Bagging — Bootstrap Aggregation | [pptx](./lectures/04-bagging.pptx) |
| 05 | Random Forest | [pptx](./lectures/05-random-forest.pptx) |
| 06 | Gradient Boosting Machines | [pptx](./lectures/06-gradient-boosting.pptx) |
| 07 | ANN Basics | [pptx](./lectures/07-ann-basics.pptx) |
| 08 | Time-Series Forecasting with ML & ANN | [pptx](./lectures/08-time-series.pptx) |

### Labs (Quarto notebooks)

Numbered in the rough order they were covered. Each `.qmd` is the editable source; the `.html.zip` is the rendered version.

| # | Lab | Theme | Files |
|---|-----|-------|-------|
| 00 | Parametric vs. Nonparametric | Framing | [html](./labs/00-parametric-vs-nonparametric.html.zip) |
| 01 | kNN — Fundamentals | Distance metrics, basic classifier | [qmd](./labs/01-knn-fundamentals.qmd) · [html](./labs/01-knn-fundamentals.html.zip) |
| 02 | kNN — AUC & ROC | Probabilistic kNN, threshold selection | [qmd](./labs/02-knn-auc-roc.qmd) · [html](./labs/02-knn-auc-roc.html.zip) |
| 03 | Self-Learning Methods | k-fold CV, bootstrapping, OOB | [qmd](./labs/03-self-learning-methods.qmd) · [html](./labs/03-self-learning-methods.html.zip) |
| 04 | Parallel Computing | Speeding up resampling loops on Windows | [qmd](./labs/04-parallel-computing.qmd) · [html](./labs/04-parallel-computing.html.zip) |
| 05 | CART — Classification Tree | Gini, recursive partitioning, `rpart` | [qmd](./labs/05-cart-classification-tree.qmd) · [html](./labs/05-cart-classification-tree.html.zip) |
| 06 | Bagging | Bootstrap aggregation on Titanic | [qmd](./labs/06-bagging.qmd) · [html](./labs/06-bagging.html.zip) |
| 07 | Random Forest | `randomForest`, OOB tuning, importance | [html](./labs/07-random-forest.html.zip) |
| 08 | SHAP Values | Shapley-based interpretability | [qmd](./labs/08-shap-values.qmd) · [html](./labs/08-shap-values.html.zip) |
| 09 | Boosting / GBM | AdaBoost, Gradient Boosting theory | [qmd](./labs/09-boosting-gbm.qmd) · [html](./labs/09-boosting-gbm.html.zip) |
| 10 | XGBoost | Regularized GBM | [qmd](./labs/10-xgboost.qmd) · [html](./labs/10-xgboost.html.zip) |
| 11 | GBM vs. XGBoost (Applied) | Head-to-head on Ames Housing | [qmd](./labs/11-gbm-vs-xgboost-applied.qmd) · [html](./labs/11-gbm-vs-xgboost-applied.html.zip) |
| 12 | Clustering (Unsupervised) | k-means, elbow, silhouette, Iris | [qmd](./labs/12-clustering-unsupervised.qmd) · [html](./labs/12-clustering-unsupervised.html.zip) |
| 13 | Imbalanced Data | SMOTE on credit card fraud data | [qmd](./labs/13-imbalanced-data-smote.qmd) · [html](./labs/13-imbalanced-data-smote.html.zip) |
| 14 | Gradient Descent — Intro | Batch GD, recovering OLS | [qmd](./labs/14-gradient-descent-intro.qmd) · [html](./labs/14-gradient-descent-intro.html.zip) |
| 15 | Gradient Descent — SGD & Mini-batch | Stochastic variants for ML | [qmd](./labs/15-gradient-descent-sgd-minibatch.qmd) · [html](./labs/15-gradient-descent-sgd-minibatch.html.zip) |
| 16 | Neural Networks — Intro | From polynomials to adaptive bases | [qmd](./labs/16-neural-networks-intro.qmd) · [html](./labs/16-neural-networks-intro.html.zip) |
| 17 | Activation Functions | ReLU, sigmoid, tanh — when to use which | [qmd](./labs/17-activation-functions.qmd) · [html](./labs/17-activation-functions.html.zip) |
| 18 | Deep Learning with Keras | Multi-layer networks, regression | [qmd](./labs/18-deep-learning-keras.qmd) · [html](./labs/18-deep-learning-keras.html.zip) |
| 19 | Deep Learning — Classification | Binary & multi-class with Keras | [qmd](./labs/19-deep-learning-classification.qmd) · [html](./labs/19-deep-learning-classification.html.zip) |
| 20 | Time-Series Embedding + RF | `embed()` + Random Forest for forecasting | [qmd](./labs/20-timeseries-embedding-rf.qmd) · [html](./labs/20-timeseries-embedding-rf.html.zip) |
| 21 | RNN & LSTM | Sequence models for time series | [qmd](./labs/21-rnn-lstm.qmd) · [html](./labs/21-rnn-lstm.html.zip) |

### Supporting R scripts

Minimal, focused scripts that isolate one concept each — useful for quick refreshers.

- [`overfitting-demo.R`](./notes/scripts/overfitting-demo.R) — the classic U-shaped prediction error curve
- [`cross-validation-basic.R`](./notes/scripts/cross-validation-basic.R) — 10-fold CV from scratch
- [`cv-loess-1.R`](./notes/scripts/cv-loess-1.R) · [`cv-loess-2.R`](./notes/scripts/cv-loess-2.R) · [`cv-loess-3.R`](./notes/scripts/cv-loess-3.R) — progressive refinements of grid search for LOESS
- [`bootstrap-cv-1.R`](./notes/scripts/bootstrap-cv-1.R) · [`bootstrap-cv-2.R`](./notes/scripts/bootstrap-cv-2.R) — bootstrap-based tuning
- [`out-of-bag-demo.R`](./notes/scripts/out-of-bag-demo.R) — showing that ~35% of observations are OOB per bootstrap

### Datasets

Small datasets bundled with the course. See each lab for which dataset it uses.

- `myocarde.csv` — heart-attack outcomes (binary classification, used in CART)
- `bank.csv` — term-deposit subscription (classification)
- `wineQualityReds.csv` / `wineQualityReds_clean.csv` — wine quality
- `creditcard10.RData` — ~10K credit card transactions for SMOTE / imbalanced-data lab
- `toronto2.rds` · `dftoronto.RData` — COVID case counts for time-series labs

> **Note on reproducibility:** some labs reference external datasets (e.g., Ames Housing, Titanic via `PASWR::titanic3`, MNIST via `dslabs`) that aren't bundled here — they're loaded from packages or expected in a `Week4/Assignment/` directory. If a lab doesn't knit, that's usually why.

---

## 💡 Takeaways

**Things I want to remember:**

- The course treats every model as a point on a bias-variance spectrum. Whenever I reach for a method in the future, the first question is still "how flexible is this, and how am I going to tune it?" — not "which library do I call?"
- Resampling is the glue. CV, bootstrap, and OOB are not three separate techniques — they're three ways of fabricating held-out data from the training set, and the same mental model applies everywhere from kNN's k to XGBoost's `nrounds`.
- Trees alone are nearly useless; trees *in ensembles* are state of the art. The conceptual jump from CART → bagging → RF → GBM → XGBoost is the single most useful story arc in the course.
- Neural networks are polynomial regression with *learned* bases. Framing them this way (rather than as a biological analogy) makes activation functions, depth, and backprop feel inevitable rather than arbitrary.
- The "right" interpretability tool depends on the audience. MDI is fast and cheap, MDA (permutation importance) is honest about predictive value, and SHAP is the one that actually survives scrutiny in a stakeholder meeting.

**Gaps I'd want to fill later:**

- Convolutional networks (not covered — the DL labs stop at dense networks)
- Transformers / attention
- Causal inference alongside prediction
- Production / MLOps: versioning, serving, monitoring

---

## 🔗 Related courses

_To be filled in as the dashboard grows._

<!-- When adding later:
- [Course NN](../NN-course-slug/) — shared methods / themes
-->

---

_Last updated: April 2026_
