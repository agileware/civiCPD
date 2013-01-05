<h3>Continuing Professional Development Activities for: <a href="#" title="Click to choose a different year" id="report_year">{$smarty.session.report_year}</a> <select class="cpd-frm" name="select_year" id="select_year">{$select_years}</select></h3>
<p>This report is for the year {$smarty.session.report_year}. To choose another year to report, click on the year in the sub-title above.</p>

{$report_table}


{literal}

<style type="text/css">

#crm-container p {
    font-family: Helvetica,Arial,Sans;
    font-size: 12px;
    margin-bottom: 4px;
    padding: 4px 6px;
}

#crm-container table.report-table {
    border-collapse: inherit;
    width: 100%;
}

#crm-container table.report-table th {
    background-color: #EFEFEF;
    border: 1px solid #CCCCCC;
    color: #666666;
}
 
#crm-container table.report-table td {
    border: 1px solid #EFEFEF;
}

#select_year {
	display: none;
}

#report_year {
    display: inline-block;
    margin-left: 5px;
    position: relative;
}



</style>

<script type="text/javascript">
<!-- 
	var jq = jQuery.noConflict();
	
	jQuery(function(){
	
	
		jq('#select_year').change(function() {
			var reportyear = jq(this).attr('value');
			
			jq(this).fadeOut('fast', function() {
    			jq('#report_year').text(reportyear);
    			jq('#report_year').fadeIn('slow');
  			}); 
  			
  			jq.ajax({
  				type: 'POST',
  				url: '/civicrm/civicpd/reportyear?reset=1&snippet=2',
  				data: { new_year : reportyear },
  				success: function(data){
    				window.setTimeout('location.reload()', 0);
  				},
  				error: function(){
    				alert('There was a problem changing the year. \nPlease refresh the page and try again.');
  				}
			});
			
		});
		
		jq('#report_year').click(function() {
			jq(this).fadeOut('fast', function() {
    			jq('#select_year').fadeIn('slow');
  			});
   		});
   		
   		jq('#print_button').click(function() {
   			window.print();
   		});	
			
	});

//-->
</script>

{/literal} 