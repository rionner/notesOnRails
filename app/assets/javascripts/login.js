var app = app || {};

app.loginForms = function formBehaviors(){

  $('input[name="user[password]"]').on('keyup', function(){

    var input = $(this);

    if (input.val().length<8){
      $(this).css({backgroundColor: 'pink'});
    } else {
      $(this).css({backgroundColor: 'lightgreen'});
    }

  });


  $('input[name="user[password_confirmation]"]').on('keyup', function(){

    var passwordMatch = $(this);
    var passwordField = $('input[name="user[password]"]');

    if (passwordField.val() != passwordMatch.val()){
      $(this).css({backgroundColor: 'pink'});
    } else {
      $(this).css({backgroundColor: 'lightgreen'});
    }

  });

};
