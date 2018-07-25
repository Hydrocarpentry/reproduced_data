### Finding the right files

-- Scripts and data files are found in the following links:
[Hydroshare website](https://www.hydroshare.org/resource/9db60cf6c8394a0fa24777c8b9363a9b/) and [Github repository](https://github.com/uva-hydroinformatics/flood_data). .

### Python version 
-- You need Python version 2.7 to run all scripts 
-- To make sure if you have right version of Python on your machine type: 

    -python 
-- To find out if it is 32 or 64 bit type the following within the python environment:

    -import platform
    -platform.architecture()    

### Modifying the script for processing street flood reports 
The name of this file is "prepare_flood_events_table.py"
1. The data can be imported from the csv file, so we do not need the database. We can comment the following lines. 
  #from db_scripts.main_db_script import data_dir, db_filename
  #con = sqlite3.connect(db_filename)
  #cds.to_sql(con=con, name="flood_events", if_exists="replace")
2. Change the file name to "STORM_data_flooded_streets_2010-2016.csv", which is the new file name on hydroshare. 
3. We need to install pandas to run this script. To do this do the following: 

       apt-get install -y python-pandas



### Modifying the script for aggregating Norfolk, VA environmental data to daily time scale 

1. Comment the following line "get_ipython().magic(u'matplotlib inline')"
2. Change the file path to 
db_filepath = "/Users/pinghou/Downloads/cybercarpentry2018/Project/hampt_rd_data.sqlite"

### Data-driven model script for flood severity modeling in norfolk, VA

1. sudo apt-get install r-base
2. Rscript install.r
    a. install.packages("caret")
    b. install.packages("randomForest")


###link to the large data   https://www.hydroshare.org/resource//hydroshareuserZone/home/localHydroProxy/9e1b23607ac240588ba50d6b5b9a49b5/data/contents/hampt_rd_data.sqlite

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/Hydrocarpentry/reproduced_data.git/master)

.. image:: https://mybinder.org/badge.svg :target: https://mybinder.org/v2/gh/Hydrocarpentry/reproduced_data.git/master
