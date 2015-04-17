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
        "ordering": false
    });
    $('#muster').DataTable({
        "language": {
            "emptyTable": "Inga muster."
        }
    });
    $('#muster').dataTable().fnFilter(decodeURIComponent(search));
} );