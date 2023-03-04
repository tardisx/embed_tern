package main

import (
	"embed_tern/migrations"
	"os"
)

func main() {
	// create a migrator, connecting to the postgresql
	// database defined by the environment variable
	migrator, err := migrations.NewMigrator(os.Getenv("DB_DNS"))
	if err != nil {
		panic(err)
	}

	// get the current migration status
	now, exp, info, err := migrator.Info()
	if err != nil {
		panic(err)
	}
	if now < exp {
		// migration is required, dump out the current state
		// and perform the migration
		println("migration needed, current state:")
		println(info)

		err = migrator.Migrate()
		if err != nil {
			panic(err)
		}
		println("migration successful!")
	} else {
		println("no database migration needed")
	}

}
