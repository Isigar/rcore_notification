//Use https://github.com/mouse0270/bootstrap-notify
$(function () {
    window.addEventListener("message", function (event) {
        let item = event.data;
        if (item.type === "msg") {
            if(item.title == ""){
                if(item.message != ""){
                    $.notify({
                        // options
                        message: item.message,
                    },{
                        // settings
                        type: item.style,
                        showProgressbar: true,
                        newest_on_top: true,
                        animate: {
                            enter: "animated bounceInRight",
                            exit: "animated bounceOutRight",
                        }
                    });
                }
            }else{
                $.notify({
                    // options
                    message: item.message,
                    title: item.title,
                },{
                    // settings
                    type: item.style,
                    showProgressbar: true,
                    newest_on_top: true,
                    animate: {
                        enter: "animated bounceInRight",
                        exit: "animated bounceOutRight",
                    }
                });
            }
        }
    });

});