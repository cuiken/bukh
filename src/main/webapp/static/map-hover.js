var lastHover = "/static/images/map/map.png";

jQuery(document).ready(function() {

var hashtag = window.location.hash;
var region = "#info";


	jQuery(".area-northamerica").mouseover(function() { 
            var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-northamerica.png");
            jQuery("#imagemap").attr("src", src);
        })
        .mouseout(function() {
            var src = jQuery("#imagemap").attr("src").replace("/static/images/map/map-northamerica.png", lastHover);
            jQuery("#imagemap").attr("src", src);
        });

	jQuery(".area-southamerica").mouseover(function() { 
            var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-southamerica.png");
            jQuery("#imagemap").attr("src", src);
        })
        .mouseout(function() {
            var src = jQuery("#imagemap").attr("src").replace("/static/images/map/map-southamerica.png", lastHover);
            jQuery("#imagemap").attr("src", src);
        });
        
	jQuery(".area-europe").mouseover(function() { 
            var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-europe.png");
            jQuery("#imagemap").attr("src", src);
        })
        .mouseout(function() {
            var src = jQuery("#imagemap").attr("src").replace("/static/images/map/map-europe.png", lastHover);
            jQuery("#imagemap").attr("src", src);
        });
        
	jQuery(".area-africa").mouseover(function() { 
            var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-africa.png");
            jQuery("#imagemap").attr("src", src);
        })
        .mouseout(function() {
            var src = jQuery("#imagemap").attr("src").replace("/static/images/map/map-africa.png", lastHover);
            jQuery("#imagemap").attr("src", src);
        });
        
	jQuery(".area-asia").mouseover(function() { 
            var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-asia.png");
            jQuery("#imagemap").attr("src", src);
        })
        .mouseout(function() {
            var src = jQuery("#imagemap").attr("src").replace("/static/images/map/map-asia.png", lastHover);
            jQuery("#imagemap").attr("src", src);
        });
        
	jQuery(".area-australia").mouseover(function() { 
            var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-australia.png");
            jQuery("#imagemap").attr("src", src);
        })
        .mouseout(function() {
            var src = jQuery("#imagemap").attr("src").replace("/static/images/map/map-australia.png", lastHover);
            jQuery("#imagemap").attr("src", src);
        });

	jQuery(".area-nordamerika").mousedown(function() {
		showPage("#Nord-Amerika");
		jQuery(".WorldRegionPicker").find("option:contains('Nord Amerika')").attr('selected','selected');
	});
	jQuery(".area-sydamerika").mousedown(function() {
		showPage("#Syd-Amerika");
		jQuery(".WorldRegionPicker").find("option:contains('Syd Amerika')").attr('selected','selected');
	});
	jQuery(".area-australien").mousedown(function() { 
		showPage("#Oceanien");
		jQuery(".WorldRegionPicker").find("option:contains('Oceanien')").attr('selected','selected');
	});
	jQuery(".area-europa").mousedown(function() {
		showPage("#Europa");
		jQuery(".WorldRegionPicker").find("option:contains('Europa')").attr('selected','selected');
	});
	jQuery(".area-afrika").mousedown(function() {
		showPage("#Afrika");
		jQuery(".WorldRegionPicker").find("option:contains('Afrika')").attr('selected','selected');
	});
	jQuery(".area-asien").mousedown(function() {
		showPage("#Asien");
		jQuery(".WorldRegionPicker").find("option:contains('Asien')").attr('selected','selected');
	});
	
	jQuery(".area-northamerica").mousedown(function() {
		showPage("#North-America");
		jQuery(".WorldRegionPicker").find("option:contains('North America')").attr('selected','selected');
	});
	jQuery(".area-southamerica").mousedown(function() {
		showPage("#South-America");
		jQuery(".WorldRegionPicker").find("option:contains('South America')").attr('selected','selected');
	});
	jQuery(".area-australia").mousedown(function() { 
		showPage("#Oceania");
		jQuery(".WorldRegionPicker").find("option:contains('Oceania')").attr('selected','selected');
	});
	jQuery(".area-europe").mousedown(function() {
		showPage("#Europe");
		jQuery(".WorldRegionPicker").find("option:contains('Europe')").attr('selected','selected');
	});
	jQuery(".area-africa").mousedown(function() {
		showPage("#Africa");
		jQuery(".WorldRegionPicker").find("option:contains('Africa')").attr('selected','selected');
	});
	jQuery(".area-asia").mousedown(function() {
		showPage("#Asia");
		jQuery(".WorldRegionPicker").find("option:contains('Asia')").attr('selected','selected');
	});
	
	
	/* SECONDARY MENU */
	jQuery("#Navigation_2nd ul li#Li_PageItem13").mousedown(function() {
		showPage("#Nord-Amerika");
		jQuery(".WorldRegionPicker").find("option:contains('Nord Amerika')").attr('selected','selected');
	});
	jQuery("#Navigation_2nd ul li#Li_PageItem14").mousedown(function() { 
		showPage("#Syd-Amerika");
		jQuery(".WorldRegionPicker").find("option:contains('Syd Amerika')").attr('selected','selected');
	});
	jQuery("#Navigation_2nd ul li#Li_PageItem15").mousedown(function() { 
		showPage("#Europa");
		jQuery(".WorldRegionPicker").find("option:contains('Europa')").attr('selected','selected');
	});
	jQuery("#Navigation_2nd ul li#Li_PageItem16").mousedown(function() { 
		showPage("#Afrika");
		jQuery(".WorldRegionPicker").find("option:contains('Afrika')").attr('selected','selected');
	});
	jQuery("#Navigation_2nd ul li#Li_PageItem17").mousedown(function() { 
		showPage("#Asien");
		jQuery(".WorldRegionPicker").find("option:contains('Asien')").attr('selected','selected');
	});
	jQuery("#Navigation_2nd ul li#Li_PageItem18").mousedown(function() {
		showPage("#Oceanien");
		jQuery(".WorldRegionPicker").find("option:contains('Oceanien')").attr('selected','selected');
	});
	
	jQuery("#Navigation_2nd ul li#Li_PageItem13_uk").mousedown(function() {
		showPage("#North-America");
		jQuery(".WorldRegionPicker").find("option:contains('North America')").attr('selected','selected');
	});
	jQuery("#Navigation_2nd ul li#Li_PageItem14_uk").mousedown(function() { 
		showPage("#South-America");
		jQuery(".WorldRegionPicker").find("option:contains('South America')").attr('selected','selected');
	});
	jQuery("#Navigation_2nd ul li#Li_PageItem15_uk").mousedown(function() { 
		showPage("#Europe");
		jQuery(".WorldRegionPicker").find("option:contains('Europe')").attr('selected','selected');
	});
	jQuery("#Navigation_2nd ul li#Li_PageItem16_uk").mousedown(function() { 
		showPage("#Africa");
		jQuery(".WorldRegionPicker").find("option:contains('Africa')").attr('selected','selected');
	});
	jQuery("#Navigation_2nd ul li#Li_PageItem17_uk").mousedown(function() { 
		showPage("#Asia");
		jQuery(".WorldRegionPicker").find("option:contains('Asia')").attr('selected','selected');
	});
	jQuery("#Navigation_2nd ul li#Li_PageItem18_uk").mousedown(function() {
		showPage("#Oceania");
		jQuery(".WorldRegionPicker").find("option:contains('Oceania')").attr('selected','selected');
	});
	
	/* REGION AND COUNTRY */
	jQuery('.WorldRegionPicker').change(function() {
		region = "#"+jQuery('.WorldRegionPicker').val().replace(/ /g, '-');
		showPage(region);
	});
	jQuery('.WorldCountryPicker').change(function() {
		region = jQuery('.WorldCountryPicker').val().replace(/ /g, '-');
		showPage(region);
	});
});

var allOptions = '<option selected="selected">Choose country</option><option class="North-America">Canada</option><option class="North-America">USA</option><option class="South-America">Argentina</option><option class="South-America">Chile</option><option class="South-America">Ecuador</option><option class="South-America">Panama</option><option class="South-America">Uruguay</option><option class="Europe">Denmark</option><option class="Europe">Sweden</option><option class="Europe">England</option><option class="Europe">Holland</option><option class="Europe">Greece</option><option class="Europe">Germany</option><option class="Europe">Iceland</option><option class="Europe">Lithuania</option><option class="Europe">Spain</option><option class="Europe">Turkey</option><option class="Europe">Portugal</option><option class="Europe">Poland</option><option class="Europe">Norway</option><option class="Europe">Italy</option><option class="Europe">France</option><option class="Europe">Finland</option><option class="Europe">Faroe Islands</option><option class="Europe">Croatia</option><option class="Europe">Bulgaria</option><option class="Europe">Russia</option><option class="Africa">Egypt</option><option class="Africa">Mauritius</option><option class="Africa">Morocco</option><option class="Africa">South Africa</option><option class="Asia">Bangladesh</option><option class="Asia">China</option><option class="Asia">Hongkong</option><option class="Asia">India</option><option class="Asia">Indonesia</option><option class="Asia">Japan</option><option class="Asia">Korea</option><option class="Asia">Macau</option><option class="Asia">Malaysia</option><option class="Asia">Sri Lanka</option><option class="Asia">Singapore</option><option class="Asia">Thailand</option><option class="Asia">United Arab Emirates</option><option class="Australia">Australia</option><option class="Australia">New Zealand</option><option selected="selected">V&aelig;lg land</option><option class="Nord-Amerika">Canada</option><option class="Nord-Amerika">USA</option><option class="Syd-Amerika">Argentina</option><option class="Syd-Amerika">Chile</option><option class="Syd-Amerika">Ecuador</option><option class="Syd-Amerika">Panama</option><option class="Syd-Amerika">Uruguay</option><option class="Europa">Danmark</option><option class="Europa">Sverige</option><option class="Europa">England</option><option class="Europa">Holland</option><option class="Europa">Graekenland</option><option class="Europa">Tyskland</option><option class="Europa">Island</option><option class="Europa">Litauen</option><option class="Europa">Spanien</option><option class="Europa">Portugal</option><option class="Europa">Polen</option><option class="Europa">Norge</option><option class="Europa">Italien</option><option class="Europa">Frankrig</option><option class="Europa">Finland</option><option class="Europa">Faeroeerne</option><option class="Europa">Kroatien</option><option class="Europa">Bulgarien</option><option class="Europa">Rusland</option><option class="Europa">Tyrkiet</option><option class="Afrika">Egypten</option><option class="Afrika">Mauritius</option><option class="Afrika">Morocco</option><option class="Afrika">Syd Afrika</option><option class="Asien">Bangladesh</option><option class="Asien">Kina</option><option class="Asien">Hongkong</option><option class="Asien">Indien</option><option class="Asien">Indonesien</option><option class="Asien">Japan</option><option class="Asien">Korea</option><option class="Asien">Macau</option><option class="Asien">Malaysia</option><option class="Asien">Sri Lanka</option><option class="Asien">Singapore</option><option class="Asien">Thailand</option><option class="Asien">De Forenede Emirater</option><option class="Australien">Australien</option><option class="Australien">New Zealand</option>';

	function showPage(page) {
		switch(page) {
			case "#North-America":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.North-America').show();
				jQuery('#WorldChooser .WorldCountryPicker option.North-America').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.North-America').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.North-America)").remove();
				
				jQuery('ul.northamerica').show();
				jQuery('ul.northamerica').css('display', 'block');	
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-northamerica.png");
           		jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-northamerica.png";
			break;
			case "#South-America": 
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.South-America').show();
				jQuery('#WorldChooser .WorldCountryPicker option.South-America').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.South-America').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.South-America)").remove();
				
				jQuery('ul.southamerica').show();
				jQuery('ul.southamerica').css('display', 'block');	
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-southamerica.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-southamerica.png";
				
			break;
			case "#Nord-Amerika":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.Nord-Amerika').show();
				jQuery('#WorldChooser .WorldCountryPicker option.Nord-Amerika').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.Nord-Amerika').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.Nord-Amerika)").remove();
				
				jQuery('ul.northamerica').show();
				jQuery('ul.northamerica').css('display', 'block');				
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-northamerica.png");
           		jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-northamerica.png";
			break;
			case "#Syd-Amerika": 
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.Syd-Amerika').show();
				jQuery('#WorldChooser .WorldCountryPicker option.Syd-Amerika').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.Syd-Amerika').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.Syd-Amerika)").remove();
				
				jQuery('ul.southamerica').show();
				jQuery('ul.southamerica').css('display', 'block');
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-southamerica.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-southamerica.png";
				
			break;
			case "#Europe":
			
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.Europe').show();
				jQuery('#WorldChooser .WorldCountryPicker option.Europe').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.Europe').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.Europe)").remove();
				
				jQuery('ul.europe').show();
				jQuery('ul.europe').css('display', 'block');
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-europe.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-europe.png";
			break;
			case "#Europa":
			
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.Europa').show();
				jQuery('#WorldChooser .WorldCountryPicker option.Europa').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.Europa').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.Europa)").remove();
				
				jQuery('ul.europe').show();
				jQuery('ul.europe').css('display', 'block');
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-europe.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-europe.png";
			break;
			case "#Africa":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.Africa').show();
				jQuery('#WorldChooser .WorldCountryPicker option.Africa').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.Africa').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.Africa)").remove();
				
				jQuery('ul.africa').show();
				jQuery('ul.africa').css('display', 'block');
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-africa.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-africa.png";
			break;
			case "#Afrika":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.Afrika').show();
				jQuery('#WorldChooser .WorldCountryPicker option.Afrika').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.Afrika').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.Afrika)").remove();
				
				jQuery('ul.africa').show();
				jQuery('ul.africa').css('display', 'block');
				
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-africa.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-africa.png";
			break;
			case "#Asia":
			
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.Asia').show();
				jQuery('#WorldChooser .WorldCountryPicker option.Asia').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.Asia').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.Asia)").remove();
				
				jQuery('ul.asia').show();
				jQuery('ul.asia').css('display', 'block');
				
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-asia.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-asia.png";
			break;
			case "#Asien":
			
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.Asien').show();
				jQuery('#WorldChooser .WorldCountryPicker option.Asien').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.Asien').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.Asien)").remove();
				
				jQuery('ul.asia').show();
				jQuery('ul.asia').css('display', 'block');
				
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-asia.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-asia.png";
			break;
			case "#Oceania":
			
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.Australia').show();
				jQuery('#WorldChooser .WorldCountryPicker option.Australia').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.Australia').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.Australia)").remove();
				
				jQuery('ul.australia').show();
				jQuery('ul.australia').css('display', 'block');
				
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-australia.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-australia.png";
			break;
			case "#Oceanien":
			
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option').hide();
				jQuery('#WorldChooser .WorldCountryPicker option').css('display', 'none');
				jQuery('#WorldChooser .WorldCountryPicker option.Australien').show();
				jQuery('#WorldChooser .WorldCountryPicker option.Australien').css('display', 'block');
				jQuery('#WorldChooser .WorldCountryPicker option.Australien').removeAttr('disabled');
				
				jQuery("#WorldChooser .WorldCountryPicker option").remove();
				jQuery("#WorldChooser .WorldCountryPicker").append(allOptions);
				jQuery("#WorldChooser .WorldCountryPicker option:not(.Australien)").remove();
				
				jQuery('ul.australia').show();
				jQuery('ul.australia').css('display', 'block');
				
				jQuery('.WorldCountryPicker').removeAttr('disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map-australia.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map-australia.png";
			break;
			
			/* NORTH AMERICA */
			
			case "Canada":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.canada').show();
				jQuery('ul.canada').css('display', 'block');
			break;
			case "USA":
				jQuery('#WorldDestributers .WorldCountryPicker ul').hide();
				jQuery('#WorldDestributers .WorldCountryPicker ul').css('display', 'none');
				jQuery('ul.usa').show();
				jQuery('ul.usa').css('display', 'block');
			break;
			
			/* SOUTH AMERICA */
			
			case "Argentina":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers  ul').css('display', 'none');
				jQuery('ul.argentina').show();
				jQuery('ul.argentina').css('display', 'block');
			break;
			case "Chile":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.chile').show();
				jQuery('ul.chile').css('display', 'block');
			break;
			case "Ecuador":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.ecuador').show();
				jQuery('ul.ecuador').css('display', 'block');
			break;
			case "Panama":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.panama').show();
				jQuery('ul.panama').css('display', 'block');
			break;
			case "Uruguay":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.uruguay').show();
				jQuery('ul.uruguay').css('display', 'block');
			break;
			
			/* EUROPE */
			
			case "Denmark":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.denmark').show();
				jQuery('ul.denmark').css('display', 'block');
			break;
			case "Danmark":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.denmark').show();
				jQuery('ul.denmark').css('display', 'block');
			break;
			case "Sweden":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.sweden').show();
				jQuery('ul.sweden').css('display', 'block');
			break;
			case "Sverige":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.sweden').show();
				jQuery('ul.sweden').css('display', 'block');
			break;
			case "England":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.england').show();
				jQuery('ul.england').css('display', 'block');
			break;
			case "Holland":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.holland').show();
				jQuery('ul.holland').css('display', 'block');
			break;
			case "Greece":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.greece').show();
				jQuery('ul.greece').css('display', 'block');
			break;
			case "Graekenland":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.greece').show();
				jQuery('ul.greece').css('display', 'block');
			break;
			case "Germany":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.germany').show();
				jQuery('ul.germany').css('display', 'block');
			break;
			case "Tyskland":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.germany').show();
				jQuery('ul.germany').css('display', 'block');
			break;
			case "Iceland":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.iceland').show();
				jQuery('ul.iceland').css('display', 'block');
			break;
			case "Island":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.iceland').show();
				jQuery('ul.iceland').css('display', 'block');
			break;
			case "Litauen":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.lithuania').show();
				jQuery('ul.lithuania').css('display', 'block');
			break;
			case "Lithuania":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.lithuania').show();
				jQuery('ul.lithuania').css('display', 'block');
			break;
			case "Spain":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.spain').show();
				jQuery('ul.spain').css('display', 'block');
			break;
			case "Spanien":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.spain').show();
				jQuery('ul.spain').css('display', 'block');
			break;
			case "Portugal":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.portugal').show();
				jQuery('ul.portugal').css('display', 'block');
			break;
			case "Poland":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.poland').show();
				jQuery('ul.poland').css('display', 'block');
			break;
			case "Polen":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.poland').show();
				jQuery('ul.poland').css('display', 'block');
			break;
			case "Norway":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.norway').show();
				jQuery('ul.norway').css('display', 'block');
			break;
			case "Norge":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.norway').show();
				jQuery('ul.norway').css('display', 'block');
			break;
			case "Italy":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.italy').show();
				jQuery('ul.italy').css('display', 'block');
			break;
			case "Italien":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.italy').show();
				jQuery('ul.italy').css('display', 'block');
			break;
			case "France":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers  ul').css('display', 'none');
				jQuery('ul.france').show();
				jQuery('ul.france').css('display', 'block');
			break;
			case "Frankrig":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.france').show();
				jQuery('ul.france').css('display', 'block');
			break;
			case "Finland":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.finland').show();
				jQuery('ul.finland').css('display', 'block');
			break;
			case "Faroe-Islands":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.faroe-islands').show();
				jQuery('ul.faroe-islands').css('display', 'block');
			break;
			case "Faeroeerne":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers  ul').css('display', 'none');
				jQuery('ul.faroe-islands').show();
				jQuery('ul.faroe-islands').css('display', 'block');
			break;
			case "Croatia":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.croatia').show();
				jQuery('ul.croatia').css('display', 'block');
			break;
			case "Kroatien":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.croatia').show();
				jQuery('ul.croatia').css('display', 'block');
			break;
			case "Bulgaria":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.bulgaria').show();
				jQuery('ul.bulgaria').css('display', 'block');
			break;
			case "Bulgarien":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.bulgaria').show();
				jQuery('ul.bulgaria').css('display', 'block');
			break;
			case "Russia":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.russia').show();
				jQuery('ul.russia').css('display', 'block');
			break;
			case "Rusland":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.russia').show();
				jQuery('ul.russia').css('display', 'block');
			break;
			
			/* AFRICA */
			
			case "Egypten":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.egypt').show();
				jQuery('ul.egypt').css('display', 'block');
			break;
			case "Egypt":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.egypt').show();
				jQuery('ul.egypt').css('display', 'block');
			break;
			case "Mauritius":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.mauritius').show();
				jQuery('ul.mauritius').css('display', 'block');
			break;
			case "Morocco":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.morocco').show();
				jQuery('ul.morocco').css('display', 'block');
			break;
			case "Trinidad-og-Tobago":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.trinidad-and-tobago').show();
				jQuery('ul.trinidad-and-tobago').css('display', 'block');
			break;
			case "Trinidad-and-Tobago":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.trinidad-and-tobago').show();
				jQuery('ul.trinidad-and-tobago').css('display', 'block');
			break;
			case "Syd-Afrika":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.south-africa').show();
				jQuery('ul.south-africa').css('display', 'block');
			break;
			case "South-Africa":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.south-africa').show();
				jQuery('ul.south-africa').css('display', 'block');
			break;
			case "De-Forenede-Emirater":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.united-arab-emirates').show();
				jQuery('ul.united-arab-emirates').css('display', 'block');
			break;
			case "United-Arab-Emirates":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.united-arab-emirates').show();
				jQuery('ul.united-arab-emirates').css('display', 'block');
			break;
			
			/* ASIA */
			
			case "Bangladesh":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.bangladesh').show();
				jQuery('ul.bangladesh').css('display', 'block');
			break;
			case "Kina":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.china').show();
				jQuery('ul.china').css('display', 'block');
			break;
			case "China":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.china').show();
				jQuery('ul.china').css('display', 'block');
			break;
			case "Hongkong":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.hongkong').show();
				jQuery('ul.hongkong').css('display', 'block');
			break;
			case "Indien":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.india').show();
				jQuery('ul.india').css('display', 'block');
			break;
			case "India":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.india').show();
				jQuery('ul.india').css('display', 'block');
			break;
			case "Indonesien":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.indonesia').show();
				jQuery('ul.indonesia').css('display', 'block');
			break;
			case "Indonesia":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.indonesia').show();
				jQuery('ul.indonesia').css('display', 'block');
			break;
			case "Japan":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.japan').show();
				jQuery('ul.japan').css('display', 'block');
			break;
			case "Korea":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.korea').show();
				jQuery('ul.korea').css('display', 'block');
			break;
			case "Macau":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.macau').show();
				jQuery('ul.macau').css('display', 'block');
			break;
			case "Malaysia":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.malaysia').show();
				jQuery('ul.malaysia').css('display', 'block');
			break;
			case "Sri-Lanka":
				jQuery('#WorldDestributers  ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.sri-lanka').show();
				jQuery('ul.sri-lanka').css('display', 'block');
			break;
			case "Tyrkiet":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.turkey').show();
				jQuery('ul.turkey').css('display', 'block');
			break;
			case "Turkey":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.turkey').show();
				jQuery('ul.turkey').css('display', 'block');
			break;
			case "Singapore":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.singapore').show();
				jQuery('ul.singapore').css('display', 'block');
			break;
			case "Thailand":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.thailand').show();
				jQuery('ul.thailand').css('display', 'block');
			break;
			
			/* AUSTRALIA */
			
			case "Australien":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.australia-country').show();
				jQuery('ul.australia-country').css('display', 'block');
			break;
			case "Australia":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.australia-country').show();
				jQuery('ul.australia-country').css('display', 'block');
			break;
			case "New-Zealand":
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				jQuery('ul.new-zealand').show();
				jQuery('ul.new-zealand').css('display', 'block');
			break;
			default:
			
				jQuery('#WorldDestributers ul').hide();
				jQuery('#WorldDestributers ul').css('display', 'none');
				
				jQuery('#WorldChooser .WorldCountryPicker option.North-America').hide();				
				jQuery('#WorldChooser .WorldCountryPicker option.South-America').hide();
				jQuery('#WorldChooser .WorldCountryPicker option.Europe').hide();
				jQuery('#WorldChooser .WorldCountryPicker option.Africa').hide();
				jQuery('#WorldChooser .WorldCountryPicker option.Asia').hide();
				jQuery('#WorldChooser .WorldCountryPicker option.Australia').hide();
				
				jQuery('ul.info').show();
				jQuery('ul.info').css('display', 'block');
				
				jQuery('.WorldCountryPicker').attr('disabled', 'disabled');
				
				var src = jQuery("#imagemap").attr("src").replace(lastHover, "/static/images/map/map.png");
				jQuery("#imagemap").attr("src", src);
				lastHover = "/static/images/map/map.png";
		}
	}	