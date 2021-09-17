document.addEventListener('turbolinks:load', function(){
    document.addEventListener('ajax:error', function(event){
        var errors = event.detail[0],
            error_string = ''
        for(var prop in errors) {
            error_string = prop + ': ' + errors[prop]
        }
        alert(error_string)
    });
    $(".create-marker").click(function(){
        $("html, body").animate({ scrollTop: $(document).height() }, 1000);
    });
})