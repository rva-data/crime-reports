"""
Given a CSV file input by STDIN it will export a cleaned copy to STDOUT
"""

import csv
import sys


def clean_data(infile, outfile):
    """
    Processes a file or file-like CSV input object and writes the cleaned data
    to the file or file-like output object.
    """
    reader = csv.reader(infile)
    writer = csv.writer(outfile, delimiter=',', quotechar='"', quoting=csv.QUOTE_NONNUMERIC)
    for row in reader:
        out_row = []
        for column in row:
            if isinstance(column, str):
                out_row.append(column.strip())
            else:
                out_row.append(column)
        writer.writerow(out_row)


if __name__ == "__main__":
    if len(sys.argv) == 3:
        with open(sys.argv[1], 'r') as infile:
            with open(sys.argv[2], 'w') as outfile:
                clean_data(infile, outfile)
    else:
        # New lines are *not* being returned here!
        clean_data(sys.stdin, sys.stdout)
