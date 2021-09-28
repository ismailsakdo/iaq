* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.

New Score SBS

--[Coding the SS Final 0-3]--based on the fact of the because of the indoor elements

COMPUTE sss1=s1+ss1.n.
EXECUTE.
COMPUTE sss2=s2+ss2.n.
EXECUTE.
COMPUTE sss3=s3+ss3.n.
EXECUTE.
COMPUTE sss4=s4+ss4.n.
EXECUTE.
COMPUTE sss5=s5+ss5.n.
EXECUTE.
COMPUTE sss6=s6+ss6.n.
EXECUTE.
COMPUTE sss7=s7+ss7.n.
EXECUTE.
COMPUTE sss8=s8+ss8.n.
EXECUTE.
COMPUTE sss9=s9+ss9.n.
EXECUTE.
COMPUTE sss10=s10+ss10.n.
EXECUTE.
COMPUTE sss11=s11+ss11.n.
EXECUTE.
COMPUTE sss12=s12+ss12.n.
EXECUTE.
COMPUTE sss13=s13+ss13.n.
EXECUTE.
COMPUTE sss14=s14+ss14.n.
EXECUTE.
COMPUTE sss15=s15+ss15.n.
EXECUTE.
COMPUTE sss16=s16+ss16.n.
EXECUTE.
COMPUTE sss17=s17+ss17.n.
EXECUTE.

------
Analysis to investigate the differences between gender/ demographic (2GROUPS)
gender,eye, type.n,work,position.n,s.hours,smoking
------

--[Gender VS Env Complaint (env)]--

DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY gender.
SPLIT FILE LAYERED BY gender.
DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12 BY gender(1 2)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /ORDER=ANALYSIS.

--[eye VS Env Complaint (env)]--

DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY eye.
SPLIT FILE LAYERED BY eye.
DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12 BY eye(0 1)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /ORDER=ANALYSIS.

--[type.n VS Env Complaint (env)]--

DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY type.n.
SPLIT FILE LAYERED BY type.n.
DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12 BY type.n(2 4)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /ORDER=ANALYSIS.

--[work VS Env Complaint (env)]--

DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY work.
SPLIT FILE LAYERED BY work.
DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12 BY work(1 2)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /ORDER=ANALYSIS.

--[position.n VS Env Complaint (env)]--

DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY position.n.
SPLIT FILE LAYERED BY position.n.
DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12 BY position.n(1 4)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /ORDER=ANALYSIS.

--[s.hours VS Env Complaint (env)]--

DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY s.hours.
SPLIT FILE LAYERED BY s.hours.
DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12 BY s.hours(1 2)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /ORDER=ANALYSIS.

--[smoking VS Env Complaint (env)]--

DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY smoking.
SPLIT FILE LAYERED BY smoking.
DESCRIPTIVES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12 BY smoking(0 1)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12
  /ORDER=ANALYSIS.

===================
--------[Demo/ gender Vs SBS]
====================

gender,eye, type.n,work,position.n,s.hours,smoking

DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY gender.
SPLIT FILE LAYERED BY gender.
DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17 BY gender(1 2)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /ORDER=ANALYSIS.

--[eye VS SBS]--

DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY eye.
SPLIT FILE LAYERED BY eye.
DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17 BY eye(0 1)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /ORDER=ANALYSIS.

--[type.n VS SBS]--

DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY type.n.
SPLIT FILE LAYERED BY type.n.
DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17 BY type.n(2 4)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /ORDER=ANALYSIS.

--[work VS SBS]--

DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY work.
SPLIT FILE LAYERED BY work.
DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17 BY work(1 2)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /ORDER=ANALYSIS.

--[position.n VS SBS]--

DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY position.n.
SPLIT FILE LAYERED BY position.n.
DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17 BY position.n(1 4)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /ORDER=ANALYSIS.

--[s.hours VS SBS]--

DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY s.hours.
SPLIT FILE LAYERED BY s.hours.
DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17 BY s.hours(1 2)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /ORDER=ANALYSIS.

--[smoking VS SBS]--

DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SORT CASES  BY smoking.
SPLIT FILE LAYERED BY smoking.
DESCRIPTIVES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /STATISTICS=MEAN STDDEV RANGE.
SPLIT FILE OFF.
NPAR TESTS
  /M-W= sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17 BY smoking(0 1)
  /MISSING ANALYSIS.
FREQUENCIES VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 
  sss13 sss14 sss15 sss16 sss17
  /ORDER=ANALYSIS.

----Calculation of SBS MM040 Na Questionnaire (confirm due to indoors)----

COMPUTE general=sum(sss1,sss2,sss3,sss4,sss5).
EXECUTE.

COMPUTE mucosal=sum(sss6,sss7,sss9,sss10).
EXECUTE.

COMPUTE dermal=sum(sss11,sss12,sss13).
EXECUTE.

COMPUTE other=sum(sss8,sss14,sss15,sss16,sss17).
EXECUTE.

COMPUTE total=sum(general,mucosal,dermal,other).
EXECUTE.

----Calculation of SBS MM040Na Categorical----

RECODE general (Lowest thru 5=0) (5.01 thru Highest=1) INTO general.cat.
EXECUTE.
RECODE mucosal (Lowest thru 5=0) (5.01 thru Highest=1) INTO mucosal.cat.
EXECUTE.
RECODE dermal (Lowest thru 5=0) (5.01 thru Highest=1) INTO dermal.cat.
EXECUTE.
RECODE other (Lowest thru 5=0) (5.01 thru Highest=1) INTO other.cat.
EXECUTE.

-----Calculation based on risk odd ---- Tukarkan dari sss1 confirm sbs by symptoms kepada group 10

RECODE sss1 (2=1) (ELSE=0) INTO s1.f.
EXECUTE.
RECODE sss2 (2=1) (ELSE=0) INTO s2.f.
EXECUTE.
RECODE sss3 (2=1) (ELSE=0) INTO s3.f.
EXECUTE.
RECODE sss4 (2=1) (ELSE=0) INTO s4.f.
EXECUTE.
RECODE sss5 (2=1) (ELSE=0) INTO s5.f.
EXECUTE.
RECODE sss6 (2=1) (ELSE=0) INTO s6.f.
EXECUTE.
RECODE sss7 (2=1) (ELSE=0) INTO s7.f.
EXECUTE.
RECODE sss8 (2=1) (ELSE=0) INTO s8.f.
EXECUTE.
RECODE sss9 (2=1) (ELSE=0) INTO s9.f.
EXECUTE.
RECODE sss10 (2=1) (ELSE=0) INTO s10.f.
EXECUTE.
RECODE sss11 (2=1) (ELSE=0) INTO s11.f.
EXECUTE.
RECODE sss12 (2=1) (ELSE=0) INTO s12.f.
EXECUTE.
RECODE sss13 (2=1) (ELSE=0) INTO s13.f.
EXECUTE.
RECODE sss14 (2=1) (ELSE=0) INTO s14.f.
EXECUTE.
RECODE sss15 (2=1) (ELSE=0) INTO s15.f.
EXECUTE.
RECODE sss16 (2=1) (ELSE=0) INTO s16.f.
EXECUTE.
RECODE sss17 (2=1) (ELSE=0) INTO s17.f.
EXECUTE.

================== NEW TEST ================
-----
Correlation between perceived indoor and pollutants (20/4/2020) 
-----

NONPAR CORR
  /VARIABLES=env1 env2 env3 env4 env5 env6 env7 env8 env9 env10 env11 env12 hcho1 
  pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow  
  /PRINT=SPEARMAN TWOTAIL NOSIG
  /MISSING=PAIRWISE.
-----
Correlation between SBS and pollutants
-----

NONPAR CORR
  /VARIABLES=sss1 sss2 sss3 sss4 sss5 sss6 sss7 sss8 sss9 sss10 sss11 sss12 sss13 
    sss14 sss15 sss16 sss17 hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /PRINT=SPEARMAN TWOTAIL NOSIG
  /MISSING=PAIRWISE.

-------

COMPUTE stotal.f=sum(s1.f,s2.f,s3.f,s4.f,s5.f,s6.f,s7.f,s8.f,s9.f,
s10.f,s11.f,s12.f,s13.f,s14.f,s15.f,s16.f,s17.f).
EXECUTE.

----New Calculation 21/4/2020----

RECODE env1 (1=1) (2=1) (0=0) INTO env1.n.
EXECUTE.
RECODE env2 (1=1) (2=1) (0=0) INTO env2.n.
EXECUTE.
RECODE env3 (1=1) (2=1) (0=0) INTO env3.n.
EXECUTE.
RECODE env4 (1=1) (2=1) (0=0) INTO env4.n.
EXECUTE.
RECODE env5 (1=1) (2=1) (0=0) INTO env5.n.
EXECUTE.
RECODE env6 (1=1) (2=1) (0=0) INTO env6.n.
EXECUTE.
RECODE env7 (1=1) (2=1) (0=0) INTO env7.n.
EXECUTE.
RECODE env8 (1=1) (2=1) (0=0) INTO env8.n.
EXECUTE.
RECODE env9 (1=1) (2=1) (0=0) INTO env9.n.
EXECUTE.
RECODE env10 (1=1) (2=1) (0=0) INTO env10.n.
EXECUTE.
RECODE env11 (1=1) (2=1) (0=0) INTO env11.n.
EXECUTE.
RECODE env12 (1=1) (2=1) (0=0) INTO env12.n.
EXECUTE.

COMPUTE env.total.n=sum(env1.n,env2.n,env3.n,env4.n,env5.n,env6.n,env7.n,env8.n,env9.n,env10.n,
    env11.n,env12.n).
EXECUTE.


RECODE s1 (1=1) (2=1) (0=0) INTO s1.n.
EXECUTE.
RECODE s2 (1=1) (2=1) (0=0) INTO s2.n.
EXECUTE.
RECODE s3 (1=1) (2=1) (0=0) INTO s3.n.
EXECUTE.
RECODE s4 (1=1) (2=1) (0=0) INTO s4.n.
EXECUTE.
RECODE s5 (1=1) (2=1) (0=0) INTO s5.n.
EXECUTE.
RECODE s6 (1=1) (2=1) (0=0) INTO s6.n.
EXECUTE.
RECODE s7 (1=1) (2=1) (0=0) INTO s7.n.
EXECUTE.
RECODE s8 (1=1) (2=1) (0=0) INTO s8.n.
EXECUTE.
RECODE s9 (1=1) (2=1) (0=0) INTO s9.n.
EXECUTE.
RECODE s10 (1=1) (2=1) (0=0) INTO s10.n.
EXECUTE.
RECODE s11 (1=1) (2=1) (0=0) INTO s11.n.
EXECUTE.
RECODE s12 (1=1) (2=1) (0=0) INTO s12.n.
EXECUTE.
RECODE s13 (1=1) (2=1) (0=0) INTO s13.n.
EXECUTE.
RECODE s14 (1=1) (2=1) (0=0) INTO s14.n.
EXECUTE.
RECODE s15 (1=1) (2=1) (0=0) INTO s15.n.
EXECUTE.
RECODE s16 (1=1) (2=1) (0=0) INTO s16.n.
EXECUTE.
RECODE s17 (1=1) (2=1) (0=0) INTO s17.n.
EXECUTE.

COMPUTE s.total.n=sum(s1.n,s2.n,s3.n,s4.n,s5.n,s6.n,s7.n,s8.n,s9.n,s10.n,
    s11.n,s12.n,s13.n,s14.n,s15.n,s16.n,s17.n).
EXECUTE.

---New Calculation ----


COMPUTE general.n=sum(s1.n,s2.n,s3.n,s4.n,s5.n).
EXECUTE.
COMPUTE mucosal.n=sum(s6.n,s7.n,s9.n,s10.n).
EXECUTE.
COMPUTE dermal.n=sum(s11.n,s12.n,s13.n).
EXECUTE.
COMPUTE other.n=sum(s8.n,s14.n,s15.n,s16.n,s17.n).
EXECUTE.
COMPUTE total.n=sum(general.n,mucosal.n,dermal.n,other.n).
EXECUTE.

===== Focus on Linear Regression With R = 0.5 ====

MUST SPLIT By Floor due to the different maintainance and a/C design

SORT CASES  BY gender.
SPLIT FILE LAYERED BY gender.

SPLIT FILE OFF.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT env.total.n
  /METHOD=ENTER cond.mean satisfy.mean temp.mean clean.mean noise.mean aq.mean them.desk them.part 
    them.airmov them.act them.shirt them.food
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /METHOD=ENTER sbut health.tot.
[Clean, AQ Perception,RH,CO]

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT s.total.n
  /METHOD=ENTER cond.mean satisfy.mean temp.mean clean.mean noise.mean aq.mean them.desk them.part 
    them.airmov them.act them.shirt them.food
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /METHOD=ENTER sbut health.tot.
[Satisfactory, Clean, Shirt, Temp, SBUT, Health Score]

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT total
  /METHOD=ENTER cond.mean satisfy.mean temp.mean clean.mean noise.mean aq.mean them.desk them.part 
    them.airmov them.act them.shirt them.food
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /METHOD=ENTER sbut health.tot.
[Satisfactory, Clean, Therma Comfort Body, Shirt, Temperature, Health Index]

======//=====//==== Floor indoor study =====\\====\\===== 21/4/2020 - RESULT 3

Copy from Syntax 2:


###### Data Analysis ###### 14Apr2020

SPLIT FILE OFF.

FREQUENCIES VARIABLES=class gender eye comp education status floor type.n work position.n s.hours 
    space smoking
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=age duration
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=h1.cat h2.cat h3.cat h4.cat h5.cat h6.cat
  /ORDER=ANALYSIS.

---- Test of the categorical differences ---
[Demo]

NPAR TESTS
  /CHISQUARE=class gender eye comp education status floor type.n work position.n s.hours space smoking
  /EXPECTED=EQUAL
  /MISSING ANALYSIS.

[Health]

NPAR TESTS
  /CHISQUARE=h1.cat h2.cat h3.cat h4.cat h5.cat h6.cat
  /EXPECTED=EQUAL
  /MISSING ANALYSIS.

####Continue####

FREQUENCIES VARIABLES=env.total.n s.total.n general.n mucosal.n dermal.n other.n sbut health.tot
  /FORMAT=NOTABLE
  /NTILES=4
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /FORMAT=NOTABLE
  /NTILES=4
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN
  /ORDER=ANALYSIS.

====Categorize the Health Issues ====

RECODE env.total.n (Lowest thru 6.8=0) (6.81 thru Highest=1) INTO env.cat.
EXECUTE.
RECODE s.total.n (Lowest thru 8=0) (8.1 thru Highest=1) INTO sbs.cat.
EXECUTE.
RECODE general.n (Lowest thru 3=0) (3.1 thru Highest=1) INTO gen.cat.
EXECUTE.
RECODE mucosal.n (Lowest thru 2=0) (2.1 thru Highest=1) INTO muc.cat.
EXECUTE.
RECODE dermal.n (Lowest thru 1=0) (1.1 thru Highest=1) INTO der.cat.
EXECUTE.
RECODE other.n (Lowest thru 1=0) (1.1 thru Highest=1) INTO oth.cat.
EXECUTE.
RECODE sbut (Lowest thru 23=0) (23.1 thru Highest=1) INTO sbut.cat.
EXECUTE.

FREQUENCIES VARIABLES=env.cat sbs.cat gen.cat muc.cat der.cat oth.cat sbut.cat
  /ORDER=ANALYSIS.

NPAR TESTS
  /CHISQUARE=env.cat sbs.cat gen.cat muc.cat der.cat oth.cat sbut.cat
  /EXPECTED=EQUAL
  /MISSING ANALYSIS.

----Comparison between Symptom Score----

T-TEST GROUPS=env.cat(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=sbs.cat(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=gen.cat(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=muc.cat(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=der.cat(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=oth.cat(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=sbut.cat(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).

---Comparison IAQ between standard --- above or within

RECODE hcho1 (Lowest thru 0.1=0) (0.11 thru Highest=1) INTO hchoL.
EXECUTE.
RECODE pm2.5 (Lowest thru 150=0) (151 thru Highest=1) INTO pm2.5L.
EXECUTE.
RECODE tvoc (Lowest thru 3=0) (3.01 thru Highest=1) INTO tvocL.
EXECUTE.
RECODE metsec (0.15 thru 0.5=0) (ELSE=1) INTO metsecL.
EXECUTE.
RECODE temp (24 thru 26=0) (ELSE=1) INTO tempL.
EXECUTE.
RECODE rh (40 thru 70=0) (ELSE=1) INTO rhL.
EXECUTE.
RECODE co2 (Lowest thru 1000=0) (1001 thru Highest=1) INTO co2L.
EXECUTE.
RECODE co (Lowest thru 10=0) (11 thru Highest=1) INTO coL.
EXECUTE.
RECODE flow (Lowest thru 17=1) (17 thru Highest=0) INTO flowL.
EXECUTE.

---RECODE Particle Counter Based on Mean ---



FREQUENCIES VARIABLES=hchoL pm2.5L tvocL metsecL tempL rhL co2L coL flowL
  /ORDER=ANALYSIS.

NPAR TESTS
  /CHISQUARE=hchoL pm2.5L tvocL metsecL tempL rhL co2L coL flowL
  /EXPECTED=EQUAL
  /MISSING ANALYSIS.

T-TEST
  /TESTVAL=0.1
  /MISSING=ANALYSIS
  /VARIABLES=hcho1
  /CRITERIA=CI(.95).
T-TEST
  /TESTVAL=150
  /MISSING=ANALYSIS
  /VARIABLES=pm2.5L
  /CRITERIA=CI(.95).
T-TEST
  /TESTVAL=3
  /MISSING=ANALYSIS
  /VARIABLES=tvocL
  /CRITERIA=CI(.95).
T-TEST
  /TESTVAL=0.15
  /MISSING=ANALYSIS
  /VARIABLES=metsecL
  /CRITERIA=CI(.95).
T-TEST
  /TESTVAL=26
  /MISSING=ANALYSIS
  /VARIABLES=tempL
  /CRITERIA=CI(.95).
T-TEST
  /TESTVAL=70
  /MISSING=ANALYSIS
  /VARIABLES=rhL
  /CRITERIA=CI(.95).
T-TEST
  /TESTVAL=1000
  /MISSING=ANALYSIS
  /VARIABLES=co2L
  /CRITERIA=CI(.95).
T-TEST
  /TESTVAL=10
  /MISSING=ANALYSIS
  /VARIABLES=coL
  /CRITERIA=CI(.95).
T-TEST
  /TESTVAL=17
  /MISSING=ANALYSIS
  /VARIABLES=flowL
  /CRITERIA=CI(.95).

===Comparison between IAP and demographic factors ====
-2 factor-

T-TEST GROUPS=gender(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=eye(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=type.n(2 4)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=work(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=position.n(1 4)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=s.hours(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=smoking(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).
T-TEST GROUPS=position.n(1 4)
  /MISSING=ANALYSIS
  /VARIABLES=hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow
  /CRITERIA=CI(.95).

->2 factors-

ONEWAY hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow BY comp
  /STATISTICS DESCRIPTIVES 
  /MISSING ANALYSIS.
ONEWAY hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow BY education
  /STATISTICS DESCRIPTIVES 
  /MISSING ANALYSIS.
ONEWAY hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow BY floor
  /STATISTICS DESCRIPTIVES 
  /MISSING ANALYSIS.
ONEWAY hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow BY space
  /STATISTICS DESCRIPTIVES 
  /MISSING ANALYSIS.

----- GRAPHICAL OVERVIEW of EXPOSURE


EXAMINE VARIABLES=hcho1 BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=pm2.5 BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=tvoc BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=pm0.3 BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=pm0.5 BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=pm5 BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=air.mot BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=temp BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=rh BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=co2 BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=co BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
EXAMINE VARIABLES=flow BY floor
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.

=== Relationship/ Correlation Test/ Association ====

FREQUENCIES VARIABLES=pm0.3 pm0.5 pm5
  /FORMAT=NOTABLE
  /STATISTICS=MEAN
  /ORDER=ANALYSIS.
[Mean 0.3 = 42699376.22]
[Mean 0.5 = 2906218.32]
[Mean 5 = 33305.73]

RECODE pm0.3 (Lowest thru 42699376.22=0) (42699376.23 thru Highest=1) INTO pm0.3.n.
EXECUTE.
RECODE pm0.5 (Lowest thru 2906218.32=0) (2906218.33 thru Highest=1) INTO pm0.5.n.
EXECUTE.
RECODE pm5 (Lowest thru 33305.73=0) (33305.74 thru Highest=1) INTO pm5.n.
EXECUTE.

---Association Test Exposure and Outcome [env.cat until sbut.cat] ---

CROSSTABS
  /TABLES=hchoL pm2.5L metsecL tempL rhL co2L flowL pm0.3.n pm0.5.n pm5.n BY env.cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI RISK 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.
CROSSTABS
  /TABLES=hchoL pm2.5L metsecL tempL rhL co2L flowL pm0.3.n pm0.5.n pm5.n BY sbs.cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI RISK 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.
CROSSTABS
  /TABLES=hchoL pm2.5L metsecL tempL rhL co2L flowL pm0.3.n pm0.5.n pm5.n BY gen.cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI RISK 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.
CROSSTABS
  /TABLES=hchoL pm2.5L metsecL tempL rhL co2L flowL pm0.3.n pm0.5.n pm5.n BY muc.cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI RISK 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.
CROSSTABS
  /TABLES=hchoL pm2.5L metsecL tempL rhL co2L flowL pm0.3.n pm0.5.n pm5.n BY der.cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI RISK 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.
CROSSTABS
  /TABLES=hchoL pm2.5L metsecL tempL rhL co2L flowL pm0.3.n pm0.5.n pm5.n BY oth.cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI RISK 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.
CROSSTABS
  /TABLES=hchoL pm2.5L metsecL tempL rhL co2L flowL pm0.3.n pm0.5.n pm5.n BY sbut.cat
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ CC PHI RISK 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.


---New Algorith (any reported cases reported as case) ----

RECODE env.total.n (0=0) (ELSE=1) INTO env.cat.n.
EXECUTE.
RECODE s.total.n (0=0) (ELSE=1) INTO sbs.cat.n.
EXECUTE.
RECODE general.n (0=0) (ELSE=1) INTO gen.cat.n.
EXECUTE.
RECODE mucosal.n (0=0) (ELSE=1) INTO muc.cat.n.
EXECUTE.
RECODE dermal.n (0=0) (ELSE=1) INTO der.cat.n..
EXECUTE.
RECODE other.n (0=0) (ELSE=1) INTO oth.cat.n.
EXECUTE.

=== Modelling Regression Analysis (Logistic) =====
[Exclude TVOC and CO, due to low symptoms]
================================

LOGISTIC REGRESSION VARIABLES env.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES sbs.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES gen.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES muc.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES der.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES oth.cat.n
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES sbut.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

=== Symptom Each ====

LOGISTIC REGRESSION VARIABLES env1.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env2.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env3.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env4.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env5.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env6.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env7.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env8.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env9.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env10.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env11.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES env12.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).
  
==continue == Each MM040na questionnaire

LOGISTIC REGRESSION VARIABLES s1.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s2.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s3.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s4.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s5.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s6.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s7.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

-----

LOGISTIC REGRESSION VARIABLES s8.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).
------

LOGISTIC REGRESSION VARIABLES s9.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s10.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s11.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s12.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s13.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s14.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s15.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s16.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES s17.n
  /METHOD=ENTER hcho1 pm2.5 tvoc pm0.3 pm0.5 pm5 air.mot temp rh co2 co flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

===ILLNESS and Exposure ====


LOGISTIC REGRESSION VARIABLES h1.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES h2.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES h3.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES h4.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES h5.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES h6.cat
  /METHOD=ENTER hcho1 pm2.5 pm0.3 pm0.5 pm5 air.mot temp rh co2 flow 
  /METHOD=ENTER age duration 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (gender)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (work)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

====== 24 April 20 - Changes the Value Limits ====


---Comparison IAQ between standard --- above or within

RECODE hcho1 (Lowest thru 0.02=0) (0.021 thru Highest=1) INTO hchoN.
EXECUTE.
RECODE pm2.5 (Lowest thru 50=0) (51 thru Highest=1) INTO pm2.5N.
EXECUTE.
RECODE tvoc (Lowest thru 0.1=0) (0.10 thru Highest=1) INTO tvocN.
EXECUTE.
RECODE air.mot (30 thru 100=0) (ELSE=1) INTO air.motN.
EXECUTE.
RECODE temp (24 thru 26=0) (ELSE=1) INTO tempN.
EXECUTE.
RECODE rh (56 thru 70=0) (ELSE=1) INTO rhN.
EXECUTE.
RECODE co2 (Lowest thru 832=0) (832 thru Highest=1) INTO co2N.
EXECUTE.
RECODE co (Lowest thru 3.5=0) (3.51 thru Highest=1) INTO coN.
EXECUTE.
RECODE flow (Lowest thru 33=1) (33 thru Highest=0) INTO flowN.
EXECUTE.

==== New Logistic Regression Risk Factors ====

LOGISTIC REGRESSION VARIABLES env.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN 
  /METHOD=ENTER age duration 
  /METHOD=ENTER pm0.3 pm0.5 pm5 
  /METHOD=ENTER gender eye work s.hours smoking 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator(1)
  /CONTRAST (eye)=Indicator(1)
  /CONTRAST (work)=Indicator(1)
  /CONTRAST (s.hours)=Indicator(1)
  /CONTRAST (smoking)=Indicator(1)
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

additional control factors


LOGISTIC REGRESSION VARIABLES oth.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN 
  /METHOD=ENTER age duration 
  /METHOD=ENTER pm0.3 pm0.5 pm5 
  /METHOD=ENTER gender eye work s.hours smoking 
  /METHOD=ENTER floor space 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator(1)
  /CONTRAST (eye)=Indicator(1)
  /CONTRAST (work)=Indicator(1)
  /CONTRAST (s.hours)=Indicator(1)
  /CONTRAST (smoking)=Indicator(1)
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

===FINALIZE MODE ====24April20- New Finalize Logistic Model

LOGISTIC REGRESSION VARIABLES sbs.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN 
  /METHOD=ENTER pm0.3 pm0.5 pm5 
  /METHOD=ENTER age duration health.tot
  /METHOD=ENTER gender eye work s.hours smoking 
  /METHOD=ENTER floor space 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator(1)
  /CONTRAST (eye)=Indicator(1)
  /CONTRAST (work)=Indicator(1)
  /CONTRAST (s.hours)=Indicator(1)
  /CONTRAST (smoking)=Indicator(1)
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

===Finalize with the Health Score====

LOGISTIC REGRESSION VARIABLES h6.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN 
  /METHOD=ENTER pm0.3 pm0.5 pm5 
  /METHOD=ENTER age duration
  /METHOD=ENTER gender eye work s.hours smoking 
  /METHOD=ENTER floor space 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator(1)
  /CONTRAST (eye)=Indicator(1)
  /CONTRAST (work)=Indicator(1)
  /CONTRAST (s.hours)=Indicator(1)
  /CONTRAST (smoking)=Indicator(1)
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

FREQUENCIES VARIABLES=env.score general mucosal dermal other total env.total.n general.n mucosal.n 
    dermal.n other.n s.total.n
  /STATISTICS=MINIMUM MAXIMUM MEAN MEDIAN
  /ORDER=ANALYSIS.

===== 11 May 2020 ==== Logistic Regression - Use Data PHD 20 April 20 Final Part I

LOGISTIC REGRESSION VARIABLES env.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN cond.mean satisfy.mean 
    temp.mean clean.mean noise.mean aq.mean them.desk them.part them.airmov them.act them.shirt 
    them.food
  /METHOD=ENTER gender type.n eye floor space s.hours smoking comp education 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator
  /CONTRAST (type.n)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (floor)=Indicator
  /CONTRAST (space)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /CONTRAST (comp)=Indicator
  /CONTRAST (education)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

**** Continue 4 June 2020 ****** data  20 April 2020 Table 11b-----

LOGISTIC REGRESSION VARIABLES sbs.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN cond.mean satisfy.mean 
    temp.mean clean.mean noise.mean aq.mean them.desk them.part them.airmov them.act them.shirt 
    them.food
  /METHOD=ENTER gender type.n eye floor space s.hours smoking comp education 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator
  /CONTRAST (type.n)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (floor)=Indicator
  /CONTRAST (space)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /CONTRAST (comp)=Indicator
  /CONTRAST (education)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES gen.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN cond.mean satisfy.mean 
    temp.mean clean.mean noise.mean aq.mean them.desk them.part them.airmov them.act them.shirt 
    them.food
  /METHOD=ENTER gender type.n eye floor space s.hours smoking comp education 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator
  /CONTRAST (type.n)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (floor)=Indicator
  /CONTRAST (space)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /CONTRAST (comp)=Indicator
  /CONTRAST (education)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES muc.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN cond.mean satisfy.mean 
    temp.mean clean.mean noise.mean aq.mean them.desk them.part them.airmov them.act them.shirt 
    them.food
  /METHOD=ENTER gender type.n eye floor space s.hours smoking comp education 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator
  /CONTRAST (type.n)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (floor)=Indicator
  /CONTRAST (space)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /CONTRAST (comp)=Indicator
  /CONTRAST (education)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES der.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN cond.mean satisfy.mean 
    temp.mean clean.mean noise.mean aq.mean them.desk them.part them.airmov them.act them.shirt 
    them.food
  /METHOD=ENTER gender type.n eye floor space s.hours smoking comp education 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator
  /CONTRAST (type.n)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (floor)=Indicator
  /CONTRAST (space)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /CONTRAST (comp)=Indicator
  /CONTRAST (education)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES oth.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN cond.mean satisfy.mean 
    temp.mean clean.mean noise.mean aq.mean them.desk them.part them.airmov them.act them.shirt 
    them.food
  /METHOD=ENTER gender type.n eye floor space s.hours smoking comp education 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator
  /CONTRAST (type.n)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (floor)=Indicator
  /CONTRAST (space)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /CONTRAST (comp)=Indicator
  /CONTRAST (education)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

LOGISTIC REGRESSION VARIABLES sbut.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN tempN rhN co2N coN flowN cond.mean satisfy.mean 
    temp.mean clean.mean noise.mean aq.mean them.desk them.part them.airmov them.act them.shirt 
    them.food
  /METHOD=ENTER gender type.n eye floor space s.hours smoking comp education 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (tempN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (coN)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator
  /CONTRAST (type.n)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (floor)=Indicator
  /CONTRAST (space)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /CONTRAST (comp)=Indicator
  /CONTRAST (education)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).

===Finalize Analysis 12 May 2020 - Significant Health With the Selected IVs===

LOGISTIC REGRESSION VARIABLES h6.cat
  /METHOD=ENTER hchoN pm2.5N tvocN air.motN rhN co2N flowN cond.mean satisfy.mean 
    clean.mean aq.mean them.shirt
  /METHOD=ENTER gender type.n eye floor space s.hours smoking comp education 
  /CONTRAST (hchoN)=Indicator(1)
  /CONTRAST (pm2.5N)=Indicator(1)
  /CONTRAST (tvocN)=Indicator(1)
  /CONTRAST (air.motN)=Indicator(1)
  /CONTRAST (rhN)=Indicator(1)
  /CONTRAST (co2N)=Indicator(1)
  /CONTRAST (flowN)=Indicator(1)
  /CONTRAST (gender)=Indicator
  /CONTRAST (type.n)=Indicator
  /CONTRAST (eye)=Indicator
  /CONTRAST (floor)=Indicator
  /CONTRAST (space)=Indicator
  /CONTRAST (s.hours)=Indicator
  /CONTRAST (smoking)=Indicator
  /CONTRAST (comp)=Indicator
  /CONTRAST (education)=Indicator
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).
