#<<<<<<< HEAD:2.PuroPalabraAlejandra.pl
###############################################################################
sub CadToArraySinR{
	my ($palabra)= @_;
	my @arreglo= split("",$palabra);
	foreach $caracter ( @arreglo ) {
		push @nuevo_array, $caracter if not $visto_antes{$caracter}++;
	}
	my $string = join("",@nuevo_array);
}

sub generarAlfabeto{
	my($desplazamiento)=@_;
	my $alfabeto="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	my $cantEle=length($alfabeto);
	my $previa2=""; my $previa="";
	if ($desplazamiento<=$cantEle){
		$previa=substr($alfabeto,$desplazamiento,$cantEle);
		$previa2=substr($alfabeto,0,$desplazamiento);
	}else{
		my $nuevapos= $desplazamiento % $cantEle;
		$previa=substr($alfabeto,$nuevapos+1,$cantEle);
		$previa2=substr($alfabeto,0,$nuevapos+1);
	}
	$alfabetoG= $previa."".$previa2."\n";
}

sub generarAlfConPalD{
	my ($palabra,$desplazamiento)=@_;
	my $newpalabra=CadToArraySinR($palabra);
	my $alfabetoD=generarAlfabeto($desplazamiento);
	my $newpalabra1="";
	
	#concatenamos
	$newpalabra1=$newpalabra.$alfabetoD;
	
	#eliminamos repetidos 
	my $nuevo_alf=CadToArraySinR($newpalabra1);
}

#########################################################################################################

##ALGORITMO PRINCIPAL
sub cifrarCesarP{
	my ($mensaje,$palabra,$desplazamiento)=@_;
	#utilizando el split para separar letra por letra 
	my @names= split("",$mensaje);
	my $alfabeto="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	my @alfb= split("",$alfabeto);
	my $NAlfA =generarAlfConPalD($palabra,$desplazamiento);
	my @NAlf= split("",$NAlfA);
	my $newcad="";
	
	#cifrar
		foreach my $i (0 .. $#names) {
		  foreach my $j(0 .. $#NAlf){
			if($names[$i]eq $NAlf[$j]){
				$newcad=$newcad.$alfb[$j];
			}
		  }
		}

	return $newcad;
}
#$mensaje,$palabra,$desplazamiento
cifrarCesarP("HOLACOMOESTAS","CASA",15);


sub descifrarCesarP{
	my ($mensaje,$palabra,$desplazamiento)=@_;
	#utilizando el split para separar letra por letra 
	my @names= split("",$mensaje);
	my $alfabeto="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	my @alfb= split("",$alfabeto);
	my $NAlfA =generarAlfConPalD($palabra,$desplazamiento);
	my @NAlf= split("",$NAlfA);
	my $newcad="";
	
	#descifrar
		foreach my $i (0 .. $#names) {
		  foreach my $j(0 .. $#alfb){
			if($names[$i]eq $alfb[$j]){
				$newcad=$newcad.$NAlf[$j];
			}
		  }
		}
	
	return $newcad;
}
#$mensaje,$palabra,$desplazamiento,$sw
=======
###############################################################################
sub CadToArraySinR{
	my ($palabra)= @_;
	my @arreglo= split("",$palabra);
	foreach $caracter ( @arreglo ) {
		push @nuevo_array, $caracter if not $visto_antes{$caracter}++;
	}
	my $string = join("",@nuevo_array);
}

sub generarAlfabeto{
	my($desplazamiento)=@_;
	my $alfabeto="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	my $cantEle=length($alfabeto);
	my $previa2=""; my $previa="";
	if ($desplazamiento<=$cantEle){
		$previa=substr($alfabeto,$desplazamiento,$cantEle);
		$previa2=substr($alfabeto,0,$desplazamiento);
	}else{
		my $nuevapos= $desplazamiento % $cantEle;
		$previa=substr($alfabeto,$nuevapos+1,$cantEle);
		$previa2=substr($alfabeto,0,$nuevapos+1);
	}
	$alfabetoG= $previa."".$previa2."\n";
}

sub generarAlfConPalD{
	my ($palabra,$desplazamiento)=@_;
	my $newpalabra=CadToArraySinR($palabra);
	my $alfabetoD=generarAlfabeto($desplazamiento);
	my $newpalabra1="";
	
	#concatenamos
	$newpalabra1=$newpalabra.$alfabetoD;
	
	#eliminamos repetidos 
	my $nuevo_alf=CadToArraySinR($newpalabra1);
}

#########################################################################################################

##ALGORITMO PRINCIPAL
sub cifrarCesarP{
	my ($mensaje,$palabra,$desplazamiento,$sw)=@_;
	#utilizando el split para separar letra por letra 
	my @names= split("",$mensaje);
	my $alfabeto="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	my @alfb= split("",$alfabeto);
	my $NAlfA =generarAlfConPalD($palabra,$desplazamiento);
	my @NAlf= split("",$NAlfA);
	my $newcad="";
	
	#cifrar
		foreach my $i (0 .. $#names) {
		  foreach my $j(0 .. $#NAlf){
			if($names[$i]eq $NAlf[$j]){
				$newcad=$newcad.$alfb[$j];
			}
		  }
		}

	print $newcad;
}
#$mensaje,$palabra,$desplazamiento
cifrarCesarP("HOLACOMOESTAS","CASA",15);


sub descifrarCesarP{
	my ($mensaje,$palabra,$desplazamiento,$sw)=@_;
	#utilizando el split para separar letra por letra 
	my @names= split("",$mensaje);
	my $alfabeto="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	my @alfb= split("",$alfabeto);
	my $NAlfA =generarAlfConPalD($palabra,$desplazamiento);
	my @NAlf= split("",$NAlfA);
	my $newcad="";
	
	#descifrar
		foreach my $i (0 .. $#names) {
		  foreach my $j(0 .. $#alfb){
			if($names[$i]eq $alfb[$j]){
				$newcad=$newcad.$NAlf[$j];
			}
		  }
		}
	
	print $newcad;
}
#$mensaje,$palabra,$desplazamiento,$sw
>>>>>>> f03850a570595db94c1b451c276373ff8cd3acc9:2.PuroPalAlejandra.pl
descifrarCesarP("SZWBAZXZPCGBC","CASA",15,0);