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
        $('p').fadeOut(3000);
        /*$('p').delay(1000);*/
        $('p').fadeIn(5000);
    });
});