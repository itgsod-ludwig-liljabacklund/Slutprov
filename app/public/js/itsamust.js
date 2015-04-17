var visible = false

function toggleReview() {
    if(visible){
        document.getElementById("rating").style.display="none";
        document.getElementById("reviewcontent").style.display="none";
        document.getElementById("submitreview").style.display="none";
        document.getElementById("ratingtext").style.display="none";
        document.getElementById("reviewform").style.display="none";
        visible = false
    } else {
        document.getElementById("rating").style.display="block";
        document.getElementById("reviewcontent").style.display="block";
        document.getElementById("submitreview").style.display="block";
        document.getElementById("ratingtext").style.display="block";
        document.getElementById("reviewform").style.display="block";
        visible = true
    }
    console.log(visible)
};