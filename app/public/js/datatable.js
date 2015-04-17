$(document).ready( function () {
    var search = location.search.substr(1);
    console.log(search);
    $('#popular_muster').DataTable({
        "language": {
            "emptyTable": "Inga populära muster."
        },
        "searching": false,
        "info": false,
        "paging": false,
        "ordering": false,
        "bLengthChange": false,
        "iDisplayLength": 50
    });
    $('#muster').DataTable({
        "language": {
            "emptyTable": "Inga muster."
        },
        "info": false,
        "bLengthChange": false,
        "iDisplayLength": 50
    });
    $('#muster').dataTable().fnFilter(decodeURIComponent(search));
} );