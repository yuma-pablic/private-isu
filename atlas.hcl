env "local" {
  src = "file://benchmarker/sql/schema.sql"

  dev = "mysql://root:root@localhost:3306/isuconp?charset=utf8mb4&parseTime=true&loc=Local"

  migration {
    dir    = "file://webapp/golang/migrations"
    format = "atlas"
  }

  url = "mysql://root:root@localhost:3306/isuconp?charset=utf8mb4&parseTime=true&loc=Local"

  format {
    migrate {
      diff = "{{ sql . \"  \" }}"
    }
  }
}