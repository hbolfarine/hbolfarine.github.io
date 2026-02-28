# Review of Mastery Exam A — Grammar, Conceptual Soundness & Solutions

---

## Overall Assessment

The exam is well-structured and covers important topics in applied linear regression: categorical predictors, interaction terms, diagnostics, and influential points. The questions progress logically in difficulty. Below are itemized suggestions followed by a solutions guide.

---

## Grammar & Clarity Suggestions

### Introduction / Preamble

- **"data consist of five hundred paid subscribers"** — grammatically correct (data as plural), but consider "The dataset consists of…" for clarity in a non-technical audience context.
- **"Your job is to understand how different types of workouts, frequency, and experience affect calories burned."** — Clear. No change needed.
- The variable descriptions could benefit from a consistent format. `workout.type` lists sub-types with dashes but the others do not. Consider aligning presentation.

---

### Section 1 — Categorical Variables

**Question 1**

- The statement reads: *"the intercept value of 399.42 indicates the predicted calories burned during aerobic-focused exercise, with an experience of zero."*
- **Conceptual note:** This is correct. Cardio is the reference category and experience = 0 is the baseline. However, an experience level of 0 may not be a meaningful or realistic value. It would be worth noting this to students as a limitation of literal interpretation of the intercept.

**Question 2**

- *"(correct) For two subscribers performing the same workout type, a one-point increase in experience is associated with an expected difference of 534.63 calories burned."*
  - Grammatically and conceptually **correct**. The phrase "expected difference" appropriately signals association rather than causation.
- The distractor *"Increasing a subscriber's experience by one point causes them to burn 534.63 more calories independently of any other factors"* correctly introduces the causation fallacy — good pedagogical choice.
- **Suggestion:** Replace "independently of any other factors" with "regardless of workout type" to make the distractor more precise and directly contrast with the correct answer.

**Question 3**

- *"not supported: Yoga has no effect on burning calories simply because its coefficient is not statistically significant."*
  - Conceptually **correct** to mark this as not supported — absence of evidence is not evidence of absence. Well done.
- *"not supported: For two subscribers with the same experience level, performing High-Intensity Interval Training increases the number of calories burned compared to all other workout types."*
  - Conceptually **correct** — HIIT has a positive and significant coefficient relative to Cardio, but Strength (972.93) > HIIT (599.88), so HIIT does not outperform all workout types.
- *"supported: Given the same experience level, we can conclude that strength based exercise burns more calories than HIIT compared to cardio workouts."*
  - **Grammar issue:** The phrasing "burns more calories than HIIT compared to cardio workouts" is ambiguous. It could be read as saying Strength > HIIT relative to cardio, which is correct (972.93 > 599.88 above baseline), but the sentence structure is confusing. Suggested revision: *"Given the same experience level, strength-based exercise is associated with more calories burned than both HIIT and cardio workouts."*

**Question 4 (Predictions)**

- The three numerical predictions are correct and verifiable:
  - `399.42 + 534.63×3.5 + 972.93 = 3243.54` ✓
  - `399.42 + 534.63×1.2 + 0 = 1040.97` ✓
  - `399.42 + 534.63×2.0 − 158.13 = 1310.55` ✓ (minor rounding to 1310.538)
- No issues here.

---

### Section 1 — Diagnostics (Question 5)

- *"the linearity assumption appears to be satisfied since there is no visible trend in the residuals vs. fitted plot"*
  - **Conceptually sound.** Small caveat: the Residuals vs. Fitted plot in the PDF actually shows a slight curve in the smoother — instructors may want to mention this as borderline rather than clearly satisfied.
- *"equal variance appears to be an issue, as we can observe an uneven spread of the residuals"*
  - **Correct.** The fan-shaped spread in both Residuals vs. Fitted and Scale-Location plots is consistent with heteroscedasticity.
- **Grammar issue:** *"Finally, equal variance appears to be an issue"* — awkward. Suggested revision: *"Finally, the equal variance (homoscedasticity) assumption appears to be violated, as the residuals show increasing spread with larger fitted values."*

---

### Section 2 — Interactions

**Question 6**

- *"The main effect for frequency shows that for each additional cardio workout session, the estimated calories burned increase by 283.74."*
  - **Conceptually correct.** The main effect of frequency applies to the reference category (Cardio) when the interaction terms are included.
- *"This coefficient is statistically significant so we can be confident that there is an effect in the population."*
  - **Minor conceptual note:** Statistical significance does not prove an effect exists; rather, it means the observed result is unlikely under the null hypothesis. Suggested revision: *"This coefficient is statistically significant, providing evidence of an association between frequency and calories burned for cardio workouts in the population."*

**Question 7**

- *"(correct) When gym frequency is zero, there is no evidence of a difference between strength and cardio workouts."*
  - **Correct.** `workout.typeStrength` has p = 0.4743, so at frequency = 0, Strength and Cardio are not statistically distinguishable.
- *"When gym frequency is zero, the differences between the various workouts are statistically significant."*
  - Correctly labeled as incorrect — none of the workout type main effects are significant.
- *"For two subscribers with the same gym attendance, the expected increase in calories burned is 99.49 if one opts for high-intensity training compared to cardio training."*
  - **Conceptual issue:** This is a misleading distractor. The 99.49 coefficient is the **main effect** of HIIT at frequency = 0, not a general expected difference for "the same gym attendance." At any nonzero frequency, the difference depends on the interaction. The distractor could be improved to be more precise about what "same attendance" means in this context.

**Question 8 (Calorie Calculations)**

- HIIT: `(283.74 + 118.59) × 4 = 1649.32` ✓
- Strength: `(283.74 + 207.69) × 4 = 1965.72` ✓
- Yoga: `(283.74 − 41.65) × 4 = 1048.36` ✓
- These represent the marginal effect of going from frequency = 0 to frequency = 4 for each workout type, which is a correct and sensible interpretation.

**Question 9**

- The answer correctly identifies Strength as yielding the highest calorie burn per additional gym session, and correctly notes the yoga interaction is not statistically significant.
- **Typo:** *"hus, we cannot statistically distinguish…"* — should be **"thus"**.
- **Suggestion:** Add that for Cardio itself, the slope is 283.74 per session, so Yoga (242.09... wait, 283.74 − 41.65 = 242.09) should be presented for completeness in the comparison table.

---

### Section 3 — Regression Assumptions

**Question 10**

- The diagnostic plots clearly show a funnel/fan shape in both Residuals vs. Fitted and Scale-Location plots, indicating **heteroscedasticity (non-constant variance)**. The Q-Q plot also shows heavy tails, suggesting a **normality violation** as well.
- The correct answer listed is "Equal variance" — this is appropriate given the visual evidence.
- **Suggestion:** The question asks which assumption "does not seem to be met." Since there appear to be violations of *both* equal variance and normality, the question would benefit from specifying: *"Which is the most visually apparent assumption violation?"* or listing both as correct.

**Question 11**

- *"we can use model3 for making predictions, although we must be careful when using it to evaluate the significance of the coefficients or to calculate prediction intervals."*
  - **Conceptually sound.** When heteroscedasticity is present, point predictions remain unbiased but standard errors (and thus inference) are compromised.
- *"point A is an influential point and should be considered to be removed from the data."*
  - **Conceptual caution:** Recommending removal of influential points is debatable practice. A more careful statement would be: *"Point A has high leverage and high residual, making it influential. It should be investigated further — if it represents a data entry error or a genuinely anomalous case, removal may be justified."* Automatically removing influential points without justification can introduce bias.

**Question 12**

- The characterization of A, B, C is correct:
  - **A**: High residual (far from regression line vertically) + high leverage (extreme x value, low duration) → **influential point**
  - **B**: High residual + near the center of x distribution → **outlier, low leverage**
  - **C**: Close to regression line (low residual) + extreme x value → **high leverage, not influential**
- **Grammar note:** The labels are presented without full sentences, which is fine for a matching exercise.

---

## Summary of Key Issues

| # | Type | Issue |
|---|------|--------|
| Q3 | Grammar | "burns more calories than HIIT compared to cardio" is ambiguous |
| Q5 | Grammar | "equal variance appears to be an issue" is awkward |
| Q6 | Conceptual | Overstates what statistical significance implies |
| Q7 | Conceptual | The 99.49 distractor would benefit from clearer framing |
| Q9 | Typo | "hus" should be "thus" |
| Q10 | Conceptual | Normality also appears violated; question could acknowledge both |
| Q11 | Conceptual | Influential point removal should be framed as investigation, not automatic removal |

---

## Complete Solutions Guide

### Q1 — Intercept Interpretation
The intercept (399.42) represents the predicted calories burned for a subscriber performing a **Cardio** workout (the reference category) with an experience level of **zero**. It is the baseline from which all other estimates are measured.

### Q2 — Experience Coefficient
**Correct answer:** *For two subscribers performing the same workout type, a one-point increase in experience is associated with an expected difference of 534.63 calories burned.*

This uses the language of association (not causation) and holds workout type constant — the two features that make it the correct interpretation of a regression coefficient.

### Q3 — Workout Type Conclusions
- ✅ **Supported:** Yoga vs. Cardio difference is not statistically significant (p = 0.0888 > 0.05).
- ❌ **Not supported:** Non-significance ≠ no effect.
- ❌ **Not supported:** HIIT coefficient (599.88) < Strength coefficient (972.93), so HIIT does not beat all workout types.
- ✅ **Supported:** Strength (972.93) > HIIT (599.88), both relative to Cardio baseline.

### Q4 — Predictions
Using `ŷ = 399.42 + 534.63 × experience + β_workout`:

| Scenario | Calculation | Result |
|----------|-------------|--------|
| Experience = 3.5, Strength | 399.42 + 534.63(3.5) + 972.93 | **3243.54** |
| Experience = 1.2, Cardio | 399.42 + 534.63(1.2) + 0 | **1040.97** |
| Experience = 2.0, Yoga | 399.42 + 534.63(2.0) − 158.13 | **1310.54** |

### Q5 — Diagnostic Plot (model1)
- **Linearity:** Satisfied — no strong trend in Residuals vs. Fitted (borderline).
- **Normality:** Satisfied — points follow the Q-Q line reasonably well.
- **Equal Variance:** **Violated** — increasing spread of residuals with larger fitted values (heteroscedasticity).

### Q6 — Frequency Main Effect (model2)
283.74 calories per additional session applies to **Cardio** workouts specifically (the reference category). The coefficient is statistically significant (p < 2e-16), providing strong evidence of a positive association between frequency and calories for cardio subscribers.

### Q7 — model2 Conclusions
**Correct:** When gym frequency is zero, there is no evidence of a difference between strength and cardio workouts (p = 0.4743).

The other options are wrong because: (a) all workout main effects are non-significant at frequency = 0; (b) the yoga coefficient confidence interval crosses zero; (c) 99.49 is the HIIT main effect at frequency = 0, not a general frequency-adjusted comparison.

### Q8 — Calorie Effect at Frequency = 4

| Workout | Slope | × 4 | Calories |
|---------|-------|-----|----------|
| Cardio | 283.74 | × 4 | 1134.96 |
| HIIT | 283.74 + 118.59 = 402.33 | × 4 | **1649.32** |
| Strength | 283.74 + 207.69 = 491.43 | × 4 | **1965.72** |
| Yoga | 283.74 − 41.65 = 242.09 | × 4 | **968.36** |

### Q9 — Highest/Lowest Calorie Burn by Frequency
**Highest:** Strength, at 491.43 calories per additional weekly session (interaction significant: CI [157.32, 258.05]). **Lowest:** Yoga, at 242.09 per session, though this interaction is **not statistically significant** (p = 0.1135; CI includes 0), so we cannot statistically distinguish the yoga slope from the cardio slope.

### Q10 — Violated Assumption in model3
**Equal variance (homoscedasticity)** is the most visually apparent violation — the Residuals vs. Fitted and Scale-Location plots show a pronounced fan shape. The Q-Q plot also suggests possible normality issues (heavy tails).

### Q11 — Using model3 for Predictions
Model3 can still be used for **point predictions**, since OLS estimates remain unbiased under heteroscedasticity. However, **hypothesis tests, confidence intervals, and prediction intervals** are unreliable because they depend on correct standard errors. Point A (high residual + high leverage) is **influential** and warrants investigation before any decision about removal.

### Q12 — Classifying Points A, B, C

| Point | Residual | Leverage | Classification |
|-------|----------|----------|----------------|
| A | High | High | Influential point |
| B | High | Low | Outlier (non-influential) |
| C | Low | High | High-leverage, not influential |

An influential point is one that substantially affects the fitted regression line. A has both high leverage (extreme x) and a large residual, so it "pulls" the line toward it. B is anomalous in y but sits in the middle of the x range, so it exerts less influence on the slope. C is far out in x but falls close to the regression line, so it reinforces rather than distorts the fit.

---

*Review prepared for Mastery Exam A — Henrique Bolfarine (referenced course material)*
