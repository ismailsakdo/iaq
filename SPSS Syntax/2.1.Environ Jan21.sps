* Encoding: UTF-8.

SORT CASES  BY final.
SPLIT FILE LAYERED BY final.

FREQUENCIES VARIABLES=hcho pm2.5 tvoc pm0.3 pm0.5 pm5 metsec temp rh co2 co airflow
  /FORMAT=NOTABLE
  /STATISTICS=STDDEV SEMEAN MEAN MEDIAN
  /ORDER=ANALYSIS.

SPLIT FILE OFF.

EXAMINE VARIABLES=hcho pm2.5 tvoc pm0.3 pm0.5 pm5 metsec temp rh co2 co airflow
  /PLOT BOXPLOT STEMLEAF HISTOGRAM NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

==== Non Parametric ===

NPAR TESTS
  /K-W=hcho pm2.5 tvoc pm0.3 pm0.5 pm5 metsec temp rh co2 co airflow BY final(1 3)
  /MISSING ANALYSIS.

no different CO and PM0.5 - removed from the classification method.

Descriptive analysis towards cluster arrangement risk.

SORT CASES  BY final.
SPLIT FILE LAYERED BY final.

FREQUENCIES VARIABLES=hcho pm2.5 tvoc pm0.3 pm5 metsec temp rh co2 airflow
  /FORMAT=NOTABLE
  /NTILES=4
  /STATISTICS=MEAN MEDIAN
  /ORDER=ANALYSIS.
SPLIT FILE OFF.

=== Distribution ====

SPLIT FILE OFF.

NPAR TESTS
  /CHISQUARE=final
  /EXPECTED=EQUAL
  /MISSING ANALYSIS.

there is different across 3 categories

CROSSTABS
  /TABLES=final BY sbs.cat health.cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.

SORT CASES  BY final.
SPLIT FILE LAYERED BY final.

NPAR TESTS
  /CHISQUARE=sbs.cat health.cat
  /EXPECTED=EQUAL
  /MISSING ANALYSIS.
SPLIT FILE OFF.

NPAR TESTS
  /CHISQUARE=sbs.cat health.cat
  /EXPECTED=EQUAL
  /MISSING ANALYSIS.

Able to DETECT for Health Problems

// Factor Analysis \\\

FACTOR
  /VARIABLES hcho pm2.5 tvoc metsec co2 airflow sbs mm health
  /MISSING LISTWISE 
  /ANALYSIS hcho pm2.5 tvoc metsec co2 airflow sbs mm health
  /PRINT UNIVARIATE SIG KMO EXTRACTION ROTATION
  /FORMAT SORT
  /CRITERIA MINEIGEN(1) ITERATE(25)
  /EXTRACTION PC
  /CRITERIA ITERATE(25)
  /ROTATION VARIMAX
  /METHOD=CORRELATION.

///Factor Analysis by Group\\\

SORT CASES  BY final.
SPLIT FILE LAYERED BY final.

FACTOR
  /VARIABLES hcho pm2.5 tvoc metsec co2 airflow sbs mm health
  /MISSING LISTWISE 
  /ANALYSIS hcho pm2.5 tvoc metsec co2 airflow sbs mm health
  /PRINT UNIVARIATE SIG KMO EXTRACTION ROTATION
  /FORMAT SORT
  /CRITERIA MINEIGEN(1) ITERATE(25)
  /EXTRACTION PC
  /CRITERIA ITERATE(25)
  /ROTATION VARIMAX
  /METHOD=CORRELATION.
SPLIT FILE OFF.

TAMBAHAN >>>>>


====Chi Square Risk === 2 and 3 gabung

RECODE final (1=1) (2=2) (3=2) INTO final.risk.
EXECUTE.

health risk

RECODE sbs.cat (1=2) (0=1) INTO sbs.risk.
EXECUTE.

RECODE health.cat (1=2) (0=1) INTO health.risk.
EXECUTE.

=== Risk Analysis ===

CROSSTABS
  /TABLES=final.risk BY sbs.risk health.risk
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI RISK 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.


DATASET ACTIVATE DataSet1.
CROSSTABS
  /TABLES=class BY final
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.
