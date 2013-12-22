# RVA Crime Reports

    The true crime fighter always carries everything he needs in his utility belt, Robin.

Richmond's crime report data is stuck behind an [antiquated data
reporting](http://eservices.ci.richmond.va.us/applications/crimeinfo/index.asp)
system that spits out ill-formatted data in all but the tiniest chunks.

Let's make some data available. Let's make a utility belt.

### Files

WIP

* `csv`: sample download and cleaned CSV
* `clean_csv.py`: Python script for cleaning the CSV prior to loading
  into the database
* `schema.sql`: PostgreSQL (with PostGIS) table schema
* `load.sql`: simple data loading query

### Data acquisition and cleaning

1. Tediously download data
2. ???
3. Profit

The data needs to be downloaded in chunks due to apparent short timeout
durations on the crime reports server.

A data sample is in the `csv` directory of this repository.
