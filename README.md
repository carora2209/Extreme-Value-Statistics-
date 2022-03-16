# Practicals Extreme Value Statistics - ATHENS

AT THE BEGINNING OF THE PRACTICAL FOR SPATIAL EXTREMES: got to the `terminal` tab and enter the following command:

`git lfs pull Practicals/*`

## Introduction
You will find in this `renkulab` project all practicals and the material necessary for the course's project.

For the latter, you need to form pairs and fill the sheet with letter and the physical quantity you want to analyze:
- Wind speed,
- Rainfall,
- Temperature.

More details about the data can be found in the Data section.

## Project instructions:
- Load your database, which depends on the number of your group;
- Explore your database (descriptive statistics), following the example given in `NO2.Rmd`:
    - Do not hesitate to go further than in NO2.Rmd (e.g. plot histograms, spot anomalies, remove trends, etc.),
    - This exploratory analysis should help you assess if your data satisfies the classical assumptions in Extreme Value Theory (e.g. stationarity, mixing, existence of a maximum domain of attraction, etc.),
- Perform a full univariate extreme value analysis for the variable and locations you were assigned:
    - Both block-maxima and peaks-over-threshold can be considered.
    - Is there a maximum domain of attraction ? Is the variable heavy-tailed ?
    - Estimate the EVI, deduce extreme probabilities and extreme quantiles
- Try to interpret your results. 
- Intiatives going beyond the `NO2.Rmd` example, such as multivariate modelling and / or spatial analysis will be expected.

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

You can find the corresponding code to display the location of your measurements inthe folder `Code_Example`.

For a block maxima analysis, you will need to first define, e.g., yearly/monthly maxima, and compute blocks from the original data. 

## Deadline and grading
The project is be due on Thursday, March 24th, 2022, at 23:59 CET (UTC+1). To hand-out the project, simply send by email to `hans.wackernagel[at]mines-paristech.fr` the link of the renkulab project containing your report.

We will dowload the souce code and corresponding rendered htlm/pdf file that will be used to grade the project.

## Dataset attribution and pairs

| Number	|GROUP|	DATA|	Last name|	First name |
| --- | -------- | -------- |-------- | -------- |
|1|	A|	Wind |	GRAMA |	Diandra- Sorana |
|1|	A|	Wind |	ARORA |	Chaitanya |
|2|	B|	Rainfall |	KLEJCHOVÁ |	Abigail |
|2|	B|	Rainfall |	TRYBUS |	Rafał |
|3|	C|	Rainfall |	COTILLARD |	Tristan |
|3|	C|	Rainfall |	DEJEAN DE LA BÂTIE |	Marguerite |
|4|	D|	Temperature |	IZDEBSKI |	Maciej |
|4|	D|	Temperature |	KOCHAŃSKI |	Łukasz |
|5|	E|	Temperature |	MARCHESI |	Maria |
|5|	E|	Temperature |	ABERGO |	Chiara |
|6|	F|	Rainfall |	KALIANKO |	Vit |
|6|	F|	Rainfall |	VADLEJCH |	Martin |
|7|	G|	Rainfall |	MARQUES	| Nuno |
|7|	G|	Rainfall |	PINTO |	João |
|8|	H|	Temperature |	CRUZ BANDEIRA FERNANDES |	Afonso |
|8|	H|	Temperature |	LI	| JInze |
|9|	I|	Rainfall |	AUROUSSEAU	| Tanguy |
|9|	I|	Rainfall |	GIBOUREAU	| Nils |
|10|J|	Temperature |	FERRARA	| Francesco |
|10	|J|	Temperature |	MORESCHI |	Jacopo |
|11	|K|	Temperature |	SUSINI |	Garance|
|11	|K|	Temperature |	LEONE |	Leonardo |
|12	|L|	Wind |	SEFCIK |	Jan |
|12	|L|	Wind |	ZID |	Cenek |
|13	|M|	Wind |	VALENTA	| Tomas |
|13	|M|	Wind |	MARTENS	| Timo |
|14	|N|	Temperature |	SPIEKER |	Christine |
|14	|N|	Temperature |	SERAFIN	| Emilia |
|15	|R|	Rainfall |	POKORNÝ	 | Jan |
|15	|R|	Rainfall |	JANCICKA |	Lukas |
|16|	S |	Temperature |	CLAVE |	Gabriel |
|16	|S |	Temperature |	CARDI |	Etienne |
|17 |	T |	Wind |	VALADE |	Nicolas |
|17 |	T |	Wind |	ABESSOUGUIEBAYIHA |	Jean-Sébastien |

