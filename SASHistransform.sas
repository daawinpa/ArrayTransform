
libname myfiles 'U:\MDE_Hispanic\Hispanic Questionaire';

/* DATA step obtains and prepares the data * */
data myfiles.questtranspose;
	 /* using this data file for input */
 	  infile "U:\MDE_Hispanic\Hispanic Questionaire\QuestionnaireData.csv"
	  firstobs=2 
       dsd; 
	  input Pred1-Pred299 @@;
run;

proc print data=myfiles.questtranspose;
run;


/*creates a new temporary dataset  using  the Permanent file*/
data results1;
   set myfiles.questtranspose;
   array allobs{299} Pred1-Pred299; * create an array to hold all variables;
	  	do Predictor =1 to 299;  /* Perform this number of iterations of the steps below*/
	  			Subj =_N_ ;  * accumulator to track which Day ;
   /* place each entry from the current observation into an observation in the new variable*/
				Measurement = allobs(Predictor);	
		   output;
		end;
	keep Subj Predictor Measurement; * only show the following variables ; 
run;

proc print data=results1;
run;

proc export data=results1
   outfile='U:\MDE_Hispanic\HispanicTranspose.csv'
   dbms=csv
   replace;
run;




data wide4; 
   infile "U:\MDE_Hispanic\Hispanic Questionaire\RecodedHisques.csv"
	  firstobs=2 
       dsd;
input  Pred1-Pred165 $ @@
; 
run ;

proc print data = wide4;
run

proc transpose data = wide4  out=samp_long (rename = (_NAME_=treatment COL1 = pc20));
by Pred1;
run;
 
proc print data = samp_long;
run;
 


data questtranspose;
	 /* using this data file for input */
 	  infile "U:\MDE_Hispanic\RecodedFinalHis.csv"
	  firstobs=2 
       dsd; 
	  input A $ B $ C $ D $ E $ F $ G $ H $ I $ J $ K $ L $ M $ N $ O $ P $ Q $ R $ S $ T $ U $ V $ W $ X $ Y $ Z $
         AA $ AB $ AC $ AD $ AE $ AF $ AG $ AH $ AI $ AJ $ AK $ AL $ AM $ AN $ AO $ AP $ AQ $ AR $ AS $ AT $ AU $ AV $ AW $ AX $ AY $ AZ $
  BA $ BB $ BC $ BD $ BE $ BF $ BG $ BH $ BI $ BJ $ BK $ BL $ BM $ BN $ BO $ BP $ BQ $ BR $ BS $ BT $ BU $ BV $ BW $ BX $ BY $ BZ $
CA $ CB $ CC $ CD $ CE $ CF $ CG $ CH $ CI $ CJ $ CK $ CL $ CM $ CN $ CO $ CP $ CQ $ CR $ CS $ CT $ CU $ CV $ CW $ CX $ CY $ CZ $   
DA $ DB $ DC $ DD $ DE $ DF $ DG $ DH $ DI $ DJ $ DK $ DL $ DM $ DN $ DO $ DP $ DQ $ DR $ DS $ DT $ DU $ DV $ DW $ DX $ DY $ DZ $
EA $ EB $ EC $ ED $ EE $ EF $ EG $ EH $ EI $ EJ $ EK $ EL $ EM $ EN $ EO $ EP $ EQ $ ER $ ES $ ET $ EU $ EV $ EW $ EX $ EY $ EZ $
FA $ FB $ FC $ FD $ FE $ FF $ FG $ FH $ FI $ FJ $ FK $ FL $ FM $ FN $ FO $ FP $ FQ $ FR $ FS $ FT $ FU $ FV $ FW $ FX $ FY $ FZ $
GA $ GB $ GC $ GD $ GE $ GF $ GG $ GH $ GI $ GJ $ GK $ GL $ GM $ GN $ GO $ GP $ GQ $ GR $ GS $ GT $ GU $ GV $ GW $ GX $ GY $ GZ $
HA $ HB $ HC $ HD $ HE $ HF $ HG $ HH $ HI $ HJ $ HK $ HL $ HM $ HN $ HO $ HP $ HQ $ HR $ HS $ HT $ HU $ HV $ HW $ HX $ HY $ HZ $
IA $ IB $ IC $ ID $ IE $ IF $ IG $ IH $ II $ IJ $ IK $ IL $ IM $ IN $ IO $ IP $ IQ $ IR $ IS $ IT $ IU $ IV $ IW $ IX $ IY $ IZ $
KA $ KB $ KC $ KD $ KE $ KF $ KG $ KU @;

run;

proc print data=questtranspose;
run;


data results1;
   set questtranspose;
   array allobs{*} _CHARACTER_; * create an array to hold all variables;
	  	do Predictor =1 to 267;  /* Perform this number of iterations of the steps below*/
	  			Subj =_N_ ;  * accumulator to track which Day ;
   /* place each entry from the current observation into an observation in the new variable*/
				Measurement = allobs(Predictor);	
		   output;
		end;
	keep Subj Predictor Measurement; * only show the following variables ; 
run;

proc print data=results1;
run;


proc export data=results1
   outfile='U:\MDE_Hispanic\HisRecodedTransFinal.csv'
   dbms=csv
   replace;
run;


proc import datafile="U:\MDE_Hispanic\RecodedFinalHis.csv" out=mydata dbms=csv replace;
    getnames=no;
run;


/************************************************************************************/

proc import datafile="U:\MDE_Hispanic\RecodedFinalHis.csv" out=mydata2 dbms=csv ;
    getnames=yes;
run;




data results2;
   set mydata;
   array allobs{*} _CHARACTER_; /*_CHARACTER_ ; * create an array to hold all variables;*/
	  	do Predictor =1 to 268;  /* Perform this number of iterations of the steps below*/
			Subj =_N_ ;  * accumulator to track which Day ;
   /* place each entry from the current observation into an observation in the new variable*/
				Measurement = allobs(Predictor);	
		   output;
		end;
	keep Subj Predictor Measurement; * only show the following variables ; 
run;

proc print data=results2(firstobs=269);
run;


proc export data=results2(firstobs=269)
   outfile='U:\MDE_Hispanic\TransHisFinal.csv'
   dbms=csv
   replace;
run;
