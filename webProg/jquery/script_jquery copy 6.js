/* Sintaxe */
/* $(seletor).acao(); */
/* Efeito fadeOut Delay fadeIn*/
$(function(){
    $('#azul').click(function(){
        $('p')
            .css("color", "blue")
            .fadeOut('fast')
            .fadeIn(3000);
    });
    $('#vermelho').click(function(){
        $('p').css("color", "red");
        /* Metodo text grava mensagens no html*/
        $('#mensagem')
            .text("Cor Alterada com Sucesso")
        /* Adicionar propriedades no mesmo .css usa sintaxe ({color: 'red'}) */
            .css({color: 'red', border:'1px solid red'/*, backgroundColor: '#F08080'*/})
        /* Mensagem aguarda 3 seg. (delay) depois encerra (fadeOut) */
            .delay(3000)
            .fadeOut('fast')
            /* Chamada de classe com o addClass, porem retiro o backgroudColor do css*/
            .addClass('green');

            /* Remover classes com o removeClass */
        $('button').removeClass('red');
    });
});