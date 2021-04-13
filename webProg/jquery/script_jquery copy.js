/* Sintaxe */
/* $(seletor).acao(); */
/*
$(document).ready(function(){
    $('button').click(function(){
        $('h1').hide();
    });
});
*/
/* Simplificando o jquery */
/* Forma reduzida do .ready */
/*
$(function(){
    $('button').click(function(){
        $('h1').hide();
    });
});
*/
/*
/* Alterando a cor do css
$(function(){
    $('button').click(function(){
        $('h1').css("color", "red");
    });
});
*/

/* Alterando a cor do css com id */
$(function(){
    $('button').click(function(){
        $('#unico').css("color", "red");
    });
});


