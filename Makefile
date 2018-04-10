.PHONY: all clean

all: data/b827ebbe2801_1521208993.82_slow.csv

data/b827ebbe2801_1521208993.82_slow.csv: data/b827ebbe2801_1521208993.82_data.tar
	cd data; for f in `ls | grep '_data.tar'`; do tar -xvf $$f; done

data/b827ebbe2801_1521208993.82_data.tar:
	cd data; tar -xvzf 2018-03-16.tar.gz

clean:
	cd data; rm -f *.tar; rm -f *.csv
