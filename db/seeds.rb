User.create!([
  {email: "aj.biner@gmail.com", encrypted_password: "$2a$11$LjKlstc9n3IeYDhNBQ9QWebYJyZsYMQbQOurtvzIWXiDXzDGQJOoK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2016-11-23 10:38:11", last_sign_in_at: "2016-11-23 09:44:14", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false},
  {email: "ainun.jariya@emveep.com", encrypted_password: "$2a$11$xo0h9ezaUYhw.NVwedZilucbQykNwWC6KVtSBA4J8Mx480y4sC0dy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 19, current_sign_in_at: "2016-11-25 10:02:43", last_sign_in_at: "2016-11-25 09:02:34", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true}
])
Article.create!([
  {title: "Tentang Bulan", content: "Senyuman manis sang bulan menyapaku.. Begitu indah mekarkan suasana hatiku.. Sejenak kuterdiam termangu.. Memandang indahnya yang tak pernah jemu..  Sinarmu terpancar mengusir gelap.. Menembus malam hadirkan terang.. Kunikmati cahayamu hangatkan malamku.. Bahagiakan rongga hati ini yang tersinari..  Bulan.. belailah jiwaku ini.. Yang begitu tegang menjalani hari.. Usaplah sesaknya asmara di dada ini.. Keringkanlah luka menganga dihati ini..  Bulan.. memandangmu membuatku mengerti.. Bahwa keindahan tak harus selalu didekati.. Bahwa keindahan tak harus selalu dimiliki.. Namun hanya untuk sekedar di pandang dan dikagumi..", category_id: 1, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil},
  {title: "Cerita Pagi", content: "hawa yang diam demikian indah menghadirkan bola matahari dengan kemuning sinarnya saya teringat kamu terpuruk di sudut kamar menyanyi tanpa kata-kata rinduku menyulam pintalan doa tanpa letih. . . untuk pagi mu yang indah selamat pagi. . ", category_id: 2, image_file_name: "bg.jpg", image_content_type: "image/jpeg", image_file_size: 511989, image_updated_at: "2016-11-25 10:12:58"}
])
Category.create!([
  {name: "Alam"},
  {name: "Waktu"},
  {name: "Cinta"}
])
Comment.create!([
  {content: "tentang bulan .. about moon (y)", user_id: 2, article_id: 2},
  {content: "tentang bulan .. about moon (y)", user_id: 2, article_id: 2},
  {content: "", user_id: 2, article_id: 2},
  {content: "ini komentar baru", user_id: 1, article_id: 2}
])
