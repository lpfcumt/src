// Utility Functions

var Sona = window.Sona || {};

Sona.getDatePickerDate = function (datepickerCtlId) {
	var $dateControl = $("#" + datepickerCtlId),
        dateValue = $dateControl.val();

	var selectedDate = new Date();  // Default to today
	if (dateValue) {
		// Convert the selected value into a Date. 
		// The date value is stored as d/m/yyyy for English browsers, but may be DD.MM.YYYY for some users like in Germany, so need to handle both
		// Generally, this should not happen (the DD.MM.YYYY format) as we force the internal storage to d/m/yyyy
		var strDate = dateValue.toString();
		var splitValue = "/"; // default to use this
		var dotLocation = strDate.indexOf(".");
		if (dotLocation > 0) {
			splitValue = ".";
		}
		var parts = dateValue.split(splitValue);
		selectedDate = new Date(parts[2], (+parts[1]) - 1, parts[0]);
	}
	return selectedDate;
};

// Utility Functions End

//$.fn.datepicker.defaults.autoclose = true;

jQuery('.panel .tools .fa-chevron-down').click(function () {
    var el = jQuery(this).parents(".panel").children(".panel-body");
    if (jQuery(this).hasClass("fa-chevron-down")) {
        jQuery(this).removeClass("fa-chevron-down").addClass("fa-chevron-up");
        el.slideUp(200);
    } else {
        jQuery(this).removeClass("fa-chevron-up").addClass("fa-chevron-down");
        el.slideDown(200);
    }
});

jQuery("input.sona-autoselect").click(function () {
    // Select all text in input control
    var inputCtl = this;
    inputCtl.selectionStart = 0;
    inputCtl.selectionEnd = inputCtl.value.length;
});


// Apply data-title on td elements based on the content of the corresponding th element.
// If a td element has a colspan, apply the content for the first th element it lines up with.
$(function () {
    // Iterate over each table
    $("#no-more-tables").find("table").each(function (i, tbl) {
        var $tbl = $(tbl),
            // Create an array of the header text
            headers = $tbl.children("thead").children("tr").children("th").map(function() { return $(this).text(); }).get();

        // Iterate over each row
        $tbl.children("tbody").children("tr").each(function (rowIndex, row) {
            var actualIndex = 0;

            $(row).children("td").each(function (colIndex, col) {
                var $col = $(col),
                    colspan = +($col.attr('colspan') || 1);

                $col.attr("data-title", headers[actualIndex]);

                actualIndex += colspan;
            });

        });
    });
});

// Workaround: The bootstrap-accessibility-plugin automatically sets focus to the first item
// in menu dropdrop list, when it is expanded. The first item retains focus when a user hovers
// over other menu items in the list, so two items can be highlighted at the same time.
// This sets focus to the menuitem that the cursor is hovering over.
$("a[role='menuitem']").mouseover(function () {
    $(this).focus();
});

// Workaround: The obout Editor displays a loading indicator -900px above where the control is located,
// and is displayed on pages where the editor is low on the page. This will find and hide it.
$(function () {
    $("img").each(function (i, el) {
        if (el.src.indexOf("/WebResource.axd") >= 0) {
            var $el = $(el);
            if ($el.css("top") === "-900px" && $el.css("position") == "absolute") {
                $el.hide();
            }
        }
    });
});

// TODO: Disabled all, as jQuery plugins are not installed yet. Will enable as needed.

///*---LEFT BAR ACCORDION----*/
//$(function() {
//    $('#nav-accordion').dcAccordion({
//        eventType: 'click',
//        autoClose: true,
//        saveState: true,
//        disableLink: true,
//        speed: 'slow',
//        showCount: false,
//        autoExpand: true,
////        cookie: 'dcjq-accordion-1',
//        classExpand: 'dcjq-current-parent'
//    });
//});

//var Script = function () {

////    sidebar dropdown menu auto scrolling

//    jQuery('#sidebar .sub-menu > a').click(function () {
//        var o = ($(this).offset());
//        diff = 250 - o.top;
//        if(diff>0)
//            $("#sidebar").scrollTo("-="+Math.abs(diff),500);
//        else
//            $("#sidebar").scrollTo("+="+Math.abs(diff),500);
//    });

////    sidebar toggle

//    $(function() {
//        function responsiveView() {
//            var wSize = $(window).width();
//            if (wSize <= 768) {
//                $('#container').addClass('sidebar-close');
//                $('#sidebar > ul').hide();
//            }

//            if (wSize > 768) {
//                $('#container').removeClass('sidebar-close');
//                $('#sidebar > ul').show();
//            }
//        }
//        $(window).on('load', responsiveView);
//        $(window).on('resize', responsiveView);
//    });

//    $('.fa-bars').click(function () {
//        if ($('#sidebar > ul').is(":visible") === true) {
//            $('#main-content').css({
//                'margin-left': '0px'
//            });
//            $('#sidebar').css({
//                'margin-left': '-210px'
//            });
//            $('#sidebar > ul').hide();
//            $("#container").addClass("sidebar-closed");
//        } else {
//            $('#main-content').css({
//                'margin-left': '210px'
//            });
//            $('#sidebar > ul').show();
//            $('#sidebar').css({
//                'margin-left': '0'
//            });
//            $("#container").removeClass("sidebar-closed");
//        }
//    });

//// custom scrollbar
//    $("#sidebar").niceScroll({styler:"fb",cursorcolor:"#e8403f", cursorwidth: '3', cursorborderradius: '10px', background: '#404040', spacebarenabled:false, cursorborder: ''});

//    $("html").niceScroll({styler:"fb",cursorcolor:"#e8403f", cursorwidth: '6', cursorborderradius: '10px', background: '#404040', spacebarenabled:false,  cursorborder: '', zindex: '1000'});

//// widget tools

//    jQuery('.panel .tools .fa-chevron-down').click(function () {
//        var el = jQuery(this).parents(".panel").children(".panel-body");
//        if (jQuery(this).hasClass("fa-chevron-down")) {
//            jQuery(this).removeClass("fa-chevron-down").addClass("fa-chevron-up");
//            el.slideUp(200);
//        } else {
//            jQuery(this).removeClass("fa-chevron-up").addClass("fa-chevron-down");
//            el.slideDown(200);
//        }
//    });

//    jQuery('.panel .tools .fa-times').click(function () {
//        jQuery(this).parents(".panel").parent().remove();
//    });


////    tool tips

//    $('.tooltips').tooltip();

////    popovers

//    $('.popovers').popover();



//// custom bar chart

//    if ($(".custom-bar-chart")) {
//        $(".bar").each(function () {
//            var i = $(this).find(".value").html();
//            $(this).find(".value").html("");
//            $(this).find(".value").animate({
//                height: i
//            }, 2000)
//        })
//    }


//}();