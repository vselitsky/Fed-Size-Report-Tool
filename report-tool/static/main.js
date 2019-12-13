



  //$(".fed_size" ).each(function( index ) {
        //         $(this).click(function(){
                     //   $(this).addClass('active');
           //                                        });
    // });





	$(function(){

    var x='<select name="field">{% for col in columns %}<option value="{{col}}">{{col}}</option>{% endfor %}</select>'

    $('#more_fields').click(function() {

         $(x).insertBefore('#more_fields');

    });

    
    $("#test").change(function(){
        var selected_option = $(this).children("option:selected").val();
        var y='<select name="f">{% for index, row in fed_sizes.iterrows() %}<option value="{{row}}">{{row}}</option>{% endfor %}</select>'

        $(y).insertBefore('#more_fields');


    });


    

   });

