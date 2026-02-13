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
"What does the coefficient of distance tell us on its own?"

### Statistical Soundness: ⚠️ PROBLEMATIC - NEEDS REVISION
The phrase "on its own" creates significant statistical and pedagogical issues.

**Major Concerns:**

1. **Contradicts fundamental principle of interaction models:** In a model with interactions, main effect coefficients should NOT be interpreted "on their own" - they are inherently conditional on the other variable being at its reference level.

2. **The phrase "on its own" is ambiguous and misleading:**
   - Does it mean "ignoring the interaction term"? (pedagogically wrong)
   - Does it mean "when the other variable is at zero/reference"? (technically correct but poorly worded)
   - Does it mean "the isolated effect of distance"? (doesn't exist in interaction models)

3. **Teaches bad statistical practice:** The wording could encourage students to ignore interactions when interpreting coefficients, which is a common and serious error in applied regression analysis.

**What the distance coefficient (-3.00) actually represents:**
- The effect of distance **specifically when day = weekday** (the reference category)
- It is NOT the effect of distance "on its own" or "in general" or "independently"

**Analysis of answer choices:**

1. ✓ **CORRECT (but question wording undermines this):** "There is strong evidence that, on weekdays, customer turnout decreases by three for every one mile increase in distance from downtown."
   - This is statistically accurate - it correctly specifies "on weekdays"
   - However, this answer contradicts the question's phrase "on its own" since it requires specifying the day type
   - **Pedagogical confusion:** Students who correctly understand interactions might second-guess this answer because the question asks what it tells us "on its own" but the answer requires conditional interpretation

2. ✗ **INCORRECT:** "There is strong evidence that, on weekends, customer turnout decreases by two for each extra mile in distance from downtown."
   - This is about the net effect (distance + interaction), not the distance coefficient alone
   - The slope on weekends is -3 + 2 = -1, not -2 (this answer is also factually wrong)

3. ⚠️ **COULD BE MISINTERPRETED AS CORRECT given the poor wording:** "There is strong evidence that customer turnout decreases as the distance from downtown increases."
   - This is too general and statistically incorrect for an interaction model
   - BUT: students might select this because the question asks for "on its own" interpretation
   - **This is the dangerous answer** - it reinforces the exact misconception that the question should be teaching against

4. ✗ **CLEARLY INCORRECT:** "There is strong evidence that moving a food truck further away from downtown causes it to gain customers."
   - This is obviously wrong given the negative coefficient
   - Note: Also conflates correlation with causation ("causes")

**Critical Issue:** The wording "on its own" may lead well-informed students to choose answer 3 (the general statement) thinking that's what "on its own" means, while the intended correct answer (1) requires conditional interpretation - the exact opposite of "on its own."

### Grammar Suggestions:

**Current:** "What does the coefficient of distance tell us on its own?"

**Problems with current wording:**
- "on its own" is vague and problematic
- Doesn't acknowledge the interaction structure
- Could encourage ignoring interactions

**Strongly Recommended Revision:**

**Option 1 (Most Clear):** "In this interaction model, what does the coefficient for distance (-3.00) specifically tell us?"

**Option 2 (Explicit about reference category):** "What does the coefficient for distance (-3.00) tell us about the reference category (weekdays)?"

**Option 3 (Educational framing):** "The distance coefficient is -3.00. What does this value represent in an interaction model?"

**Option 4 (Most pedagogically sound):** "In a model with an interaction term, the coefficient for distance (-3.00) tells us:"

### RECOMMENDATION: **REVISE THIS QUESTION**

The current wording with "on its own" is pedagogically harmful. It either:
1. Contradicts the correct answer (which requires conditional interpretation), OR
2. Encourages students to ignore the interaction (statistical malpractice)

**Better approach:** Rephrase to explicitly acknowledge that the interpretation is conditional on the reference category. This teaches the correct principle: in interaction models, main effects are always conditional.

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

1. **Question 3 - CRITICAL ISSUE:** The phrase "on its own" is pedagogically harmful and statistically misleading:
   - Creates direct contradiction between question wording and correct answer
   - The phrase "on its own" suggests ignoring the interaction, which is bad statistical practice
   - May cause well-informed students to choose the wrong answer
   - **STRONG RECOMMENDATION:** Revise to explicitly acknowledge the conditional interpretation (e.g., "In this interaction model, what does the coefficient for distance specifically tell us?")

2. **Consistency in wording:** Some questions say "strong evidence" while others don't. Consider standardizing language around statistical significance.

3. **Explicit connection to output:** Questions could reference specific coefficient values to help students connect their interpretations to the actual output.

### Grammar Priority Issues:
1. **Question 1:** Awkward phrasing with multiple blanks - consider restructuring
2. **Question 2:** "answer can be in decimal" → "provide answer as a decimal"
3. All questions: Consider adding actual coefficient values in parentheses for reference

### Recommended Changes Summary:
- **Question 1:** Minor rephrasing for clarity
- **Question 2:** Clarify decimal instruction
- **Question 3:** **CRITICAL - REQUIRES REVISION** - Remove "on its own" phrasing, which contradicts proper interpretation of interactions and may confuse students who understand the material correctly
- **Question 4:** Minor wording improvement
- **Question 5:** Minor wording improvement

Overall, this quiz has strong pedagogical goals and tests important concepts about interaction terms. However, **Question 3 needs immediate revision** because the phrase "on its own" directly contradicts the fundamental principle that main effects in interaction models should be interpreted conditionally, not in isolation. This could teach students incorrect statistical practice or penalize those who correctly understand interactions.
