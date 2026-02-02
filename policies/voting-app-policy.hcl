# Bu politika, voting-app uygulamasının veritabanı şifrelerini okumasını sağlar.

# KV (Key-Value) Secret Engine üzerindeki "database/config" yoluna okuma izni ver
path "secret/data/webapp/database" {
  capabilities = ["read"]
}

# Metadata okuma izni (Listeleme için gerekli)
path "secret/metadata/webapp/database" {
  capabilities = ["list"]
}
