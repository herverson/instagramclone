alias Instagram.{Posts, Repo}

mock_photos = 9

photos_list = [
  "https://freestocks.org/fs/wp-content/uploads/2020/04/cat_having_an_iv_fluid_therapy_2-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2020/04/cat_at_a_vet_hospital-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2020/04/cat_in_a_transporter_closeup-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2020/01/school_of_koi_fish_2-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2019/10/english_bulldog_in_a_ghost_costume_2-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2019/10/water_strider_insects-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2020/01/school_of_koi_fish-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2020/03/dogs_paw_on_a_soap_bar-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2020/01/hermit_crab_on_a_beach-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2020/01/monkey_on_a_beach_in_thailand-1000x667.jpg"
]

for idx <- 0..mock_photos do
  photo = %{
    image_url: Enum.at(photos_list, idx),
    caption: Faker.Lorem.Shakespeare.hamlet
  }

  %Posts.Photo{}
  |> Posts.Photo.changeset(photo)
  |> Repo.insert!
end
