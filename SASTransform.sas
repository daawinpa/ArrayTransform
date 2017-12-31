libname myfiles 'C:\Users\Palma\Desktop\MDE_Hispanic';

/* DATA step obtains and prepares the data * */
data myfiles.questtranspose;
	 /* using this data file for input */
 	  infile "C:\Users\Palma\Desktop\MDE_Hispanic\H_PQuestionnaireData.csv";
  
	  /* indicate what to expect on each line of data */
	  input subjectID birthdate	age	handed	ethnicity	ht-feet	ht-inches	weight	skintype	
marital	education	hhincome	FromBirth	To1	Location1	From2	To2	Location2	From3	
To3	Location3	From4	To4	Location4	From5	To5	Location5	eth_mother	eth_father	
eth_matGM	eth_matGF	eth_patGM	eth_patGF	q.2OftMoist	Q.2bAge	Q.3cleans	Q.3bAge	Q.4From	Q.5Change
Q.6Wash	Q.7Antiage	Q.7Serium	Q.7Natural	Q.7blemish	Q.7Tinted	Q.7Tanner	Q.7Night	Q.7SPF	Q.7Sunscr
Q.7LotFace	Q.7OthAntiage	Q.7Eye	Q.7Spot	Q.8MakeOwn	Q.8b-Cleanser	Q.8b-Moistur	Q.8b-Other	Q.8cOften	
Q.8d-natural	Q.8d-better	Q.8d-gentle	Q.8d-safskin	Q.8d-safhealth	Q.8d-expense	Q.8d-Other	Q.9Modify
Q.9Cleanser	Q.9Moist	Q.9Other	Q.9CHowModify	Q.9d-Often	Q.10Almay	Q.10AMBI 	Q.10Aveda	Q.10Aveeno
Q.10Avon	Q.10Bath & Body Works	Q.10Black Opal	Q.10Botanics by Boots	Q.10Biore	Q.10Burt's Bees	Q.10Caress	
Q.10Cetaphil	Q.10Clarins	Q.10CeraVe	Q.10Clean & Clear	Q.10Clearasil	Q.10Clear Essence	Q.10Clinique	
Q.10DDF	Q.10Dove	Q.10Elizabeth Arden	Q.10Equate	Q.10Estee Lauder	Q.10Garnier	Q.10Jergens	Q.10Kinerase
Q.10L 'Oreal	Q.10Lancome	Q.10Lubriderm	Q.10Mary Kay	Q.10Merle Norman	Q.10Murad	Q.10Neutrogena	Q.10Nivea
Q.10No 7 by Boots	Q.10Noxzema	Q.10Obagi	Q.10Olay (Go to question #10b)	Q.10Origins	Q.10Palmer’s	
Q.10Perricone MD	Q.10Philosophy	Q.10Pond's	Q.10Prescriptives	Q.10Proactiv	Q.10Retin-A / Renova	
Q.10RoC	Q.10Shea Moisture	Q.10Simple	Q.10Suave	Q.10Vaseline Intensive Care	Q.10Store Brand	Q.10Prescription Rx
Q.10Other, please specify_____________________	Q.10I don’t use facial moisturizers	Q10b_OlayProx
Q.10b_OlayRegen	Q.10b_OlayTotal	Q.10b_OlayComp	Q.10b_OlayAge	Q.10b_OlayActive	Q.10b_OlayFresh	Q.10b_DK
Q.11spend	Q.12Brown spots or patches/sun spots/age spots/liver spots	Q.12Puffiness around or under eyes
Q.12Uneven skin tone/uneven color	Q.12Hyper-pigmentation Q.12Uneven skin texture
Q.12Fine lines	Q.12Wrinkles	Q.12Deep wrinkles	Q.12Acne/breakouts/blemishes	
Q.12Severe Acne	Q.12Rough/Uneven skin texture	Q.12Unwanted eyebrow facial hair	Q.12Unwanted upper lip/cheek/chin/jaw facial hair
Q.12Loss of skin firmness/loss of elasticity	Q.12Skin dullness/skin color too dull	Q.12Large or visible pores	Q.12Red blotchiness
Q.12Dark circles around or under eyes	Q.12Skin sensitivity – hives, hypersensitivity, allergy or abnormal skin reactions 	Q.12Sun freckles	
Q.12Red irritated skin	Q.12Dry Skin/Flaky skin surface	Q.12Skin oiliness/oily skin feel/shiny skin	Q.12Short/Thin Eyelashes	Q.12Sagging Cheeks	Q.12Sagging Eyelids	Q.12Eczema	Q.12Rosacea	Q.12Skin allergies	Q.12Allergies to fragrances
Q.12I do not have any of these facial skin conditions 	Q.13SunExp	Q.14RichAp	Q.14LightAp	Q.14Dewy	Q.14Velvet	Q.14Silky	Q.14Powd	Q.14Protect	Q.14Absorb	Q.14ProdDewy	Q.14ProdCreamy	Q.14DeepMoist	Q.14LightMoist	Q.14Cream	
Q.14Lotion	Q.15Type	Q.16Foundation	Q.17AttSun	Q.18AmtSun	Q.19SunBeh	Q.20HoursSeep	Q.20MinSleep	Q.21SlBack	Q.22 Glasses of Water	Q23Cups	Q.24Years	Q.24Yn/old	Q.25Exer	Q.26Aerobic	Q.27Low	Q.28MinLow	Q.29Smoked	Q.29bAgeStart	
Q.29bAgeQuit	Q.29bDayWkMt	Q.29bCigs	Q.30Alcohol	Q.30bAgeStart	Q.30bAgeQuit	Q.30bDrinks	Q.31Veget
Q.32Servings	Q.33VitA	Q.33VitC	Q.33VitD	Q.33Multi	Q.33Gluc	Q.33Other	Q.34Tanning	Q.35EmpOut	Q.36Nasal	
Q.37Stress	Q.38Acne	Q.39Presc	Q.40InAC	Q.40InHeat	Q.40Pollut	Q.40OutAllerg	Q.40InAllerg	Q.40Smoke	Q.40Computer
Q.41Season	Q.41Climate	Q.41Menst	Q.41Sleep	Q.41Stress	Q.41Preg	Q.41Other	Q.42Season	Q.42Climate	Q.42Menst	Q.42Sleep	Q.42Stress	Q.42Preg	
Q.42Other	Q.43BC	Q.44MenStat	Q.44AgePer	Q.45HRT	Q.45AgeHRT	Q.46Hhold	Q.47Thin	Q.47Better	Q.47Style	Q.47Sexy	Q.47Attract	Q.47Pretty	Q.47Dress	
Q.47Facial	Q.48Compare	Q.49SelfImp	Q.50Satisfied	Q.50Nogood	Q.50Qualities	Q.50DoWell	Q.50Proud	Q.50Useless	Q.50Worth	Q.50Respect	Q.50Failure	Q.50Positive
HairLen	HairType	HairCurl	HairText	HairAmt	HairDamg	Hnatural	Hnochemnoheat	Hnochemheat	hchem	hcolor	hperm	hbrazil	lastchem	preshairgrow	
whenpreshairgrow	Haircolor	Ltcolor	amtgray	timewash	timestyle	ltdandruff	ltdryscalp	ltitchysc	ltsenscalp	ltbreak	ltthin	ltloss	condandruff	condryscalp	conitchy	consenscalp


'
@@ ;

	  if age < 50 then output;  *selects observations that are less than age 50;

	  
run;
/*************************************************************/


libname myfiles 'C:\Users\Palma\Desktop\MDE_Hispanic';

/* DATA step obtains and prepares the data * */
data myfiles.questtranspose;
	 /* using this data file for input */
 	  infile "C:\Users\Palma\Desktop\MDE_Hispanic\H_PQuestionnaireData.csv"
	  firstobs=2 
       dsd; 
	  input Pred1-Pred299 @@;
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

proc print data=results1(obs=400);
run;


proc export data=results1
   outfile='c:\Users\Palma\Desktop\HispanicTranspose.csv'
   dbms=csv
   replace;
run;


/* DATA step obtains and prepares the data * */
data questtranspose;
	 /* using this data file for input */
 	  infile "C:\Users\Palma\Desktop\MDE_Hispanic\QuesHisRecoded.csv"
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
JA $ JB $ JC $ JD $ JE $ JF $ JG $ JH $ JI $ JJ $ JK $ JL $ JM $ JN $ JO $ JP $ JQ $ JR $ JS $ JT $ JU $ JV $ JW $ JX $ JY $ JZ $
KA $ KB $ KC $ KD $ KE $ KF $ KG $ KH $ KI $ KJ $ KK $ KL $ KM $ @@;

run;

proc print data=questtranspose;
run;

/*creates a new temporary dataset  using  the Permanent file*/
data results1;
   set questtranspose;
   array allobs{299} Pred1-Pred299 $; * create an array to hold all variables;
	  	do Predictor =1 to 299;  /* Perform this number of iterations of the steps below*/
	  			Subj =_N_ ;  * accumulator to track which Day ;
   /* place each entry from the current observation into an observation in the new variable*/
				Measurement = allobs(Predictor);	
		   output;
		end;
	keep Subj Predictor Measurement; * only show the following variables ; 
run;

proc print data=results1(obs=400);
run;



/* DATA step obtains and prepares the data * */
data questtranspose;
	 /* using this data file for input */
 	  infile "C:\Users\Palma\Desktop\MDE_Hispanic\QuesHisRecoded.csv"
	  firstobs=2 
       dsd; 
	  input A $ B $ C $ D $ E $ F $ G $ H $ I $ J $ K $ L $ M $ N $ O $ P $ Q $ R $ S $ T $ U $ V $ W $ X $ Y $ Z $
         AA $ AB $ AC $ AD $ AE $ AF $ AG $ AH $ AI $ AJ $ AK $ AL $ AM $ AN $ AO $ AP $ AQ $ AR $ AS $ AT $ AU $ AV $ AW $ AX $ AY $ AZ $
  BA $ BB $ BC $ BD $ BE $ BF $ BG $ BH $ BI $ BJ $ BK $ BL $ BM $ BN $ BO $ BP $ BQ $ BR $ BS $ BT $ BU $ BV $ BW $ BX $ BY $ BZ $
CA $ CB $ CC $ CD $ CE $ CF $ CG $ CH $ CI $ CJ $ CK $ CL $ CM $ CN $ CO $ CP $ CQ $ CR $ CS $ CT $ CU $ CV $ CW $ CX $ CY $ CZ $   
DA $ DB $ DC $ DD $ DE $ DF $ DG $ DH $ DI $ DJ $ DK $ DL $ DM $ DN $ DO $ DP $ DQ $ DR $ DS $ DT $ DU $ DV $ DW $ DX $ DY $ DZ $
EA $ EB $ EC $ ED $ EE $ EF $ EG $ EH $ EI $ EJ $ EK $ EL $ EM $ EN $ EO $ EP $ EQ $ ER $ ES $ ET $ EU $ EV $ EW $ EX $ EY $ EZ $
KA $ KB $ KC $ KD $ KE $ KF $ KG $ KH $ KI $  @@;

run;


proc print data=questtranspose;
run;

data results1;
   set questtranspose;
   array allobs{165} Pred1-Pred165 ; * create an array to hold all variables;
	  	do Predictor =1 to 165;  /* Perform this number of iterations of the steps below*/
	  			Subj =_N_ ;  * accumulator to track which Day ;
   /* place each entry from the current observation into an observation in the new variable*/
				Measurement = allobs(Predictor);	
		   output;
		end;
	keep Subj Predictor Measurement; * only show the following variables ; 
run;

proc print data=results1(obs=400);
run;
