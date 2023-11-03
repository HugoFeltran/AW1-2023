class Usuario {
    constructor(nome, idade, notaPortugues, notaMatematica, notaWeb) {
        this.nome = nome;
        this.idade = idade;
        this.notaPortugues = parseFloat(notaPortugues);
        this.notaMatematica = parseFloat(notaMatematica);
        this.notaWeb = parseFloat(notaWeb);
    }

    calcularMedia() {
        return (this.notaPortugues + this.notaMatematica + this.notaWeb) / 3;
    }

    calcularIdade(ano) {
        var currentYear = new Date().getFullYear()
        var yearsGap = (ano - currentYear);
        return yearsGap + parseInt(this.idade)
    }
}


var nome = prompt("Digite seu nome:");
var idade = prompt("Digite sua idade:");
var notaPortugues = prompt("Digite sua nota em português:");
var notaMatematica = prompt("Digite sua nota em matemática:");
var notaWeb = prompt("Digite sua nota em desenvolvimento WEB:");
var anoFuturo = prompt("Digite um ano do futuro:");
var corFavorita = prompt("Digite sua cor favorita em inglês:");

var usuario = new Usuario(nome, idade, notaPortugues, notaMatematica, notaWeb);
var media = usuario.calcularMedia();
var idadeNoAnoFuturo = usuario.calcularIdade(parseInt(anoFuturo)); 

document.getElementById("name-content").textContent = usuario.nome;
document.getElementById("age-content").textContent = usuario.idade;
document.getElementById("anoFuturoPlaceholder").textContent = anoFuturo;
document.getElementById("future-age").textContent = idadeNoAnoFuturo;

document.getElementById("portuguese-grade").textContent = usuario.notaPortugues;
document.getElementById("math-grade").textContent = usuario.notaMatematica;
document.getElementById("AW-grade").textContent = usuario.notaWeb;
document.getElementById("average-grade").textContent = media.toFixed(2);

function criarQuadrado3x3() {
    var entrada = prompt("Digite 9 números separados por espaços:");
    var numeros = entrada.split(" ");

    if (numeros.length !== 9) {
        alert("Por favor, insira exatamente 9 números.");
        return;
    }

    var cartela = document.getElementById("cartela");
    cartela.innerHTML = "";

    for (var i = 0; i < 9; i++) {
        var celula = document.createElement("div");
        celula.className = "celula";
        celula.textContent = numeros[i];
        cartela.appendChild(celula);
    }
}


criarQuadrado3x3();