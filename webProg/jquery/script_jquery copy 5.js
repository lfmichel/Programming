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
        /* Alterar cor do texto do css */
            .css('color', 'red')
        /* Altera cor da borda do css */
            .css('border', '1px solid red')
        /* Mensagem aguarda 3 seg. (delay) depois encerra (fadeOut) */
            .delay(3000)
            .fadeOut('fast');
    });
});