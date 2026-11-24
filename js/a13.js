
document.addEventListener("DOMContentLoaded", function () {

    // CADASTRAR CONTATO
    const formularioContato = document.getElementById("formContato");

    if (formularioContato) {
        formularioContato.addEventListener("submit", function (evento) {
            evento.preventDefault();

            const dados = new FormData(formularioContato);

            fetch("contato-inserir.php", {
                method: "POST",
                body: dados
            })
            .then(resposta => resposta.json())
            .then(resultado => {
                alert(resultado.mensagem);

                if (resultado.sucesso) {
                    formularioContato.reset();
                }
            })
            .catch(() => {
                alert("Não foi possível enviar a mensagem.");
            });
        });
    }

    // CADASTRAR ORÇAMENTO
    document.querySelectorAll("#formOrcamento").forEach(function (formulario) {

        formulario.addEventListener("submit", function (evento) {
            evento.preventDefault();

            const dados = new FormData(formulario);

            fetch("orcamento-inserir.php", {
                method: "POST",
                body: dados
            })
            .then(resposta => resposta.json())
            .then(resultado => {
                alert(resultado.mensagem);

                if (resultado.sucesso) {
                    formulario.reset();

                    const modal = document.getElementById("modalOrcamento");

                    if (modal && window.bootstrap) {
                        bootstrap.Modal.getOrCreateInstance(modal).hide();
                    }
                }
            })
            .catch(() => {
                alert("Não foi possível enviar o orçamento.");
            });
        });

    });

    // SELECIONAR SERVIÇO NO ORÇAMENTO
    document.querySelectorAll("[data-servico]").forEach(function (botao) {

        botao.addEventListener("click", function () {
            const campo = document.getElementById("orcServico");

            if (campo) {
                campo.value = botao.getAttribute("data-servico");
            }
        });

    });

    // LISTAR DEPOIMENTOS
    const listaDepoimentos = document.getElementById("listaDepoimentos");

    function carregarDepoimentos() {

        if (!listaDepoimentos) {
            return;
        }

        fetch("depoimento-listar.php")
        .then(resposta => resposta.json())
        .then(depoimentos => {

            listaDepoimentos.innerHTML = "";

            depoimentos.forEach(function (item) {

                const data = item.data_depoimento.split("-").reverse().join("/");

                listaDepoimentos.innerHTML += `
                    <div class="col-md-6 col-lg-4">
                        <div class="card shadow-sm h-100">

                            ${item.foto ? `<img src="${item.foto}" class="card-img-top" alt="${item.nome}">` : ""}

                            <div class="card-body">
                                <h3 class="card-title">${item.nome}</h3>

                                <p class="card-text">${item.depoimento}</p>

                                <p class="numero">${data}</p>
                            </div>

                        </div>
                    </div>
                `;

            });

        })
        .catch(() => {
            listaDepoimentos.innerHTML = "<p class='text-center'>Erro ao carregar os depoimentos.</p>";
        });

    }

    carregarDepoimentos();

    // CADASTRAR DEPOIMENTO
    const formularioDepoimento = document.getElementById("formDepoimento");

    if (formularioDepoimento) {

        formularioDepoimento.addEventListener("submit", function (evento) {
            evento.preventDefault();

            const dados = new FormData(formularioDepoimento);

            fetch("depoimento-inserir.php", {
                method: "POST",
                body: dados
            })
            .then(resposta => resposta.json())
            .then(resultado => {

                alert(resultado.mensagem);

                if (resultado.sucesso) {
                    formularioDepoimento.reset();
                    carregarDepoimentos();
                }

            })
            .catch(() => {
                alert("Não foi possível enviar o depoimento.");
            });

        });

    }

});
