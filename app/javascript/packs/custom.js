$(document).on("turbolinks:load", function(){
    $("#selected_price").on('change', function(){
        let append_url = ''
        window.location.href.includes('?') ? append_url = '&' : append_url = '?'
        let url_str = window.location.href
        let param_value = ''
        this.value == '' ? param_value = "all" : param_value = this.value
        if (url_str.includes("price")){
            let url = new URL(url_str)
            let search_params = url.searchParams;
            search_params.set("price", param_value);
            url.search = search_params.toString();
            let new_url = url.toString();
            window.location.href = new_url
        }
        else{
            window.location.href = url_str + append_url + "price="+param_value
        }
    })

    $("#selected_tags").on('change', function(){
        let append_url = ''
        window.location.href.includes('?') ? append_url = '&' : append_url = '?'
        let url_str = window.location.href
        let param_value = ''
        this.value == '' ? param_value = "all" : param_value = this.value
        if (url_str.includes("tag")){
            let url = new URL(url_str)
            let search_params = url.searchParams;
            search_params.set("tag", param_value);
            url.search = search_params.toString();
            let new_url = url.toString();
            window.location.href = new_url
        }
        else{
            window.location.href = url_str + append_url + "tag="+param_value
        }
    })




    $(".form-check-input").on('change', function(){
        let prev_book_ids = $("#book_ids").val()
        if (this.checked && !prev_book_ids.includes(this.dataset.bookId)){
            $("#book_ids").val(prev_book_ids +' '+ this.dataset.bookId)
        }
        else if(!this.checked){
            $("#book_ids").val(prev_book_ids.replace(' '+ this.dataset.bookId, '') )
        }
    })
})
