var formDin = function(valor1){
	if (valor1 == 1) {
		document.getElementById("tbl_raca1").disabled=false;
		document.getElementById("tbl_raca1").style.display="inline";
		document.getElementById("tbl_raca2").style.display="none";
		document.getElementById("tbl_raca3").style.display="none";
		document.getElementById("tbl_raca4").style.display="none";
	}
	else if (valor1 == 2) {
		document.getElementById("tbl_raca2").disabled=false;
		document.getElementById("tbl_raca2").style.display="inline";
		document.getElementById("tbl_raca1").style.display="none";
		document.getElementById("tbl_raca3").style.display="none";
		document.getElementById("tbl_raca4").style.display="none";
	}
	else if (valor1 == 3) {
		document.getElementById("tbl_raca3").disabled=false;
		document.getElementById("tbl_raca3").style.display="inline";
		document.getElementById("tbl_raca2").style.display="none";
		document.getElementById("tbl_raca1").style.display="none";
		document.getElementById("tbl_raca4").style.display="none";
	}
	else if (valor1 == 4) {
		document.getElementById("tbl_raca4").disabled=false;
		document.getElementById("tbl_raca4").style.display="inline";
		document.getElementById("tbl_raca2").style.display="none";
		document.getElementById("tbl_raca3").style.display="none";
		document.getElementById("tbl_raca1").style.display="none";
	};
}

var formDin2 = function(valor2){
	if (valor2 == 1) {
		document.getElementById("tbl_raca12").disabled=false;
		document.getElementById("tbl_raca12").style.display="inline";
		document.getElementById("tbl_raca22").style.display="none";
		document.getElementById("tbl_raca32").style.display="none";
		document.getElementById("tbl_raca42").style.display="none";
	}
	else if (valor2 == 2) {
		document.getElementById("tbl_raca22").disabled=false;
		document.getElementById("tbl_raca22").style.display="inline";
		document.getElementById("tbl_raca12").style.display="none";
		document.getElementById("tbl_raca32").style.display="none";
		document.getElementById("tbl_raca42").style.display="none";
	}
	else if (valor2 == 3) {
		document.getElementById("tbl_raca32").disabled=false;
		document.getElementById("tbl_raca32").style.display="inline";
		document.getElementById("tbl_raca22").style.display="none";
		document.getElementById("tbl_raca12").style.display="none";
		document.getElementById("tbl_raca42").style.display="none";
	}
	else if (valor2 == 4) {
		document.getElementById("tbl_raca42").disabled=false;
		document.getElementById("tbl_raca42").style.display="inline";
		document.getElementById("tbl_raca22").style.display="none";
		document.getElementById("tbl_raca32").style.display="none";
		document.getElementById("tbl_raca12").style.display="none";
	};
}

var btnSubir = function(){
	document.getElementById("subir").style.display="inline-block"
	document.getElementById("buscar").style.display="none"
	document.getElementById("titulo2").style.display="inline"
	document.getElementById("titulo1").style.display="none"
	document.getElementById("resultadoBusqueda").style.display="none"
	document.getElementById("datospersonal").style.display="inline-block"
}

var btnBuscar = function(){
	document.getElementById("buscar").style.display="inline"
	document.getElementById("subir").style.display="none"
	document.getElementById("titulo1").style.display="inline"
	document.getElementById("titulo2").style.display="none"
	document.getElementById("resultadoBusqueda").style.display="inline-block"
	document.getElementById("datospersonal").style.display="none"
}

var enviarBusqueda = function(){
	document.getElementById("buscar").style.display="inline"
	document.getElementById("subir").style.display="none"
	document.getElementById("titulo1").style.display="inline"
	document.getElementById("titulo2").style.display="none"
	document.getElementById("resultadoBusqueda").style.display="inline-block"
	document.getElementById("datospersonal").style.display="none"
}

var enviarAnuncio = function(){
	alert("Anuncio subido correctamente!");
}