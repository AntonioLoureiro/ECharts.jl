
export EChart

mutable struct EChart

  options::Dict
  width::Int64
  height::Int64
  html::String

EChart(options::Dict)=new(options,800,500,"")
EChart(options::Dict,width::Int64,height::Int64)=new(options,width,height,"")

end


function axys(arr)

    if eltype(arr)<:Number

        return Dict("type"=>"value")

    elseif eltype(arr)<:Date

        return Dict("type"=>"time")

    elseif length(arr)!=0

        return Dict("type"=>"category","data"=>sort(unique(arr)))

    else
      return ""

    end


end

function EChart(;x=[], y=[],symbolSize=[],series=[],names=[],ctype="bar", width=800,height=600,options=Dict())

    leng=(x==[] ? length(y) : length(x))

    if x!=[] && y!=[]
    xAxis=axys(x)
    yAxis=axys(y)
    xAxis==""? "" : options["xAxis"]=xAxis
    yAxis==""? "" : options["yAxis"]=yAxis
    end

    if series==[]
    ### Single series
    ser=Dict("Series1"=>[i for i in 1:leng])
    else

        ser=class_series(series)
        options["legend"]=Dict("data"=>collect(keys(ser)))
    end



        options["series"]=[]
        for s in ser

            push!(options["series"],Dict("type"=>ctype,"name"=>s.first,"data"=>treat_series(x=get_pos(x,s.second),
                        y=get_pos(y,s.second))))

            act_ser=length(options["series"])

            ### Additional series attributes
            ### symbolSize
            if symbolSize!=[]
              s_arr=get_pos(symbolSize,s.second)
              options["series"][act_ser]["data"]=convert(Array{Dict{String,Any},1},options["series"][act_ser]["data"])
              for i in 1:length(options["series"][act_ser]["data"])
              options["series"][act_ser]["data"][i]["symbolSize"]=s_arr[i]
              end
            end
            ### names
            if names!=[]
              s_arr=get_pos(names,s.second)
              options["series"][act_ser]["data"]=convert(Array{Dict{String,Any},1},options["series"][act_ser]["data"])
              for i in 1:length(options["series"][act_ser]["data"])
              options["series"][act_ser]["data"][i]["name"]=s_arr[i]
              end
            end


        end



    ### Series Type


    return EChart(options,width,height)

end

function treat_series(;x=[],y=[])

    lx=length(x)
    ly=length(y)

    if lx==0
         return [Dict("value"=>[y[i]]) for i in 1:ly]
    elseif ly==0
        return [Dict("value"=>[x[i]]) for i in 1:lx]
    else
        return [Dict("value"=>[x[i],y[i]]) for i in 1:lx]
    end


end

function class_series(arr)
ret=Dict()
for i in 1:length(arr)

    haskey(ret,arr[i])? push!(ret[arr[i]],i) : ret[arr[i]]=[i]

end
return ret
end


function get_pos(arr,pos)
arr_out=[]
  if length(arr)==0
          return arr_out
      else
          for i in pos

         push!(arr_out,arr[i])
          end
        return arr_out
  end

end
