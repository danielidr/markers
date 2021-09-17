document.addEventListener('turbolinks:load', function(){
    $('#category_parent_id').change(function(){
        if($('#category_parent_id')[0].selectedIndex > 0) {
            $('.level')[0].selectedIndex = 0; 
            $('.level').hide()
        }
        else {
            $('.level').show();
        }
    });
})