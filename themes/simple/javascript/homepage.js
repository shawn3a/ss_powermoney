/**
 * Created by xlin on 26/07/15.
 */
;(function($){

    var $withGasField = $('#Form_CalcForm_WithGas'),
        $gasAmount = $('#GasAmount'),
        $gasAmountField = $('#Form_CalcForm_GasAmount');

    $withGasField.change(function(){
        var _this = this;

        $gasAmount.toggle(500, function(){
            $gasAmountField.prop('disabled', !_this.checked);
            $gasAmountField.prop('required', _this.checked);
        });
    });

    /**
     * Handle the show/hide action for GasAmount field
     */
    function checkGasField() {
        $gasAmountField.prop('disabled', !$withGasField.checked);
        $gasAmountField.prop('required', $withGasField.checked);
        $gasAmount.css('display', $withGasField.checked ? 'block' : 'none');
    }

    checkGasField();

    /**
     * For google place auto complete in home page
     */
    (function() {
        var autoComplete,
            addressField = document.getElementById('Form_CalcForm_Address'),
            $suburbField = $('#Form_CalcForm_Suburb'),
            suburb;

        autoComplete = new google.maps.places.Autocomplete(
            /** @type {HTMLInputElement} */
            addressField,
            {types: ['geocode']});

        addressField.placeholder = '';
        // When the user selects an address from the dropdown,
        // populate the address fields in the form.
        google.maps.event.addListener(autoComplete, 'place_changed', function () {
            suburb = autoComplete.getPlace().address_components[2].long_name;
            $suburbField.val(suburb);
        });
    }());

}(jQuery));