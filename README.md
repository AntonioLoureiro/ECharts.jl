# ECharts.jl



```julia
using ECharts,DataFrames
```


```julia
#### Create Random DataFrame
points=50
df=DataFrame()
df[:x]=rand(points)*100
df[:y]=rand(points)*10
df[:series]=rand(["SerieA","SerieB"],points)
df[:symbolSize]=rand(10:1:25,points)
df[:names]=[randstring(10) for i in 1:points]
head(df)
```




<table class="data-frame"><thead><tr><th></th><th>x</th><th>y</th><th>series</th><th>symbolSize</th><th>names</th></tr></thead><tbody><tr><th>1</th><td>77.0371872087343</td><td>9.578200499924623</td><td>SerieA</td><td>20</td><td>lPDWtX1yA1</td></tr><tr><th>2</th><td>74.99544315500253</td><td>6.816525514625811</td><td>SerieA</td><td>13</td><td>ysnTUgzlrn</td></tr><tr><th>3</th><td>54.356656168286555</td><td>4.295562267481456</td><td>SerieB</td><td>25</td><td>5HUsmJQztd</td></tr><tr><th>4</th><td>84.43212284748411</td><td>0.059670367618411824</td><td>SerieB</td><td>24</td><td>IiA0HqQLnq</td></tr><tr><th>5</th><td>59.98014792763018</td><td>7.799787736251879</td><td>SerieA</td><td>11</td><td>Cwts0xm402</td></tr><tr><th>6</th><td>46.00727987072719</td><td>4.070905386308345</td><td>SerieA</td><td>24</td><td>pCjvZSkFzE</td></tr></tbody></table>




```julia

EChart(ctype="scatter",x=df[:x],y=df[:y],names=df[:names],series=df[:series],symbolSize=df[:symbolSize])

```



<body>
  <div id="Echarta3N2tBAbQT" style="height:600px;width:800px;"></div>
</body>

  <script type="text/javascript">

      require.config({
        paths: {
        echarts: "https://cdnjs.cloudflare.com/ajax/libs/echarts/3.6.2/echarts.min"
        }
      });

      require(["echarts"], function(echarts){

          window.echarts = echarts


          // Initialize after dom ready
          var myChart = echarts.init(document.getElementById("Echarta3N2tBAbQT"));

          // Load data into the ECharts instance
          myChart.setOption({"xAxis":{"type":"value"},"yAxis":{"type":"value"},"series":[{"name":"SerieB","data":[{"name":"5HUsmJQztd","symbolSize":25,"value":[54.356656168286555,4.295562267481456]},{"name":"IiA0HqQLnq","symbolSize":24,"value":[84.43212284748411,0.059670367618411824]},{"name":"pDUiYVXRFC","symbolSize":11,"value":[21.62634348953294,4.973547163640526]},{"name":"rIpFqDfrgV","symbolSize":12,"value":[92.49962988987865,4.771138229249196]},{"name":"ZpD3N0pPYN","symbolSize":22,"value":[9.551973734194764,6.315955540813816]},{"name":"rvfJaURR47","symbolSize":23,"value":[84.4850037490597,1.2199251773475517]},{"name":"aCrHA3SqGO","symbolSize":22,"value":[39.928718383075164,6.1269901821332695]},{"name":"q5DS6d1QEg","symbolSize":11,"value":[59.6320295663618,6.644468516352331]},{"name":"R7spNm75Fq","symbolSize":12,"value":[8.16150499467485,5.054887255029012]},{"name":"elVOFIXUHT","symbolSize":19,"value":[85.74233218009222,0.8128958273743492]},{"name":"a1wp63G2Cj","symbolSize":14,"value":[70.73752510452363,8.966577586202884]},{"name":"2MMqw7glyX","symbolSize":18,"value":[78.38603763774408,4.607733781015022]},{"name":"In2KNznO94","symbolSize":16,"value":[24.224714640316392,2.3340078197523106]},{"name":"T6ltCDH1Al","symbolSize":14,"value":[49.0606862859865,2.5077867052680025]},{"name":"64XLwe7Ggj","symbolSize":16,"value":[38.212825508382764,5.900692497315805]},{"name":"r0RPASrgdm","symbolSize":25,"value":[14.751418221925338,9.243468724054624]},{"name":"tIPDPvW365","symbolSize":14,"value":[97.99025853501782,4.506085728467546]},{"name":"O6RlFmYJv4","symbolSize":14,"value":[84.96933642111257,0.8287662609638891]},{"name":"EA5H3Nil8s","symbolSize":11,"value":[82.78647869928216,8.685206739790402]},{"name":"tTl3xXh1yt","symbolSize":14,"value":[73.42772132791188,9.460773685357227]},{"name":"XtIacpNdbn","symbolSize":16,"value":[95.97320003753683,7.231860160993611]},{"name":"ULDTVejwpe","symbolSize":20,"value":[26.463092719122372,0.304490907331767]}],"type":"scatter"},{"name":"SerieA","data":[{"name":"lPDWtX1yA1","symbolSize":20,"value":[77.0371872087343,9.578200499924623]},{"name":"ysnTUgzlrn","symbolSize":13,"value":[74.99544315500253,6.816525514625811]},{"name":"Cwts0xm402","symbolSize":11,"value":[59.98014792763018,7.799787736251879]},{"name":"pCjvZSkFzE","symbolSize":24,"value":[46.00727987072719,4.070905386308345]},{"name":"bi0Kxson5U","symbolSize":20,"value":[90.77732499808428,5.213733831853449]},{"name":"2JG2zdyy2I","symbolSize":21,"value":[61.899893708890886,5.849327298768734]},{"name":"hqgyQGXPoZ","symbolSize":17,"value":[73.21351316538525,7.5426889308620915]},{"name":"vXu9KBWIEU","symbolSize":12,"value":[22.44632137846898,7.961961436737157]},{"name":"lj446RA0dB","symbolSize":18,"value":[30.79230361364762,6.174079241861435]},{"name":"80I1YUm8mL","symbolSize":16,"value":[63.84385686798324,6.630311379190577]},{"name":"CD4Eaq1Z3l","symbolSize":25,"value":[9.94088827879198,9.224282895348175]},{"name":"gtdp0cGpLM","symbolSize":19,"value":[97.34612398323299,9.559108307706039]},{"name":"KzSJkM48cA","symbolSize":13,"value":[86.31604184960264,9.716231078499991]},{"name":"roKAP6SCfY","symbolSize":19,"value":[14.218103397395021,7.32636585909717]},{"name":"i5PImD5jij","symbolSize":15,"value":[94.7857095038437,0.8443324325568335]},{"name":"CyxvK1qiT7","symbolSize":25,"value":[77.00631226185534,3.707247710363748]},{"name":"yTfunxq8Xv","symbolSize":21,"value":[43.63284754844261,0.07239744585069596]},{"name":"7scCXQC7TV","symbolSize":23,"value":[88.37428607265676,7.757650245299792]},{"name":"NN5Nd85wvX","symbolSize":10,"value":[64.51140397271122,5.014878147180008]},{"name":"Q6qmZFheLj","symbolSize":18,"value":[8.216768046814082,6.732029046412742]},{"name":"Ip8X3vB3lN","symbolSize":17,"value":[3.4964125652713784,8.827532591080562]},{"name":"6YYCs9Zgbz","symbolSize":25,"value":[58.948447304491225,1.4406193465556472]},{"name":"iZoHLvvPTg","symbolSize":19,"value":[12.315475977670175,3.577022973921622]},{"name":"fjaRQmPyVg","symbolSize":19,"value":[99.08473755138026,1.0169459905911937]},{"name":"J7oE4TufRv","symbolSize":18,"value":[52.328682295457284,9.14714050093568]},{"name":"BRUbib5YfZ","symbolSize":15,"value":[24.86502292515351,2.6999671708350137]},{"name":"12srcXZ9gv","symbolSize":12,"value":[95.06295791914079,4.6213640419861175]},{"name":"KVlHsQubir","symbolSize":18,"value":[96.09118241272563,1.8245683377884525]}],"type":"scatter"}],"legend":{"data":["SerieB","SerieA"]}});

      }); //echarts require end

  </script>










