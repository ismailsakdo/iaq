* Encoding: UTF-8.

Classification from Predictive Models

RECODE tree (4=1) (2=1) (3=0) (1=0) INTO tree.cat.
EXECUTE.

RECODE lr (4=1) (2=1) (3=0) (1=0) INTO lr.cat.
EXECUTE.

RECODE ann (4=1) (2=1) (3=0) (1=0) INTO ann.cat.
EXECUTE.

RECODE random (4=1) (2=1) (3=0) (1=0) INTO random.cat.
EXECUTE.

RECODE svm (4=1) (2=1) (3=0) (1=0) INTO svm.cat.
EXECUTE.

  FREQUENCIES VARIABLES=tree.cat lr.cat ann.cat random.cat svm.cat health.tree.cat
  /ORDER=ANALYSIS.

/// recode for the Health DV\\\\

RECODE health.tree (4=1) (2=1) (3=0) (1=0) INTO health.tree.cat.
EXECUTE.

RECODE health.lr (4=1) (2=1) (3=0) (1=0) INTO health.lr.cat.
EXECUTE.

RECODE health.ann (4=1) (2=1) (3=0) (1=0) INTO health.ann.cat.
EXECUTE.

RECODE health.random (4=1) (2=1) (3=0) (1=0) INTO health.random.cat.
EXECUTE.

RECODE health.svm (4=1) (2=1) (3=0) (1=0) INTO health.svm.cat.
EXECUTE.

////

SORT CASES  BY cluster.
SPLIT FILE LAYERED BY cluster.

FREQUENCIES VARIABLES=tree.cat lr.cat ann.cat random.cat svm.cat health.tree.cat health.lr.cat health.ann.cat
  health.random.cat health.svm.cat
  /ORDER=ANALYSIS.

NPAR TESTS
  /CHISQUARE=tree.cat lr.cat ann.cat random.cat svm.cat health.tree.cat health.lr.cat health.ann.cat
  health.random.cat health.svm.cat
  /EXPECTED=EQUAL
  /MISSING ANALYSIS.

SPLIT FILE OFF.

conclusion, the prediction, generate 50% chance to predict the nature of sbs. higher reported by ANN

==== the health indicate the statistical association of the cluster and also the 
distribution and the capability of predicting the output

ONEWAY healthTree.ok healthLr.ok healthAnn.ok healthRandom.ok healthSvm.ok BY cluster
  /STATISTICS DESCRIPTIVES HOMOGENEITY 
  /PLOT MEANS
  /MISSING ANALYSIS
  /POSTHOC=TUKEY ALPHA(0.05).


GRAPH
  /ERRORBAR(STDDEV 2)=healthTree.ok healthLr.ok healthAnn.ok healthRandom.ok healthSvm.ok BY cluster    
  /MISSING=LISTWISE.

// Distribution of predicted with the real reported cases

NPAR TESTS
  /CHISQUARE=tree.cat lr.cat ann.cat random.cat svm.cat
  /EXPECTED=EQUAL
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS.


NPAR TESTS
  /CHISQUARE=health.tree.cat health.lr.cat health.ann.cat health.random.cat health.svm.cat
  /EXPECTED=EQUAL
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS.
