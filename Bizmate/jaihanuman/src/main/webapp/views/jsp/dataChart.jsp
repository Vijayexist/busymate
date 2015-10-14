<!DOCTYPE html>

<html>
<head>

    <title>Bar Charts</title>

    <link class="include" rel="stylesheet" type="text/css" href="/../bizmate/resources/core/css/jquery.jqplot.min.css" />
    <link rel="stylesheet" type="text/css" href="../../bizmate/resources/core/css/examples.min.css" />
      <script class="include" type="text/javascript" src="../../bizmate/resources/core/js/jquery.jqplot.min.js"></script>
 <!-- Additional plugins go here -->

  <script class="include" type="text/javascript" src="../../bizmate/resources/core/plugins/jqplot.barRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="../../bizmate/resources/core/plugins/jqplot.categoryAxisRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="../../bizmate/resources/core/plugins/jqplot.pointLabels.min.js"></script>

<!-- End additional plugins -->

       
     
    <script type="text/javascript" src="../../bizmate/resources/core/js/example.min.js"></script>
    
  
    <!--[if lt IE 9]><script language="javascript" type="text/javascript" src="../excanvas.js"></script><![endif]-->
    
   
</head>
<body>
   
  

  
<!-- Example scripts go here -->

    
    <div><span>You Clicked: </span><span id="info2c">Nothing yet</span></div>
        
 
    
 
    
    <div id="chart2b" style="margin-top:20px; margin-left:20px; width:300px; height:300px;"></div>
<pre class="code brush:js"></pre>
    
   

  <script class="code" type="text/javascript">
  var j = jQuery.noConflict();
  j(document).ready(function(){
       j.jqplot.config.enablePlugins = true;
        var s1 = [2, 6, 7, 10];
        var ticks = ['a', 'b', 'c', 'd'];
        
  
    
    });</script>
    
 
    
  <script class="code" type="text/javascript">j(document).ready(function(){
        plot2b = j.jqplot('chart2b', [[[2,1], [4,2], [6,3], [3,4]]], {
            seriesDefaults: {
                renderer:j.jqplot.BarRenderer,
                pointLabels: { show: true, location: 'e', edgeTolerance: 0 },
                shadowAngle: 135,
                rendererOptions: {
                    barDirection: 'horizontal'
                }
            },
            axes: {
                yaxis: {
                    renderer: j.jqplot.CategoryAxisRenderer
                }
            }
        });
    
        j('#chart2b').bind('jqplotDataHighlight', 
            function (ev, seriesIndex, pointIndex, data) {
                j('#info2b').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data+ ', pageX: '+ev.pageX+', pageY: '+ev.pageY);
            }
        );    
        j('#chart2b').bind('jqplotDataClick', 
            function (ev, seriesIndex, pointIndex, data) {
                j('#info2c').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data+ ', pageX: '+ev.pageX+', pageY: '+ev.pageY);
            }
        );
            
        j('#chart2b').bind('jqplotDataUnhighlight', 
            function (ev) {
                j('#info2b').html('Nothing');
            }
        );
    });</script>
    
 <!-- Don't touch this! -->


  
</body>


</html>
