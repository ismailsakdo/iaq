* Encoding: UTF-8.

Algorithm for Predictive Analytics Pattern Recognition

// High areas
1) Ventilation problem
2) external exposure to particulate + aldehyde
3) health link chemical related complaints

Moderate
1) ventilation maintainance/ indoor activities
2) health symptoms
3) particulate and aldehyde

Low
1) poor filteration
2) Symptomatic
3) aldehyde indoor
4) ventilation inadequate cleaning

RECODE hcho (Lowest thru 0.013=0) (ELSE=1) INTO hcho.cat.
EXECUTE.

RECODE pm2.5 (Lowest thru 40=0) (ELSE=1) INTO pm2.5.cat.
EXECUTE.

RECODE tvoc (Lowest thru 0.086=0) (ELSE=1) INTO tvoc.cat.
EXECUTE.

RECODE metsec (Lowest thru 0.091=1) (ELSE=0) INTO metsec.cat.
EXECUTE.

RECODE co2 (Lowest thru 780=0) (ELSE=1) INTO co2.cat.
EXECUTE.

RECODE airflow (Lowest thru 243=1) (ELSE=0) INTO airflow.cat.
EXECUTE.

//robust SUM all the variables

COMPUTE score=sum(hcho.cat,pm2.5.cat,tvoc.cat,metsec.cat,co2.cat,airflow.cat).
EXECUTE.

ONEWAY score BY final
  /STATISTICS DESCRIPTIVES HOMOGENEITY 
  /MISSING ANALYSIS
  /POSTHOC=TUKEY ALPHA(0.05).

//

RECODE score (Lowest thru 2.90=0) (ELSE=1) INTO score.cat.
VARIABLE LABELS
score.cat "final seperation".
VALUE LABELS
score.cat
1"High"
0"Low".
EXECUTE.

CROSSTABS
  /TABLES=final BY score.cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.

There is significant correlation/ there is relationship between the cluster and the score of the areas

TAMBAHAN >>>>>

====Chi Square Risk === 2 and 3 gabung

RECODE final (1=1) (2=2) (3=2) INTO final.risk.
EXECUTE.

health risk

RECODE sbs.cat (1=2) (0=1) INTO sbs.risk.
EXECUTE.

RECODE health.cat (1=2) (0=1) INTO health.risk.
EXECUTE.

// Asingkan analysis untuk high, moderate and low for better visible arrangment
// data normally tabulated.

EXAMINE VARIABLES=score sbs mm health
  /PLOT BOXPLOT STEMLEAF HISTOGRAM NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

SORT CASES  BY final.
SPLIT FILE LAYERED BY final.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT score
  /METHOD=ENTER sbs mm health final.risk.

SPLIT FILE OFF.

// Logistic Model

LOGISTIC REGRESSION VARIABLES score.cat
  /METHOD=ENTER final mm sbs health
  /CONTRAST (final)=Indicator(1)
  /PRINT=CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

//TESTING// Seperation analysis (no relationship between the mm and health with 6 variables)

//new analysis 29Jul21 - only 2 factor consider

COMPUTE cluster.high=sum(airflow.cat,metsec.cat,pm2.5.cat,co2.cat,tvoc.cat).
EXECUTE.

COMPUTE cluster.mod=sum(metsec.cat,co2.cat,airflow.cat,hcho.cat).
EXECUTE.

COMPUTE cluster.low=sum(airflow.cat,metsec.cat,pm2.5.cat).
EXECUTE.

// IV - cluster criteria dv sbs/ health - ABAIKAN

SORT CASES  BY final.
SPLIT FILE LAYERED BY final.

LOGISTIC REGRESSION VARIABLES sbs.cat
  /METHOD=ENTER cluster.high cluster.mod cluster.low 
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES health.cat
  /METHOD=ENTER cluster.high cluster.mod cluster.low 
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

SPLIT FILE OFF.

// 22Sep2021 - Finish Up the Third paper

