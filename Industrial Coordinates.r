library(sf)
library(ggplot2)

land_cover = st_read(file.choose())  #Prompt to select file, which will be Land_Cover.shp
land_cover

#First 10 features:
 #  FID    AREA GRID_CODE    SQFT       ACRES         SQMI SHAPE_Leng SHAPE_Area
#1    1  322752         6  322752   7.4093671 0.0115771396  1713.6832  52177.078
#2    2  161376         3  161376   3.7046831 0.0057885670   922.9733  26092.257
#3    3  645504         5  645504  14.8187304 0.0231542699  2109.9595 104366.442
#4    4    6724        14    6724   0.1543618 0.0002411903   131.8834   1087.073
#5    5 1909616         5 1909616  43.8387489 0.0684980527  6660.5285 308710.535
#6    6 4982484         3 4982484 114.3821030 0.1787219942  9101.8359 805480.271
#7    7   53792         3   53792   1.2348940 0.0019295220   461.4657   8696.627
#8    8   26896         6   26896   0.6174472 0.0009647612   329.8043   4347.455
#9    9  100860         1  100860   2.3154271 0.0036178550   527.4818  16302.892
#10  10   87412         5   87412   2.0067029 0.0031354730   527.3045  14133.322
 #                        geometry
#1  POLYGON ((-8885599 4963854,...
#2  POLYGON ((-8922118 4964347,...
#3  POLYGON ((-8921956 4964451,...
#4  POLYGON ((-8883164 4963911,...
#5  POLYGON ((-8881234 4962998,...
#6  POLYGON ((-8922044 4962862,...
#7  POLYGON ((-8880894 4963964,...
#8  POLYGON ((-8918459 4962959,...
#9  POLYGON ((-8918459 4962959,...
#10 POLYGON ((-8921659 4964426,...

ggplot(land_cover) + geom_sf()
land_cover_mod = land_cover[(land_cover$GRID_CODE == 11 | land_cover$GRID_CODE == 12), ]
ggplot(land_cover_mod) + geom_sf(aes(fill = GRID_CODE))

#Only showing the coordinates with that contain industrial areas