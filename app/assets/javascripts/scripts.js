$(document).ready(function() {

     $('.url-form').submit(function(){

          if ( isValidURL ( $('#url-box').val() ) == false ) {
            $('#message-area').html("Please enter a valid URL.");
            $('#message-area').addClass('message-area-error');
            return false;
          } 


     });

});
   
    

function isValidURL(url){
    var RegExp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;

    if(RegExp.test(url)){
        return true;
    }else{
        return false;
    }
} 