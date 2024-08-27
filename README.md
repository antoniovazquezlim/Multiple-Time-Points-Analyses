# Multiple-Time-Points-Analyses
ANCOVA and cross-lagged regression analyses across time points with longitudinal simulated clinical data of anorexia and depression patients.

## Research Questions
1. Does communication skills training lead to a decrease in self-reported depressive symptoms across different longitudinal time points?
2. Does a given treatment increase the weight of anorexia patients to a statistically significant degree across different longitudinal time points?

### Data Description
- Data for Part 1 stored in a data frame called dep_df, imported from the Excel file for the ANCOVA analysis.
    - Contains four variables. `dep_t1` and `dep_t2` are depression self-ratings at a Time 1 (prior to treatment) and Time 2 (after treatment).
    - `commun_t1` and `commun_t2` contain scores for a participant's communication skills prior to communication skills training, and post.
    - Time 1 and Time 2 for both depression and communication scores are the same.
- Data for Part 2 stored in a data frame called anorexia_data, imported from the Excel file for the cross-lagged regression analysis.
    - Contains four variables.
    - Group = 1 or 2, treatment groups;
    - Pretest and Posttest = weight in kg across time points;
    - Gain = difference of Posttest - Pretest weights
