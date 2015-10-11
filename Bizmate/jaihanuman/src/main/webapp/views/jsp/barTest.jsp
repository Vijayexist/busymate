<!DOCTYPE html>
<html>
<head>

    <title>Bar Charts</title>
    <link class="include" rel="stylesheet" type="text/css" href="../../../bizmate/resources/core/css/jquery.jqplot.min.css" />
       <link rel="stylesheet" href="../../bizmate/resources/core/css/examples.min.css">
         
<!-- Additional plugins go here -->
<script class="include" type="text/javascript" src="../../bizmate/resources/dist/jquery.jqplot.min.js"></script>
  <script class="include" type="text/javascript" src="../../../bizmate/resources/dist/plugins/jqplot.barRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="../../../bizmate/resources/dist/plugins/jqplot.pieRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="../../../bizmate/resources/dist/plugins/jqplot.categoryAxisRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="../../../bizmate/resources/dist/plugins/jqplot.pointLabels.min.js"></script>
   
  
    <!--[if lt IE 9]><script language="javascript" type="text/javascript" src="../excanvas.js"></script><![endif]-->
    
   <style>
   .code
   {
   display:none;
   }
   </style>
</head>
 
  
<!-- Example scripts go here -->
 
    
    
    <div id="chart2b" style="margin-top:20px; margin-left:20px; width:300px; height:300px;"></div>
    
   

 
    
  
    
  <script class="code" type="text/javascript">$(document).ready(function(){
	  var ticks = ['Param1', 'Param2', 'Param3', 'Param4'];
        plot2b = $.jqplot('chart2b', [[[2,1], [4,2], [6,3], [3,4]], [[5,1], [1,2], [3,3], [4,4]], [[4,1], [7,2], [1,3], [2,4]]], {
            seriesDefaults: {
                renderer:$.jqplot.BarRenderer,
                pointLabels: { show: true, location: 'e', edgeTolerance: -15 },
                shadowAngle: 135,
                rendererOptions: {
                    barDirection: 'horizontal'
                }
            },
            axes: {
                yaxis: {
                    renderer: $.jqplot.CategoryAxisRenderer,
                    ticks: ticks
                }
            },
            legend: {
                show: true,
                location: 'e',
                placement: 'outside'
            }    
        });
    
        $('#chart2b').bind('jqplotDataHighlight', 
            function (ev, seriesIndex, pointIndex, data) {
                $('#info2b').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data+ ', pageX: '+ev.pageX+', pageY: '+ev.pageY);
            }
        );    
        $('#chart2b').bind('jqplotDataClick', 
            function (ev, seriesIndex, pointIndex, data) {
                $('#info2c').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data+ ', pageX: '+ev.pageX+', pageY: '+ev.pageY);
            }
        );
            
        $('#chart2b').bind('jqplotDataUnhighlight', 
            function (ev) {
                $('#info2b').html('Nothing');
            }
        );
    });</script>
    
 
    
 

 
 

</body>


</html>
