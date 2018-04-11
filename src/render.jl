
#Jupyter Notebook display
function show(io::IO, ::MIME"text/html", ec::EChart)

    divid = "Echart" * randstring(10)
    option = json(ec.options)
    width = ec.width
    height = ec.height


        display("text/html", """

              <body>
                <div id=\"$divid\" style=\"height:$(height)px;width:$(width)px;\"></div>
              </body>

                <script type=\"text/javascript\">

                    require.config({
                      paths: {
                      echarts: \"https://cdnjs.cloudflare.com/ajax/libs/echarts/3.6.2/echarts.min\"
                      }
                    });

                    require(["echarts"], function(echarts){

                        window.echarts = echarts


                        // Initialize after dom ready
                        var myChart = echarts.init(document.getElementById(\"$divid\"));

                        // Load data into the ECharts instance
                        myChart.setOption($option);

                    }); //echarts require end

                </script>

              """)
end


function html(ec::EChart;public=false)

    divid = "Echart" * randstring(10)
    option = json(ec.options)
    width = ec.width
    height = ec.height

    public==true ? src="""<script src=\"https://cdnjs.cloudflare.com/ajax/libs/echarts/3.8.5/echarts-en.min.js\"></script>""" : src=""

        return """
                
                $src
    
                <div id=\"$divid\" style=\"height:$(height)px;width:$(width)px;\"></div>           
    
                <script type=\"text/javascript\">

                        // Initialize after dom ready
                        var myChart = echarts.init(document.getElementById(\"$divid\"));

                        // Load data into the ECharts instance
                        myChart.setOption($option);


                </script>

              """
end

