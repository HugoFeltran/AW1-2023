const respostasCorretas = ["1910", "Kazim", "1 x 0", "Yuri Alberto", "2"];
let perguntaAtual = 0;

function validarResposta() {
    const opcoes = document.querySelectorAll('.question')[perguntaAtual].querySelectorAll('.option input');
    const selecionada = Array.from(opcoes).find(opcao => opcao.checked);

    if (!selecionada) {
        alert('Por favor, selecione uma opção.');
        return;
    }

    const respostaSelecionada = selecionada.value;

    if (respostaSelecionada === respostasCorretas[perguntaAtual]) {
        mostrarMensagem(true);
        perguntaAtual++;
        if (perguntaAtual < respostasCorretas.length) {
            setTimeout(proximaPergunta, 2000);
        } else {
            alert('Você completou o quiz!');
        }
    } else {
        mostrarMensagem(false);
    }
}

function mostrarMensagem(correto) {
    const mensagem = document.querySelectorAll('.question')[perguntaAtual].querySelector(correto ? '.tag.correct' : '.tag.incorrect');
    mensagem.style.display = 'block';
}

function proximaPergunta() {
    const perguntas = document.querySelectorAll('.question');
    perguntas[perguntaAtual].style.display = 'block';
}

document.querySelectorAll('.submit-button').forEach((botao, index) => {
    botao.addEventListener('click', () => {
        validarResposta();
    });
});

document.querySelectorAll('.question').forEach((pergunta, index) => {
    if (index !== 0) {
        pergunta.style.display = 'none';
    }
});