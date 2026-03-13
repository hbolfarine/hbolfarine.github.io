# Quiz 8: Model Building for Prediction — Review

## Overall Assessment
The quiz is statistically sound and covers core concepts (prediction vs. understanding, model comparison, omitted variable bias, overfitting, and cross-validation) at an appropriate level. A few grammar and clarity issues are noted below.

---

## Question-by-Question Review

### Q1 — Categorization: Prediction vs. Understanding
**Grammar:** No issues.

**Statistical Soundness:** Mostly sound. "Cross-validation" correctly belongs under prediction. The logistics company scenario and the economist scenario are well-chosen contrasts.

**Issue:** The retail manager scenario ("wants to know exactly how much sales will increase for every $1 spent") is placed under *Models for Understanding*, but it could reasonably be argued as prediction-oriented (forecasting a quantity). A clearer understanding-focused example would reference causal inference or hypothesis testing more explicitly. Minor ambiguity.

---

### Q2 — Multiple Choice: Which model to present to VP of Operations?
**Grammar:** The answer choices are a bit run-on but readable. No major errors.

**Statistical Soundness:** The correct answer (Model 2) is well-justified. Model 1 suffers from multicollinearity risk and none of its predictors are statistically significant individually despite a high F-statistic, making it a poor choice for explanation. Model 2's Experience_Score is highly significant with a tight, interpretable confidence interval. The reasoning in the answer option is sound.

**Minor issue:** The distractors reference "lower RSE" for Model 1 (185.4 vs. 190.2) — this is factually true, but the difference is marginal. The distractor is plausible enough to be a good wrong answer, though a note in an answer key clarifying *why* RSE alone is insufficient here would strengthen pedagogical value.

---

### Q3 — Fill in the Blank: Model 2 vs. Model 3 with Competition Index
**Grammar:** The sentence structure is awkward: *"\_\_ is preferred, since competition index is \_\_ with Experience Score, and \_\_ more of the variation in Monthly Revenue."* The final blank needs the phrase "helps explain" to complete the sentence grammatically, but as written it reads as *"...and helps explain more of the variation"* — the word "more" is already in the stem, making the blank read redundantly. Consider revising to: *"and [blank] more of the variation in Monthly Revenue"* → blank = "helps explain." This works but is slightly clunky.

**Statistical Soundness:** Sound. The scatter plot correctly shows that Competition_Index and Experience_Score are approximately uncorrelated (flat regression line), which justifies adding Competition_Index without multicollinearity concerns. Model 3's improved R² (0.784 vs. 0.635) and lower RSE (142.8 vs. 190.2) support the preference for Model 3.

**Minor issue:** The question says "uncorrelated" but the scatter plot shows a very slight negative trend. Using the word "approximately uncorrelated" or "weakly correlated" would be more precise.

---

### Q4 — Multiple Choice: Reason to keep `adult_pct` in Model 3
**Grammar:** "it's coefficient" should be **"its coefficient"** (possessive, not contraction). This is a clear grammatical error.

**Statistical Soundness:** The correct answer (potential confounder concern) is statistically defensible for a model-for-understanding context. However, the question stem says the VP cares about *explaining why revenue is growing*, and simultaneously states the variable is not significant and barely moves R². Including a non-significant variable for theoretical/confounding reasons is a legitimate modeling decision, but the question would benefit from explicitly framing this as an understanding context, since the answer would be wrong in a prediction context.

---

### Q5 — Multiple Choice: Best model for prediction accuracy
**Grammar:** No issues.

**Statistical Soundness:** Excellent question. The correct answer ("We cannot answer this question based only on in-sample summary measures") directly tests understanding of overfitting and the need for cross-validation or held-out test data. The distractors are all plausible and represent common misconceptions. This is the strongest question in the quiz.

---

## Answer Key

| Q | Type | Correct Answer |
|---|------|----------------|
| 1 | Categorization | **Prediction:** Cross-validation; "A logistics company doesn't care what type of model is built as long as the estimates are accurate within 5 minutes." **Understanding:** "An economist builds a model to see if increasing the minimum wage causes a decrease in employment."; "A retail manager wants to know exactly how much sales will increase for every $1 spent on social media advertising." |
| 2 | Multiple Choice | **Model 2 is preferred** because it isolates the most theoretically sound predictor and provides a reliable confidence interval for Experience Score. |
| 3 | Fill in the Blank | **Model 3** is preferred, since competition index is **uncorrelated** with Experience Score, and **helps explain** more of the variation in Monthly Revenue. |
| 4 | Multiple Choice | **The VP might think that adult percentage is a confounder**, even though it doesn't seem that way in our data. |
| 5 | Multiple Choice | **We cannot answer this question based only on in-sample summary measures.** |

---

## Summary of Issues

| # | Type | Severity | Issue |
|---|------|----------|-------|
| Q1 | Statistical | Minor | Retail manager scenario is ambiguous between prediction and understanding |
| Q3 | Grammar | Minor | Sentence completion is slightly awkward; reads redundantly |
| Q3 | Statistical | Minor | "Uncorrelated" should be "approximately uncorrelated" given the scatter plot |
| Q4 | Grammar | **Moderate** | "it's coefficient" → should be "its coefficient" |
| Q4 | Statistical | Minor | Context (understanding vs. prediction) should be stated more explicitly |
