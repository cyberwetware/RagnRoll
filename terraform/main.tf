resource "snowflake_database" "db" {
  name = "TF_RAG_APP"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_RAG_APP"
  warehouse_size = "xsmall"
  auto_suspend   = 60
}
