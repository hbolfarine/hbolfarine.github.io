# Quiz 5: Statistical and Grammatical Review

## Question 1: Fill in the Blank (4 points)

### Current Wording:
"The intercept, ___, is the expected number of customers on a ___ when the food truck is located ___ mile(s) from the downtown area."

### Statistical Soundness: ✓ GOOD
- **Strengths:** Tests fundamental understanding of intercept interpretation in a regression model with interaction terms. Correctly identifies that the intercept represents the reference category (weekday) at baseline (distance = 0).
- **Pedagogical value:** Forces students to think about what "zero" means for each predictor variable.
- **Potential issue:** None - this is a well-designed question.

### Grammar Suggestions:
**Current:** "The intercept, ___, is the expected number of customers on a ___ when the food truck is located ___ mile(s) from the downtown area."

**Suggested revision:** "The intercept, ___, represents the expected number of customers on a ___ when the food truck is ___ mile(s) from downtown."

**Changes made:**
- "represents" is more precise than "is" for statistical parameters
- Removed "the" before "downtown area" or shortened to "downtown" for conciseness
- Changed "located" to just the distance (simpler)

**Alternative clearer version:** "The intercept value of ___ is the predicted number of customers on a ___ when distance equals ___ mile(s)."

---

## Question 2: Formula (4 points)

### Current Wording:
"Use Model 1 to predict the expected number of customers visiting the food truck on a weekend when the truck is parked 5.7 miles away from downtown (the answer can be in decimal)."

### Statistical Soundness: ✓ EXCELLENT
- **Strengths:** 
  - Tests ability to apply the model to make predictions
  - Requires understanding of how to plug in values for both the categorical variable (weekend) and continuous variable (distance)
  - Requires understanding of interaction terms in calculation
  - The specific distance (5.7) is good - not a simple round number
- **Pedagogical value:** High - this is practical application that shows students how to use regression models
- **Potential improvements:** None needed

### Grammar Suggestions:
**Current:** "Use Model 1 to predict the expected number of customers visiting the food truck on a weekend when the truck is parked 5.7 miles away from downtown (the answer can be in decimal)."

**Suggested revision:** "Use Model 1 to predict the expected number of customers visiting the food truck on a weekend when the truck is parked 5.7 miles from downtown. (Provide your answer as a decimal.)"

**Changes made:**
- Removed "away" (redundant with "from")
- Moved the decimal instruction to a separate sentence with active voice
- "Provide your answer as a decimal" is clearer than "the answer can be in decimal"

---

## Question 3: Multiple Choice (3 points)

### Current Wording:
"What can we conclude by examining the coefficient of distance?"

### Statistical Soundness: ⚠️ POTENTIALLY PROBLEMATIC
- **Issue:** In a model with interactions, the "coefficient of distance" (-3.00) ONLY represents the effect of distance when day = weekday (the reference category). This is a subtle but important point.

**Analysis of answer choices:**

1. ✓ **CORRECT:** "There is strong evidence that, on weekdays, customer turnout decreases by three for every one mile increase in distance from downtown."
   - This is statistically accurate - it correctly specifies "on weekdays"

2. ✗ **INCORRECT:** "There is strong evidence that, on weekends, customer turnout decreases by two for each extra mile in distance from downtown."
   - This is actually about the interaction effect, not the distance coefficient alone
   - The slope on weekends is -3 + 2 = -1, not -2

3. ⚠️ **PROBLEMATIC:** "There is strong evidence that customer turnout decreases as the distance from downtown increases."
   - This is too general and doesn't acknowledge that the effect differs by day
   - While technically distance does have a negative effect overall, in an interaction model you can't interpret main effects without considering the interaction
   - This could mislead students into thinking main effects can be interpreted independently in interaction models

4. ✗ **CLEARLY INCORRECT:** "There is strong evidence that moving a food truck further away from downtown causes it to gain customers."
   - This is obviously wrong given the negative coefficient

**Recommendation:** The question is acceptable but could be improved by being more explicit about asking for the interpretation "in the reference category" or "when day = weekday."

### Grammar Suggestions:
**Current:** "What can we conclude by examining the coefficient of distance?"

**Suggested revision:** "What can we conclude by examining the coefficient for distance (-3.00)?"

OR better yet:

**Improved version:** "In this model with an interaction term, what does the coefficient for distance (-3.00) tell us?"

**Changes made:**
- Added the actual coefficient value for reference
- OR: Added context about the interaction to cue students that they need to think carefully about interpretation

---

## Question 4: Multiple Choice (3 points)

### Current Wording:
"What can we conclude by examining the coefficient of the interaction term?"

### Statistical Soundness: ✓ EXCELLENT
- **Strengths:**
  - Tests understanding of interaction term interpretation
  - All distractors are plausible misinterpretations
  - The correct answer demonstrates understanding that interactions indicate differential effects

**Analysis of answer choices:**

1. ✗ "There is strong evidence that moving the truck further away from downtown has a negative impact on customer turnout independently of the day of the week."
   - Good distractor - tests if students understand that the interaction means the effect is NOT independent

2. ✗ "There is strong evidence that customer turnout is higher on weekdays than on weekends."
   - Good distractor - tests if students confuse interaction with main effect
   - Actually, the main effect of dayweekend is -1.00, but this isn't directly what the interaction tells us

3. ✗ "There is strong evidence that customer turnout is higher on weekends than on weekdays, regardless of the distance from downtown."
   - Good distractor - the word "regardless" is key here; interactions mean effects DEPEND on other variables

4. ✓ **CORRECT:** "There is strong evidence that the effect of distance on customer numbers is significantly different on weekends compared to weekdays."
   - Perfect interpretation of an interaction term

### Grammar Suggestions:
**Current:** "What can we conclude by examining the coefficient of the interaction term?"

**Suggested revision:** "What can we conclude from the interaction term coefficient (distance:dayweekend = 2.00)?"

**Changes made:**
- "from" is slightly more natural than "by examining"
- Added the specific coefficient for reference
- Included the term name from the output

---

## Question 5: Multiple Choice (4 points)

### Current Wording:
"Which plot above corresponds to the predictions from Model 1?"

### Statistical Soundness: ✓ EXCELLENT
- **Strengths:**
  - Tests visual interpretation of regression with interactions
  - Requires students to understand:
    - Both lines should be negative (distance coefficient is negative)
    - Weekday line should be steeper (slope = -3)
    - Weekend line should be flatter (slope = -1)
    - Lines should have different intercepts
    - Lines should cross over (interaction effect)
  - This is high-level synthesis

**Analysis based on what Plot A should show:**
- Weekday: steeper negative slope (red line, slope = -3)
- Weekend: flatter negative slope (blue line, slope = -1)
- At distance = 0: weekday ≈ 21, weekend ≈ 20
- Lines cross, with weekend better at higher distances

### Grammar Suggestions:
**Current:** "Which plot above corresponds to the predictions from Model 1?"

**Suggested revisions:**

**Option 1:** "Which plot best represents the predictions from Model 1?"

**Option 2:** "Which plot correctly shows the predicted relationship from Model 1?"

**Changes made:**
- "best represents" or "correctly shows" is more precise than "corresponds to"
- Removed "above" (the plots are clearly visible, so this is redundant)

**Alternative with more guidance:**
"Based on Model 1, which plot correctly shows how the predicted number of customers changes with distance for weekdays versus weekends?"

---

## Overall Assessment

### Strengths of the Quiz:
1. **Progressive difficulty:** Questions build from interpretation to application to synthesis
2. **Tests multiple competencies:** Parameter interpretation, calculation, conceptual understanding, visual interpretation
3. **Focus on interactions:** Excellent pedagogical focus on a challenging topic
4. **Realistic context:** Food truck scenario is relatable and practical

### Areas for Improvement:

1. **Question 3 ambiguity:** The main effect interpretation in the presence of an interaction could be clearer. Consider adding "for the reference category" or "when day = weekday" to the question stem.

2. **Consistency in wording:** Some questions say "strong evidence" while others don't. Consider standardizing language around statistical significance.

3. **Explicit connection to output:** Questions could reference specific coefficient values to help students connect their interpretations to the actual output.

### Grammar Priority Issues:
1. **Question 1:** Awkward phrasing with multiple blanks - consider restructuring
2. **Question 2:** "answer can be in decimal" → "provide answer as a decimal"
3. All questions: Consider adding actual coefficient values in parentheses for reference

### Recommended Changes Summary:
- **Question 1:** Minor rephrasing for clarity
- **Question 2:** Clarify decimal instruction
- **Question 3:** Add context about reference category (**IMPORTANT for statistical accuracy**)
- **Question 4:** Minor wording improvement
- **Question 5:** Minor wording improvement

Overall, this is a **well-designed quiz** that effectively tests understanding of interaction terms in linear regression. The main suggestion is to be more explicit in Question 3 about the conditional nature of the distance coefficient in an interaction model.
