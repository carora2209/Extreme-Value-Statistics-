# Practicals Extreme Value Statistics - ATHENS

## Introduction
You will find in this `renkulab` project all practicals and the material necessary for the course's project.

For the latter, you need to form pairs and send an email to `raphael.defondeville[at]bfs.admin.ch` with your names and the physical quantity you want to analyze:
- Wind speed,
- Rainfall,
- Temperature.
More details about the data can be found in the Data section.

## Project instructions:
- Load your database, which depends on the number of your group;
- Explore your database (descriptive statistics), following the example given in `NO2.Rmd`:
    - Do not hesitate to go further than in NO2.Rmd (e.g. plot histograms, spot anomalies, remove trends, etc.),
    - This exploratory analysis should help you assess if your data satisfies the classical assumptions in Extreme Value Theory (e.g. stationarity, mixing, existence of a maximum domain of attraction, etc.),
- Perform a full univariate extreme value analysis for the variable and locations you were assigned (cf. the database description):
    - Is there a maximum domain of attraction ? Is the variable heavy-tailed ?
    - Estimate the EVI, deduce extreme probabilities and extreme quantiles
- Try to interpret your results 
- Any intiative going beyond the `NO2.Rmd`, such as multivariate modelling or spatial analysis will be valued.

If you do not know what to conclude from your results, you can try to see what classical distributions would give: simulate artificial data sets from a GEV/GPD (choose the parameters wisely), and see what the resulting statistics would look like...

## Data and code
We propose three different data sets:
- Rainfall station measurements in the state of Victoria, AU;
- Wind speed over western Europe;
- Temperature measurements in the South of France.

The provided data file entitled `team_number.RData`, include three objects:
- `dataset`: data frame including the measurements from five locations;
- `dates`:dates for each row of the data.frame;
- `coordinates`: geographical coordinates for each of the locations.

You can find the corresponding code to display

## Deadline and grading
The project is be due on Sunday, April 24th, 2022, at 23:59 CET (UTC+1). To hand-out the project, simply send by email to `hans.wackernagel[at]mines-paristech.fr` the link of the renkulab project containing your report.

We will dowload the souce code and rendered htlm/pdf file that will be used to grade the project.



