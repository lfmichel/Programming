/* Sintaxe */
/* $(seletor).acao(); */
$(function(){
    $('#azul').click(function(){
        $('p').css("color", "blue");
    });
    $('#vermelho').click(function(){
        $('p').css("color", "red");
    });
});