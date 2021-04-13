/* Sintaxe */
/* $(seletor).acao(); */
/* Efeito fadeOut Delay fadeIn*/
$(function(){
    $('#azul').click(function(){
        $('p').css("color", "blue");
        $('p').fadeOut('fast');
        /*$('p').delay(1000);*/
        $('p').fadeIn(3000);
    });
    $('#vermelho').click(function(){
        $('p').css("color", "red");
        /* Metodo text grava mensagens no html*/
        $('#mensagem').text("Cor Alterada com Sucesso");
        /* Alterar cor do texto do css */
        $('#mensagem').css('color', 'red');
        /* Altera cor da borda do css */
        $('#mensagem').css('border', '1px solid red');
        /* Mensagem aguarda 3 seg. (delay) depois encerra (fadeOut) */
        $('#mensagem').delay(3000);
        $('#mensagem').fadeOut('fast');
    });
});