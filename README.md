# ECharts.jl



### Julia Library that wraps fully the ECharts (Baidu) JS Library 

The library is very thin and fast, and fully passes all args to ECharts API

See ECharts Demos in:
https://ecomfe.github.io/echarts-examples/public/index.html

See ECharts API in:
https://ecomfe.github.io/echarts-doc/public/en/option.html



### Examples


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




<table class="data-frame"><thead><tr><th></th><th>x</th><th>y</th><th>series</th><th>symbolSize</th><th>names</th></tr></thead><tbody><tr><th>1</th><td>88.79703663937323</td><td>0.2511852226084632</td><td>SerieB</td><td>25</td><td>qwO1nazpGD</td></tr><tr><th>2</th><td>45.74945171443117</td><td>8.094166846268045</td><td>SerieA</td><td>11</td><td>RMelWQZoIa</td></tr><tr><th>3</th><td>86.02739210387244</td><td>1.8983069291134091</td><td>SerieB</td><td>19</td><td>mH5aG3jUwF</td></tr><tr><th>4</th><td>66.88375391525645</td><td>1.9462591117850159</td><td>SerieB</td><td>24</td><td>M3MFS6Za4S</td></tr><tr><th>5</th><td>48.566665672083346</td><td>3.9641667527445668</td><td>SerieA</td><td>13</td><td>NVGaUf3rym</td></tr><tr><th>6</th><td>21.248692624370037</td><td>1.9054423953161348</td><td>SerieB</td><td>12</td><td>mMdnwSWFHO</td></tr></tbody></table>




```julia
## simple Chart using series helper sintax
EChart(ctype="scatter",x=df[:x],y=df[:y],names=df[:names],series=df[:series],symbolSize=df[:symbolSize])

```














```julia
## simple Chart using series helper sintax
EChart(ctype="pie",x=[1000,2000,3300],names=["A","B","C"])

```













```julia
## Fully customized Chart using API sintax
ECharts.EChart(Dict(
        "legend"=>Dict("data"=>["S1","S2","S3"]),
        "xAxis"=>Dict("type"=>"category","data"=>["X1","X2","X3","X4","X5"]),
        "yAxis"=>[Dict("type"=>"value","name"=>"Amount"),Dict("type"=>"value","name"=>"Number")],
        "series"=>[
            Dict("type"=>"bar","name"=>"S1","stack"=>"s","data"=>[100,200,350,920,700]),
            Dict("type"=>"bar","name"=>"S2","stack"=>"s","data"=>[60,120,50,30,40]),
            Dict("type"=>"line","name"=>"S3","yAxisIndex"=>1,"data"=>[10,90,80,40,100])
            ]
        ))
```



