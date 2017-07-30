#__precompile__()

module ECharts

	using JSON, DataFrames

	import Base.print, Base.show


	#Primitives - in order of descending dependency within files
	include("definetypes.jl")
	include("render.jl")

	



end # module
