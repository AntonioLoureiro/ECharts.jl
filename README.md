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
head(df)
```




<table class="data-frame"><thead><tr><th></th><th>x</th><th>y</th><th>series</th><th>symbolSize</th></tr></thead><tbody><tr><th>1</th><td>31.84270924596433</td><td>1.1291218016205407</td><td>SerieB</td><td>25</td></tr><tr><th>2</th><td>9.51935323310824</td><td>0.7565851121855416</td><td>SerieB</td><td>19</td></tr><tr><th>3</th><td>74.79062647870633</td><td>6.802525807551829</td><td>SerieA</td><td>20</td></tr><tr><th>4</th><td>28.670134613169918</td><td>1.063095167149788</td><td>SerieB</td><td>22</td></tr><tr><th>5</th><td>75.85640060366802</td><td>0.7252974837492654</td><td>SerieB</td><td>17</td></tr><tr><th>6</th><td>88.8391920100435</td><td>1.1211873678638784</td><td>SerieA</td><td>17</td></tr></tbody></table>



```julia
## simple Chart using series helper sintax
EChart(ctype="scatter",x=df[:x],y=df[:y],series=df[:series],symbolSize=df[:symbolSize])

```
[Chart]: https://github.com/AntonioLoureiro/ECharts.jl/blob/master/docs/scatter_ex.png



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

