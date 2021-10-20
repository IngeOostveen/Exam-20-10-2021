All: output/plot_all.pdf output/plot.pdf

data/reviews.csv data/listings.csv: src/download_data.R
			R --vanilla < src/download_data.R
		
temp/pivot_table.csv: src/export_pivot.R temp/aggregated_df.csv
		R --vanilla < src/export_pivot.R
		
src/plot.pdf: src/plot.R /pivot_table.csv
		R --vanilla < src/plot_antwerp.R
		
src/plot_all.pdf: src/plot_all.R
		R --vanilla < src/plot_all.R