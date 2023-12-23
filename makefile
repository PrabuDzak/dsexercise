download-dataset:
	wget https://github.com/amir-hojjati/Data-Analysis-Online-Retail-Transactions/archive/master.zip
	unzip master.zip -d ./datasets/
	rm master.zip

compose-up:
	docker compose up -d

redash-create-database:
	docker compose run --rm server create_db

postgres-shell:
	docker compose exec postgres sh

postgres-create-table:
	docker compose exec postgres psql -f ./create_table.sql
