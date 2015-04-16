function toggleReview() {
    if(visible){
        document.getElementById("reportname").style.visibility="hidden";
        document.getElementById("reportdescription").style.visibility="hidden";
        document.getElementById("submit").style.visibility="hidden";
        visible = false
    } else {
        document.getElementById("reportname").style.visibility="visible";
        document.getElementById("reportdescription").style.visibility="visible";
        document.getElementById("submit").style.visibility="visible";
        visible = true
    }
    console.log(visible)
};