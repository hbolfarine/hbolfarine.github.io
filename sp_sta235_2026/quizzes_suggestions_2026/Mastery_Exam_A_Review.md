# Mastery Exam A — Review & Suggestions

---

## Overview

The exam covers three well-chosen topics in applied regression: categorical predictors, interaction effects, and regression diagnostics. The dataset context is clear and engaging. Overall, the exam is conceptually solid, but there are several grammar issues, a few ambiguous phrasings, and one notable conceptual clarification worth addressing.

---

## Grammar & Writing Issues

### Introduction / Variables Section

| Location | Original | Suggested Revision |
|---|---|---|
| Line 2 | "The data consists of five hundred paid subscribers…" | "The data consist of five hundred paid subscribers…" *(data is plural)* |
| Line 4 | "Your job is to understand how different types of workouts, frequency, and experience affect calories burned." | "Your job is to understand how workout type, frequency, and experience level affect the number of calories burned." |
| Variable definition | "frequency - frequency on the number of workouts during the week" | "frequency – number of workout sessions per week" *(the original is redundant)* |
| Variable definition | "experience - level experience of the user" | "experience – experience level of the user" |

---

### Section 1 – Categorical Variables

| Location | Original | Suggested Revision |
|---|---|---|
| Prompt | "Create a model predicting the number of calories burn in relation to experience and workout type." | "Create a model predicting the number of calories **burned** in relation to experience level and workout type." |
| Q1 answer | "…the predicted calories burned during aerobic-focused exercise, with an experience of zero." | "…the predicted number of calories burned during a cardio (aerobic-focused) workout for a subscriber with an experience level of zero." |
| Q3 first bullet | "…the difference in the number of calories burned between doing yoga and performing a cardio workout is not statistically significant." | Correct and clear. ✅ |
| Q3 third bullet | "…performing High-Intensity Interval Training increases the number of calories burned compared to all other workout types." | Correct phrasing; just flag it as "not supported." ✅ |
| Q3 fourth bullet | "…we can conclude that strength based exercise burns more calories than HIIT compared to cardio workouts." | Awkward. Suggest: "…strength-based exercise burns more calories than both HIIT and cardio workouts." |

---

### Section 2 – Interactions

| Location | Original | Suggested Revision |
|---|---|---|
| Q6 answer | "This coefficient is statistically significant so we can be confident that there is an effect in the population." | Add a comma: "This coefficient is statistically significant, so we can be confident that there is an effect in the population." |
| Q9 answer | "…the interaction effect in thiscase is not statistically significant…" | Missing space: "…in **this case**…" |
| Q9 answer | "…thus, it is the same as cardio in relation to frequency." | Slightly imprecise. Suggest: "…thus, we cannot statistically distinguish the yoga slope from the cardio slope." |

---

### Section 3 – Regression Assumptions

| Location | Original | Suggested Revision |
|---|---|---|
| Q11 | "Based on the diagnostic plot from Question XX…" | **Placeholder not filled in.** Replace "Question XX" with the actual question number (likely Q10). Appears twice. |
| Q10 question | "Based on the plot alone, which assumption does not seem to be met in this case?" | Clear and fine. ✅ |
| Q12 prompt | "How do these new data points affect our analysis?" | Clear and fine. ✅ |

---

## Conceptual Issues & Suggestions

### Q2 — Interpretation of `experience`

The correct answer is well-chosen and properly phrased as an **association** rather than a causal claim. The three incorrect options are good distractors. One small note: the second distractor ("causes them to burn…") correctly tests for causal language, but could be made even clearer as a distractor by adding "holding all else constant" to make the causal framing more explicit.

> **No change required**, but consider: "Increasing a subscriber's experience by one point **causes** them to burn 534.63 more calories, holding all other factors constant."

---

### Q3 — Significance of `workout.typeYoga`

The "not supported" statement — *"Yoga has no effect on burning calories simply because its coefficient is not statistically significant"* — is a great conceptual trap. However, the explanation could benefit from an explicit note to students:

> **Suggested addition:** *"A non-significant coefficient means we lack sufficient evidence to conclude there is a difference relative to the reference category (Cardio), not that the effect is exactly zero."*

---

### Q5 — Diagnostic Plot Interpretation

The conclusion about equal variance is correct (heteroscedasticity is visible). However, the exam states that **linearity and normality are satisfied**, which is reasonable from the plots shown. Consider adding a caveat about the **Residuals vs. Leverage** plot — it is mentioned in the `autoplot` output but not discussed in the written conclusion.

> **Suggested addition to Q5 answer:** *"The Residuals vs. Leverage plot does not show any points beyond Cook's distance, so there are no immediately influential observations to be concerned about in model1."*

---

### Q6 — Main Effect for Frequency in an Interaction Model

The answer is conceptually correct: in an interaction model, the main effect for `frequency` applies specifically to the **reference category** (Cardio). This is stated well. However, the phrasing "for each additional cardio workout session" could be confused with "per additional session while doing cardio." Consider:

> **Suggested revision:** *"The main effect for frequency shows that, for subscribers doing cardio workouts, each additional weekly session is associated with an estimated increase of 283.74 calories burned."*

---

### Q7 — Correct Answer Identification

The correct answer is: *"When gym frequency is zero, there is no evidence of a difference between strength and cardio workouts."*

This is conceptually sound — at `frequency = 0`, only the main effects of workout type apply, and `workout.typeStrength` has p = 0.4743, which is not significant. ✅

The first distractor (*"differences between the various workouts are statistically significant"*) is a good trap. The second distractor (*"independently of gym frequency"*) is also effective. ✅

---

### Q8 — Calorie Calculations

The formulas provided are correct:

| Workout | Calculation | Result |
|---|---|---|
| HIIT | (283.74 + 118.59) × 4 | **1,609.32 calories** |
| Strength | (283.74 + 207.69) × 4 | **1,965.72 calories** |
| Yoga | (283.74 − 41.65) × 4 | **1,048.36 calories** |

> **Suggestion:** Include the computed numerical results in the exam/answer key so students can self-check.

---

### Q10 — Violated Assumption

The correct answer is **Equal Variance** (heteroscedasticity). The fan-shaped spread in the Residuals vs. Fitted and Scale-Location plots makes this clear. The answer choices are appropriately designed.

> **Note:** The Normal Q-Q plot shows some deviation in the tails, which could be argued as a Normality concern too. Consider adding a brief note acknowledging that normality shows *mild* violations in the tails but that equal variance is the *primary* concern.

---

### Q11 — Influential Points

Labeling point A as influential is correct — it has both high leverage (extreme x-value) and a high residual, placing it outside the main data cloud. Points B and C are correctly characterized as well.

> **Suggested clarification in Q11:** Explicitly define **influential point** for students: *"An influential point is one where removing it would substantially change the regression estimates. Influence is a combination of high leverage and a high residual."*

---

### Q12 — Residual/Leverage Classification

The classifications are correct:

| Point | Classification | Rationale |
|---|---|---|
| A | High residual, high leverage | Low duration, very high calories — far from both axes of the data cloud |
| B | High residual, low leverage | Duration is near the center of the x-range, but calories are far above the regression line |
| C | Low residual, high leverage | Low duration and low calories — extreme on x but close to the regression line |

---

## Summary of Key Actions

1. **Fix the "Question XX" placeholder** in Q11 — this is the most critical error.
2. **Correct minor grammar** throughout (see table above), especially "calories burn" → "calories burned" and "level experience" → "experience level."
3. **Add computed numerical answers** to Q8 for student reference.
4. **Strengthen Q3 and Q5** with brief conceptual notes on non-significance and the Leverage plot.
5. **Clarify Q6** so that the main effect for frequency is explicitly tied to the Cardio reference category.
