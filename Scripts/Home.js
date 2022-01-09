$(document).ready(function () {
    loadPage();
    addListeners();

});

function loadPage() {
    populateInventoryTable();
}

function addListeners() {
    $('#tblInventory tbody').on('click touch', 'tr', function () {
        //grab data from access database file
        $.ajax({
            type: 'POST',
            url: 'Home.aspx/getInventoryItem',
            data: JSON.stringify({ inventoryId: inventoryId }),
            contentType: 'application/json; charset=utf-8',
            success: getInventoryItemSuccess,
            error: errorOccurred
        });

        function getInventoryItemSuccess(response) {
            let data = JSON.parse(response.d);

            if (data.success) {

            } else {
                swal.fire({
                    type: 'error',
                    title: 'Error',
                    text: data.message
                });
            }


        }
        function errorOccurred(response) {
            swal.fire({
                type: 'error',
                title: 'Error',
                text: 'Server could not be reached'
            });
        }



        //show modal
        $('#modalInventoryEdit').modal('show'); 
    });


}


//Description: Calls server and populates a DataTable of the row
//Parameters: None
function populateInventoryTable() {
    $.ajax({
        type: 'POST',
        url: 'Home.aspx/getAllInventory',
        contentType: 'application/json; charset=utf-8',
        success: getAllInventorySuccess,
        error: errorOccurred
    });

    function getAllInventorySuccess(response) {
        let data = JSON.parse(response.d);

        if (data.success) {
            swal.fire({
                type: 'success',
                title: 'Success!',
                text: data.message
            });
        } else {
            swal.fire({
                type: 'error',
                title: 'Error',
                text: data.message
            });
        }


    }

    function errorOccurred(response) {
        swal.fire({
            type: 'error',
            title: 'Error',
            text: 'Server could not be reached'
        });
    }

}