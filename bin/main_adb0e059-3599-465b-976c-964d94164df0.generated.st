program main
var 
	//5cde0bde-046d-482f-b21a-4e69f62760f5
	$B86_Filter$ : Lib.Core.V1_0.B86_Filter := ($InDT$ := 300);
	//a167934c-f520-444d-90d5-09121bfb08ce
	$B86_Filter_1$ : Lib.Core.V1_0.B86_Filter := ($InDT$ := 300);
	//ba6a98ef-84b8-4927-8d48-c4876ba327d4
	$B86_Filter_2$ : Lib.Core.V1_0.B86_Filter := ($InDT$ := 300);
	//313aaf24-34c8-4f4c-91fc-fed5face7d61
	$B86_Filter_0$ : Lib.Core.V1_0.B86_Filter := ($InDT$ := 900);
	//18a88610-fd0c-4aa4-a152-f0eafb57e25c
	$Out_Temp_source$ : bool;
	//4f34d7f7-61a2-4a90-9e12-25ef5c6536af
	$BD2_Pulse_Generator$ : Lib.Core.V1_1.BD2_Pulse_Generator := ($Ttrue$ := t#200ms);
	//584cc2bb-cae6-4f14-a697-209d7d71b442
	$B86_Filter_4$ : Lib.Core.V1_0.B86_Filter := ($InDT$ := 900);
	//d87c7b80-ef1a-4e36-a3f9-5320ae6ee38d
	$BD2_Pulse_Generator_0$ : Lib.Core.V1_1.BD2_Pulse_Generator := ($Ttrue$ := t#200ms, $Tfalse$ := t#10m);
	//6f0ca8a7-8840-431d-be3b-cd94ffc8ab97
	$BD30_Counter$ : Lib.Core.V1_0.BD30_Counter := ($Maximum$ := 100000);
	//73b47691-b067-408b-abd6-51666cf5350f
	$B86_Filter_5$ : Lib.Core.V1_0.B86_Filter := ($InDT$ := 900);
	//b7708691-d97a-40fd-aa6b-17dd57257923
	$B86_Filter_6$ : Lib.Core.V1_0.B86_Filter := ($InDT$ := 900);
	//b332a17b-baaa-4431-a010-243c4668b2ad
	$Control$ : bool := True;
	//d638ab36-48bb-4bf8-8223-26aee19a7ab1
	$SV_Dole$ : bool;
	//1d25b684-90c1-43ee-8824-954d7ebf40cb
	$Toggle$ : Lib.Core.v1_0.Toggle;
	//29ae761f-2181-4c79-b237-a8c515b4b693
	$R_TRIG$ : R_TRIG;
	//18abcd9c-6ff8-4fb7-8789-e1b0590448ac
	$R_TRIG_0$ : R_TRIG;
	//f33fc37d-8b76-4052-811b-dbeb5da2df75
	$R_TRIG_1$ : R_TRIG;
	//ba74af6e-9d12-4e99-8726-964022978b5a
	$Toggle_0$ : Lib.Core.v1_0.Toggle;
	//461c01a8-2856-4761-b88d-f527415b6b16
	$F_TRIG$ : F_TRIG;
	//54a34b22-6cf0-44bf-812a-c63f214f7701
	$F_TRIG_0$ : F_TRIG;
	//b996ed95-c64f-4fa0-8d1c-3e17913611d8
	$F_TRIG_1$ : F_TRIG;
	//19406293-37ab-4df3-8d04-cdab7e3068ec
	$Toggle_1$ : Lib.Core.v1_0.Toggle;
	//44d07692-f819-4a2c-b2ff-a503a5ba43f7
	$Toggle_2$ : Lib.Core.v1_0.Toggle;
	//426f5150-95fb-4ebf-80dd-a38dce392112
	$F_TRIG_2$ : F_TRIG;
	//5675137a-e687-4b49-bdaf-83360e62c742
	$R_TRIG_2$ : R_TRIG;
	//2c48fb98-42bd-4627-9eb4-a5e80eb75b1c
	$F_TRIG_3$ : F_TRIG;
	//6c113c81-ce1c-4ef7-afe4-6a7c51f0ce8a
	$R_TRIG_3$ : R_TRIG;
	//f34b35bf-c017-4a40-aee6-292769fd5fd1
	$CTU$ : CTU;
	//e0424f4d-6382-4b3a-8ff0-d918df552255
	$Vodomer_konstanta$ : int := 5;
	//422b16a6-459a-4671-b857-18ad294b4362
	$dummy_jih$ : real := 5;
	//cabd8799-9402-43d5-a470-c2025a0ea019
	$B31_Reverse_On_Off_Control_Sequence$ : Lib.Core.V1_1.B31_Reverse_On_Off_Control_Sequence := ($ControllerType$ := $lib$.$core$.$v1_0$.$controllertype$#Heating, $Xp$ := 0.5);
	//40375f77-e3a4-41cc-bd24-29e751776733
	$TOF$ : TOF := ($PT$ := t#5m);
	//9a3b1426-e3b8-4596-af2d-1dd6e073669c
	$TempHysteresis$ : real := 0.5;
	//3e7e0611-e95f-4f3a-a69e-6ed24ef2e8ca
	$BD12_SwitchOnDelay$ : Lib.Core.V1_1.BD12_SwitchOnDelay := ($Ton$ := t#15m);
	//09f9405b-1461-453a-ac01-03c8acdd049c
	$RS$ : RS;
	//a337d0db-7132-4f60-a437-0c581623e8b8
	$RozdilVstupu$ : real := -2;
	//3111b5d6-c8e5-47aa-9eb7-826b0d254ce6
	$BD12_SwitchOnDelay_0$ : Lib.Core.V1_1.BD12_SwitchOnDelay := ($Ton$ := t#3s);
	//bb9059a5-cf22-443e-8357-b57e9ef18c35
	$Toggle_3$ : Lib.Core.v1_0.Toggle;
	//103a3df7-7f7f-47bb-b059-83ee745dbf2a
	$BD2_Pulse_Generator_1$ : Lib.Core.V1_1.BD2_Pulse_Generator := ($Ttrue$ := t#500ms, $Pausing$ := False);
	//0bbeabad-9194-47c3-abf0-ba2196e7f507
	$BD2_Pulse_Generator_2$ : Lib.Core.V1_1.BD2_Pulse_Generator := ($Ttrue$ := t#500ms);
	//4188fa3e-c549-4151-848c-b0ac5a2d575f
	$T17_Boolean_Scheduler$ : Lib.Hvac.V1_0.T17_Boolean_Scheduler := (tpgvalue := [(starttime := 0, state := False), (starttime := 480, state := True), (starttime := 600, state := False), (starttime := 1320, state := True), (starttime := 1420, state := False), (starttime := 1920, state := True), (starttime := 2040, state := False), (starttime := 2760, state := True), (starttime := 2860, state := False), (starttime := 3360, state := True), (starttime := 3480, state := False), (starttime := 4200, state := True), (starttime := 4300, state := False), (starttime := 4800, state := True), (starttime := 4920, state := False), (starttime := 5640, state := True), (starttime := 5740, state := False), (starttime := 6240, state := True), (starttime := 6360, state := False), (starttime := 7080, state := True), (starttime := 7180, state := False), (starttime := 7680, state := True), (starttime := 7800, state := False), (starttime := 8520, state := True), (starttime := 8620, state := False), (starttime := 9120, state := True), (starttime := 9240, state := False), (starttime := 9960, state := True), (starttime := 10060, state := False), 13((starttime := 65535, state := False))],exceptions := [10((starttime := 0, endtime := 0, state := False))]);
	//f24a1a46-ffea-4dd8-9772-2561d7c66895
	$TOF_0$ : TOF := ($PT$ := t#1m);
	//802d758d-d051-4909-a5ba-aa8d1832bf5d
	$MonostableFlipFlop$ : Lib.Core.V1_0.MonostableFlipFlop := ($Delay$ := t#4s);
end_var
var retain
	//7fddf370-61fe-4520-b474-72f1cfe70b07
	$FVE_EnergyToday$ : real := 0;
end_var
var
	$tmparg_3$ : real;
	$tmparg_4$ : bool;
	$tmparg_35$ : bool;
	$tmparg_14$ : real;
	$tmparg_15$ : bool;
	$tmparg_16$ : bool;
	$tmparg_17$ : bool;
	$tmparg_18$ : sint;
	$tmparg_19$ : sint;
	$tmparg_20$ : bool;
	$tmparg_21$ : bool;
	$tmparg_22$ : bool;
	$tmparg_23$ : real;
	$tmparg_24$ : real;
	$tmparg_25$ : bool;
	$tmparg_26$ : bool;
	$tmparg_27$ : real;
	$tmparg_28$ : bool;
	$tmparg_29$ : int;
	$tmparg_43$ : bool;
	$tmparg_30$ : real;
	$tmparg_31$ : bool;
	$tmparg_34$ : bool;
	$tmparg_40$ : bool;
	$tmparg_36$ : bool;
	$tmparg_37$ : bool;
	$tmparg_38$ : bool;
	$tmparg_39$ : bool;
	$tmparg_41$ : bool;
	$tmparg_42$ : bool;
	$tmparg_49$ : bool;
	$tmparg_50$ : bool;
	$tmparg_51$ : bool;
	$tmparg_44$ : bool;
end_var

	//24a3fed0-ae67-458f-82b8-94c2e35b1952

	//780350b6-1eac-448e-a14c-448f872134e6
	$tmparg_50$ := $not$($in$ := $hw$.$Neuron L523_SSR_SV_VstupChodba$);
	//802d758d-d051-4909-a5ba-aa8d1832bf5d
	$MonostableFlipFlop$($In$ := $tmparg_50$);
	//6484d061-c46a-4a7a-91a7-e9c17658936a
	$tmparg_51$ := $not$($in$ := $MonostableFlipFlop$.$Out$);
	//b03e2011-e24a-402d-b2a3-0b6a4994ace0

	//fbb06786-79d5-4325-9631-805ceccb5a99

	//15eb4c63-4870-4968-aa90-18e9e0bfe98d
	$tmparg_44$ := $and$($in1$ := $hw$.$Neuron L523_PIR_VstupChodba$, $in2$ := $tmparg_51$);
	//d33752d9-c726-480c-8c0b-37c271c3a3fe
	$tmparg_49$ := $to_bool$($in1$ := $tmparg_44$);
	//f24a1a46-ffea-4dd8-9772-2561d7c66895
	$TOF_0$($IN$ := $tmparg_49$);
	//f8e61d33-61b6-40fb-a13f-89f9b45e01c2
	$VypnutiChodba$ := $TOF_0$.$ET$
	//4e4a267f-f7e3-4b5f-8678-aaabc8ec3d0f
	$hw$.$Neuron L523_SSR_SV_VstupChodba$ := $TOF_0$.$Q$
	//4188fa3e-c549-4151-848c-b0ac5a2d575f
	$T17_Boolean_Scheduler$();
	//779095a4-6fdd-4dad-87ef-75234da82d36

	//0bbeabad-9194-47c3-abf0-ba2196e7f507
	$BD2_Pulse_Generator_2$($Enable$ := $Zavrit_kousek$);
	//8e8bd1fa-9b05-423f-b383-fb3a3a06802f

	//103a3df7-7f7f-47bb-b059-83ee745dbf2a
	$BD2_Pulse_Generator_1$($Enable$ := $Otevrit_kousek$);
	//33d0fadc-09df-4691-b576-b0442fb8afa8

	//a283f9e8-1aab-41f9-aefc-4922458c8b64
	$tmparg_41$ := $or$($in1$ := $Zaluzie_Zavrit$, $in2$ := $BD2_Pulse_Generator_2$.$Out$);
	//4453c8f6-fff8-4624-9165-3dd5323674ce
	$tmparg_36$ := $not$($in$ := $Zaluzie_Zavrit$);
	//e1934a3d-6598-4500-bb05-20c17a4f8063

	//74226af6-907a-494f-bf5d-564f8db33cf5
	$tmparg_40$ := $or$($in1$ := $BD2_Pulse_Generator_1$.$Out$, $in2$ := $Zaluzie_Otevrit$);
	//08ec04c9-d0b1-4f49-b705-b71b2926f4b7
	$tmparg_37$ := $and$($in1$ := $tmparg_40$, $in2$ := $tmparg_36$);
	//a0a58296-2a66-4a06-9cd3-80e4cbf3f9f5
	$hw$.$Neuron L523_Zaluzie_P_Otevrit$ := $tmparg_37$
	//6a33a01b-d751-4b9f-a348-9a9037759779
	$tmparg_39$ := $not$($in$ := $Zaluzie_Otevrit$);
	//43d00539-b1bd-4fe6-980a-137a71670e5d
	$tmparg_38$ := $and$($in1$ := $tmparg_39$, $in2$ := $tmparg_41$);
	//bd332205-41a8-4dfa-9e92-5bfebe691f7a
	$hw$.$Neuron L523_Zaluzie_P_Zavrit$ := $tmparg_38$
	//a337d0db-7132-4f60-a437-0c581623e8b8

	//a1ff3b4c-df85-4345-87d7-376b49903130

	//38f9515f-c2ad-4f4a-8e34-3d61e3b0582a

	//3dbc5f77-6ec0-4f7e-a1e2-84bc32498f51
	$tmparg_34$ := $gt$($in1$ := $Temp_Venku$, $in2$ := $Obyvak_filtered$);
	//68a50005-4734-428c-b013-dde53f7fc997
	$tmparg_30$ := $sub$($in1$ := $Temp_Venku$, $in2$ := $Obyvak_filtered$);
	//9c584f40-c30f-4533-917b-91f848c58819
	$tmparg_31$ := $le$($in1$ := $tmparg_30$, $in2$ := $RozdilVstupu$);
	//09f9405b-1461-453a-ac01-03c8acdd049c
	$RS$($S$ := $tmparg_31$, $R1$ := $tmparg_34$);
	//5025d92a-a830-4fbc-9c77-2e7077b50570

	//c88dd8b5-9da5-4a0f-968c-b3df2d40e6ec
	$tmparg_42$ := $or$($in1$ := $T17_Boolean_Scheduler$.$Out$, $in2$ := $RekuperaceRucne$);
	//35447624-2a74-46e1-9020-c9ed14bb2593

	//8b6b38ab-30e6-49ee-8833-2e0204abd362
	$tmparg_43$ := $sel$($g$ := $RezimRekuperace$, $in0$ := $tmparg_42$, $in1$ := $RS$.$Q1$);
	//d80d1f84-6750-44a4-acaf-e0c0adf2606a
	$hw$.$Neuron L523_Rekuperace$ := $tmparg_43$
	//d55c9ad5-5ffe-453d-82d1-fb230085a569

	//9a3b1426-e3b8-4596-af2d-1dd6e073669c

	//d5ef6bb5-e86e-48b3-8bc0-3fed57cdd5d3

	//ba6a98ef-84b8-4927-8d48-c4876ba327d4
	$B86_Filter_2$($In$ := $hw$.$xG18_Sever$);
	//db49d21d-8834-4174-9f8d-062dd89330bc
	$Temp_Sever_Filtered$ := $B86_Filter_2$.$Out$
	//fd79c4ab-5095-4c2f-8ec2-4539fbd333e7

	//f32f52d2-d517-4465-a637-2225afcb775c

	//207f5faa-2cd0-4d99-a5a8-3f38a00aa172

	//cabd8799-9402-43d5-a470-c2025a0ea019
	$B31_Reverse_On_Off_Control_Sequence$($x$ := $Obyvak_filtered$, $w$ := $SetTemp$, $Xp$ := $TempHysteresis$);
	//3e7e0611-e95f-4f3a-a69e-6ed24ef2e8ca
	$BD12_SwitchOnDelay$($In$ := $B31_Reverse_On_Off_Control_Sequence$.$Out$);
	//40375f77-e3a4-41cc-bd24-29e751776733
	$TOF$($IN$ := $BD12_SwitchOnDelay$.$Out$);
	//151b5456-aeac-44a8-a76a-646df16f8e77
	$hw$.$Neuron L523_Cerpadlo_1NP$ := $TOF$.$Q$
	//c6e7dce3-3412-4eb6-a866-d07572e52fef
	$hw$.$device_Kotel$ := $BD12_SwitchOnDelay$.$Out$
	//422b16a6-459a-4671-b857-18ad294b4362

	//a167934c-f520-444d-90d5-09121bfb08ce
	$B86_Filter_1$($In$ := $dummy_jih$);
	//04be8cf4-64ca-49ea-a85c-cb55f5d917b5
	$tmparg_4$ := $gt$($in1$ := $B86_Filter_1$.$Out$, $in2$ := $B86_Filter_2$.$Out$);
	//18a88610-fd0c-4aa4-a152-f0eafb57e25c
	$Out_Temp_source$ := $tmparg_4$
	//66bfe598-58bc-4908-bf14-937592c99c27
	$tmparg_3$ := $sel$($g$ := $tmparg_4$, $in0$ := $B86_Filter_2$.$Out$, $in1$ := $B86_Filter_2$.$Out$);
	//7693fde8-9f6e-45d5-b3f1-bfb6f428868b
	$Temp_Venku$ := $tmparg_3$
	//1d3cd2d5-c4c3-4bd8-ba0b-f55aaa05a47c
	$Temp_Jih_Filtered$ := $B86_Filter_1$.$Out$
	//e0424f4d-6382-4b3a-8ff0-d918df552255

	//c23cbbfa-1937-471b-946f-56925422e297

	//6c113c81-ce1c-4ef7-afe4-6a7c51f0ce8a
	$R_TRIG_3$($CLK$ := $hw$.$Neuron L523_Vodomer_IN$);
	//2c48fb98-42bd-4627-9eb4-a5e80eb75b1c
	$F_TRIG_3$($CLK$ := $hw$.$Neuron L523_Vodomer_IN$);
	//e72dad55-3f36-4356-812e-a42d99596089
	$tmparg_28$ := $or$($in1$ := $F_TRIG_3$.$Q$, $in2$ := $R_TRIG_3$.$Q$);
	//f34b35bf-c017-4a40-aee6-292769fd5fd1
	$CTU$($CU$ := $tmparg_28$);
	//941142df-eb4a-45bf-89e0-a8db69761c4f
	$tmparg_29$ := $mul$($in1$ := $CTU$.$CV$, $in2$ := $Vodomer_konstanta$);
	//18ac301a-a74d-44c0-a104-4dcb2fb0e546
	$Vodomer_litry$ := $tmparg_29$
	//31ae946f-ad43-430c-a9ab-33bb02059dff

	//e7bbe84a-c860-4256-a6d8-fecb3588b79c

	//78c97f1a-e206-45fa-8092-6b82a4699d9d

	//b7708691-d97a-40fd-aa6b-17dd57257923
	$B86_Filter_6$($In$ := $hw$.$xG18_Kotel_vystup$);
	//1a572081-4575-4f38-9df2-0034ee419e01
	$TempPD$ := $B86_Filter_6$.$Out$
	//4f595416-bb5e-4b2b-a103-bbade29ba576

	//73b47691-b067-408b-abd6-51666cf5350f
	$B86_Filter_5$($In$ := $hw$.$xG18_Kotel_vratka$);
	//c00a8bab-d852-4b0d-832a-f2964f22e2a0
	$Temp_Pracovna$ := $B86_Filter_5$.$Out$
	//ed4e0de8-52ce-40b9-97ae-0f49894dd9fd

	//4fbad65a-f3b8-466f-9101-5d493997a156

	//c72570bf-1f9c-40f0-8821-6ee5d4317264

	//d0091284-3ef0-44ad-bf4e-830f07c67ad4

	//ff8cb946-1f03-41a5-82f5-e4ae8be13b57

	//553cedb8-c9b9-4d34-a5e4-03d6514a5532
	$tmparg_26$ := $or$($in1$ := $hw$.$Neuron L523_SSR_SV_HorniChodba$, $in2$ := $hw$.$Neuron L523_SSR_SV_Terasa$, $in3$ := $hw$.$Neuron L523_RO_2x01$, $in4$ := $hw$.$Neuron L523_RO_2x02$, $in5$ := $hw$.$Neuron L523_SV_PredGaraz$, $in6$ := $hw$.$Neuron L523_SSR_SV_Terasa$, $in7$ := $hw$.$Neuron L523_SSR_SV_VstupChodba$);
	//479f8151-7383-4954-80e2-73ff22228908
	$Svetla_sviti$ := $tmparg_26$
	//01699c2f-7cf1-4a63-8dd0-e188ec6af196

	//5675137a-e687-4b49-bdaf-83360e62c742
	$R_TRIG_2$($CLK$ := $DI_3_4_Virtual$);
	//426f5150-95fb-4ebf-80dd-a38dce392112
	$F_TRIG_2$($CLK$ := $DI_3_4_Virtual$);
	//a97ee98b-7e1c-4709-a43a-733c1996ef08

	//534dca9b-9712-47c1-b655-2c0188e6b33c
	$tmparg_25$ := $or$($in1$ := $hw$.$Neuron L523_DI_3_4$, $in2$ := $R_TRIG_2$.$Q$, $in3$ := $F_TRIG_2$.$Q$);
	//44d07692-f819-4a2c-b2ff-a503a5ba43f7
	$Toggle_2$($In$ := $tmparg_25$);
	//7fd579ce-0d37-40ac-9c06-363f841f24ca
	$hw$.$Neuron L523_SSR_SV_HorniChodba$ := $Toggle_2$.$Out$
	//6c417853-b1cf-408c-b00d-00007684a264

	//b8d6d557-bc67-4967-973b-906316b145f0

	//9e413e9f-f3e3-4245-8fdb-2ad3c07a1ec9
	$tmparg_24$ := $sub$($in1$ := $hw$.$SDM120M_FVE_FVE_Energy$, $in2$ := $FVE_EnergyToday$);
	//517b6231-3e02-422a-92e3-001d84540738
	$FVE_DayProducing$ := $tmparg_24$
	//da0fe2db-d330-46fd-bca4-c2f8efb1cd46

	//795e59b8-7e32-46fe-b74c-64f93c280d4e

	//59affb25-edc8-45e5-a1ae-ac7f5426cc90
	$Lib$.$Core$.$V1_0$.$B99_PCTimeNode$($Min$ => $tmparg_19$, $Hour$ => $tmparg_18$);
	//1ae66429-cd5a-41b0-9559-eff3a30fe7b5
	$tmparg_20$ := $eq$($in1$ := $tmparg_19$, $in2$ := 0);
	//5558442d-352f-4981-809a-d2d256bd5e0b
	$tmparg_21$ := $eq$($in1$ := $tmparg_18$, $in2$ := 0);
	//27e8b26e-0708-4b7e-91c8-b9e654b60240
	$tmparg_22$ := $and$($in1$ := $tmparg_20$, $in2$ := $tmparg_21$);
	//f67eabd7-fd06-4d7e-b8df-103c7064d199
	$tmparg_23$ := $sel$($g$ := $tmparg_22$, $in0$ := $FVE_EnergyToday$, $in1$ := $hw$.$SDM120M_FVE_FVE_Energy$);
	//7fddf370-61fe-4520-b474-72f1cfe70b07
	$FVE_EnergyToday$ := $tmparg_23$
	//e783375d-1538-4cc1-ae26-892c95049a7e

	//b996ed95-c64f-4fa0-8d1c-3e17913611d8
	$F_TRIG_1$($CLK$ := $DI_3_3_virtual$);
	//f33fc37d-8b76-4052-811b-dbeb5da2df75
	$R_TRIG_1$($CLK$ := $DI_3_3_virtual$);
	//368f0708-aa48-4410-8d01-b9484176dd87

	//54a34b22-6cf0-44bf-812a-c63f214f7701
	$F_TRIG_0$($CLK$ := $DI_3_2_virtual$);
	//18abcd9c-6ff8-4fb7-8789-e1b0590448ac
	$R_TRIG_0$($CLK$ := $DI_3_2_virtual$);
	//cdc0162f-a4c7-466a-950d-8caa30ca4cb2

	//f4cb1257-2f41-4679-bca4-2695098c5002
	$tmparg_17$ := $or$($in1$ := $hw$.$Neuron L523_DI_3_3$, $in2$ := $R_TRIG_1$.$Q$, $in3$ := $F_TRIG_1$.$Q$);
	//19406293-37ab-4df3-8d04-cdab7e3068ec
	$Toggle_1$($In$ := $tmparg_17$);
	//931a2353-1003-4d0d-aef4-b3f5b1f39717
	$hw$.$Neuron L523_RO_2x02$ := $Toggle_1$.$Out$
	//a6f25973-2a88-4fa6-8a3d-f36e91dc946e

	//1a0fd2d0-90d6-4fab-abbf-0d21bfa9371a
	$tmparg_16$ := $or$($in1$ := $hw$.$Neuron L523_DI_3_2$, $in2$ := $R_TRIG_0$.$Q$, $in3$ := $F_TRIG_0$.$Q$);
	//ba74af6e-9d12-4e99-8726-964022978b5a
	$Toggle_0$($In$ := $tmparg_16$);
	//292adbd4-b07d-4304-bc5a-1abb09fff730
	$hw$.$Neuron L523_RO_2x01$ := $Toggle_0$.$Out$
	//e360f9ee-9e3e-46d1-8737-141dc4ee8a65

	//5cde0bde-046d-482f-b21a-4e69f62760f5
	$B86_Filter$($In$ := $hw$.$Obyvak_Temperature$);
	//a0b45855-51f6-443b-9a21-8d5402f791bd
	$Obyvak_filtered$ := $B86_Filter$.$Out$
	//124a4f4e-afac-4471-970e-9bdb6cf514e9

	//584cc2bb-cae6-4f14-a697-209d7d71b442
	$B86_Filter_4$($In$ := $hw$.$Puda_Temperature$);
	//d263ac8c-9837-4eb0-8971-4d58e4e120f6
	$Temp_Puda$ := $B86_Filter_4$.$Out$
	//4cf2528a-ec0d-495b-a30d-68862af29b67

	//333a989f-b7f9-4aca-9ed0-1ce3a2162c74

	//313aaf24-34c8-4f4c-91fc-fed5face7d61
	$B86_Filter_0$($In$ := $hw$.$Garaz_Temperature$);
	//a46eeb1c-b649-407d-92dc-fd87985f1340
	$Garaz_filtered$ := $B86_Filter_0$.$Out$
	//d638ab36-48bb-4bf8-8223-26aee19a7ab1

	//461c01a8-2856-4761-b88d-f527415b6b16
	$F_TRIG$($CLK$ := $SV_Dole$);
	//29ae761f-2181-4c79-b237-a8c515b4b693
	$R_TRIG$($CLK$ := $SV_Dole$);
	//25717c94-91c0-4ea6-af34-e7c5d9e92442

	//3111b5d6-c8e5-47aa-9eb7-826b0d254ce6
	$BD12_SwitchOnDelay_0$($In$ := $hw$.$Neuron L523_DI_3_1$);
	//bb9059a5-cf22-443e-8357-b57e9ef18c35
	$Toggle_3$($In$ := $BD12_SwitchOnDelay_0$.$Out$);
	//3d86e0ed-e142-4564-a2bf-9da9c22916a7
	$tmparg_15$ := $or$($in1$ := $hw$.$Neuron L523_DI_3_1$, $in2$ := $R_TRIG$.$Q$, $in3$ := $F_TRIG$.$Q$);
	//1d25b684-90c1-43ee-8824-954d7ebf40cb
	$Toggle$($In$ := $tmparg_15$);
	//a6408f0e-0256-46c2-ab8f-68d432ecba35
	$hw$.$Neuron L523_SSR_SvetlaDole$ := $Toggle$.$Out$
	//1bb11055-eaff-424e-a4e0-0c2af87f9b8e

	//5329997c-61ed-4a1a-9eec-c9dc487d2eac
	$tmparg_14$ := $mul$($in1$ := $hw$.$SDM120M_FVE_FVE_Pwr$, $in2$ := -0.001);
	//cd241eee-1cf3-4283-855c-df7b8b29f51a
	$tmparg_27$ := $add$($in1$ := $tmparg_14$, $in2$ := $hw$.$Pro380-Mod_Total_Active_power$);
	//32d1db76-c847-408b-88f6-4e8523a0452c
	$Power_Consumption$ := $tmparg_27$
	//96c963dc-a9d9-4831-91fb-bae13f57f184
	$FVE_Power$ := $tmparg_14$
	//b332a17b-baaa-4431-a010-243c4668b2ad

	//eebb5102-8592-4278-9e24-b22001eb15a1
	$hw$.$Neuron L523_OneWireControl$ := $Control$
	//d87c7b80-ef1a-4e36-a3f9-5320ae6ee38d
	$BD2_Pulse_Generator_0$();
	//6f0ca8a7-8840-431d-be3b-cd94ffc8ab97
	$BD30_Counter$($bx$ := $BD2_Pulse_Generator_0$.$Out$);
	//aafb794e-e18f-4bb0-84a7-8c57c6fff8bd
	$RunCnt$ := $BD30_Counter$.$Out$
	//11e692d2-5a98-4e89-87ed-ec18585d1b70

	//135e5423-0ecf-403a-b689-af96e909d3da
	$tmparg_35$ := $or$($in1$ := $Toggle_3$.$Out$, $in2$ := $OVL_SV_Predgaraz$);
	//12563201-4be1-4267-8bfc-680e25118224
	$hw$.$Neuron L523_SV_PredGaraz$ := $tmparg_35$
	//afb42faa-ef7b-4af8-b3aa-5fd3c7b2f585

	//fdf028f8-9497-45dd-9225-4305a303992f
	$hw$.$Neuron L523_SSR_SV_Terasa$ := $OVL_SV_Terasa$
	//4f34d7f7-61a2-4a90-9e12-25ef5c6536af
	$BD2_Pulse_Generator$();
	//f21f3af9-e95e-4ab8-95c2-6e7163af74fc
	$hw$.$device_ULED_1.01$ := $BD2_Pulse_Generator$.$Out$
	//98a23b36-4c48-4781-80a4-ebb9c63ce05c
	$hw$.$Neuron L523_ULED_1.03_w$ := $BD2_Pulse_Generator$.$Out$
	//271139bd-48f7-49d3-affa-0724b7575ce8
	$hw$.$Neuron L523_ULED_1.01_w$ := $BD2_Pulse_Generator$.$Out$
end_program
