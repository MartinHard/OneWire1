namespace $HW_hidden$

var_global
	$OneWire.Garaz.Temperature$, $OneWire.Puda.Temperature$, $OneWire.Obyvak.Temperature$, $UniPi_Extensions.xG18.Temperature_CH1$, $UniPi_Extensions.xG18.Temperature_CH2$, $UniPi_Extensions.xG18.Temperature_CH3$, $UniPi_Extensions.xG18.Temperature_CH4$, $UniPi_Extensions.xG18.Temperature_CH6$ : $int$ ;
	$tmp_real$ : $real$ ;
	$OneWire.Garaz.Temperature.transformation$ : $lib$.$core$.$v1_0$.$linear$ := ($k$ := 0.0625);
	$OneWire.Puda.Temperature.transformation$ : $lib$.$core$.$v1_0$.$linear$ := ($k$ := 0.0625);
	$OneWire.Obyvak.Temperature.transformation$ : $lib$.$core$.$v1_0$.$linear$ := ($k$ := 0.0625);
	$UniPi_Extensions.xG18.Temperature_CH1.transformation$ : $lib$.$core$.$v1_0$.$linear$ := ($K$ := 0.01);
	$UniPi_Extensions.xG18.Temperature_CH2.transformation$ : $lib$.$core$.$v1_0$.$linear$ := ($K$ := 0.01);
	$UniPi_Extensions.xG18.Temperature_CH3.transformation$ : $lib$.$core$.$v1_0$.$linear$ := ($K$ := 0.01);
	$UniPi_Extensions.xG18.Temperature_CH4.transformation$ : $lib$.$core$.$v1_0$.$linear$ := ($K$ := 0.01);
	$UniPi_Extensions.xG18.Temperature_CH6.transformation$ : $lib$.$core$.$v1_0$.$linear$ := ($K$ := 0.01);
end_var

program f_transform
		$tmp_real$ := $OneWire.Garaz.Temperature.transformation$.Forward(in := $OneWire.Garaz.Temperature$);

		$hw$.$garaz_temperature$ := $tmp_real$;


		$tmp_real$ := $OneWire.Puda.Temperature.transformation$.Forward(in := $OneWire.Puda.Temperature$);

		$hw$.$puda_temperature$ := $tmp_real$;


		$tmp_real$ := $OneWire.Obyvak.Temperature.transformation$.Forward(in := $OneWire.Obyvak.Temperature$);

		$hw$.$obyvak_temperature$ := $tmp_real$;


		$tmp_real$ := $UniPi_Extensions.xG18.Temperature_CH1.transformation$.Forward(in := $UniPi_Extensions.xG18.Temperature_CH1$);

		$hw$.$xg18_sever$ := $tmp_real$;


		$tmp_real$ := $UniPi_Extensions.xG18.Temperature_CH2.transformation$.Forward(in := $UniPi_Extensions.xG18.Temperature_CH2$);

		$hw$.$xg18_garaz$ := $tmp_real$;


		$tmp_real$ := $UniPi_Extensions.xG18.Temperature_CH3.transformation$.Forward(in := $UniPi_Extensions.xG18.Temperature_CH3$);

		$hw$.$xg18_kotel_vystup$ := $tmp_real$;


		$tmp_real$ := $UniPi_Extensions.xG18.Temperature_CH4.transformation$.Forward(in := $UniPi_Extensions.xG18.Temperature_CH4$);

		$hw$.$xg18_kotel_vratka$ := $tmp_real$;


		$tmp_real$ := $UniPi_Extensions.xG18.Temperature_CH6.transformation$.Forward(in := $UniPi_Extensions.xG18.Temperature_CH6$);

		$hw$.$xg18_temperature_ch6$ := $tmp_real$;


end_program
program r_transform
end_program
program init_transform

end_program
program finish_transform

end_program
end_namespace