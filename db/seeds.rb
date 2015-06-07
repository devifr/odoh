# Role
puts 'Create Role'
['Admin', 'Murabi', 'Mamum'].each_with_index do |r, i|
  role = Role.find_or_initialize_by(name: r)
  role.id = (i+1)
  role.save
end
puts 'Finish'

# admin
puts 'Create Admin'
admin = Admin.find_or_initialize_by(email: 'admin@mail.com')
admin.name = "administrator"
admin.password = "odoh1234"
admin.save
puts 'Finish'

#surah
puts 'Create Surah'
surah = ['Al-Fatihah','Al-Baqorah', 'Al-Imran', 'An-Nisa', 'An-Maidah', "An-An'am", 'Al-Araf',
         'Al-Anfal', 'At-taubah', 'Yunus', 'Hud', 'Yusuf', 'Ar-Rad', 'Ibrahim', 'Al-Hijr',
         'An-Nahl', 'Al-Isra', 'Al-Kahfi', 'Maryam', 'Ta-ha', 'Al-Anbiya', 'Al-Hajj', 'Al-Mumenoon',
         'An-Nur', 'An-Furqon', "Ash-Shu'ara", 'An-Naml', 'Al-Qasas', 'Al-Ankabut', 'Ar-Rum', 'Luqman', 
         'As-Sajda', 'Al-Ahzab', 'Saba', 'Fatir', 'Yasin', 'As-Saaffat', 'Sad', 'Az-Zumar', 'Ghafir', 
         'Fussilat', 'Ash-Shura', 'Az-Zukhuf', 'Ad-Dukhan', 'Al-Jathiya', 'Al-Ahqaf', 'Muhammad',
         'Al-Fath', 'Al-Hujurat', 'Ad-Dhariyat', 'At-tur', 'An-Najm', 'An-Qamar', 'Ar-Rahman',
         'Al-Waqia', 'Al-Hadid', 'Al-Mujadala', 'Al-Hashr', 'Al-Mumtahana', 'As-saff', 'Al-Jumua',
         'Al-Munafiqun', 'At-Taghabun', 'At-Talaq', 'At-Tahrim', 'Al-Mulk', 'Al-Qalam', 'Al-Haaqqa',
         'Al-Maarij', 'Nuh', 'Al-Jin', 'Al-Muzzamil', 'Al-Muddaththir', 'Al-Qiyamah', 'Al-Insan',
         'Al-Mursalat', 'An-Naba', 'An-Naziat', 'Abasa', 'At-Takwir', 'Al-Infitar', 'Al-Mutaffifin',
         'Al-Inshiqaq', 'Al-Buruj', 'At-Tariq', "Al-'Ala", 'Al-Ghoshiya', 'An-Nur', 'Al-Fajr',
         'Al-Balad', 'Ash-Shams', 'Al-Lail', 'Ad-Dhuha', 'Al-Sharh', 'At-Tin', 'Al-Alaq', 'Al-Qadr',
         'Al-Bayyinah', 'Az-Zalzala', 'Al-Adiyat', 'Al-Qariah', 'At-Takathur', 'Al-Asr', 'Al-Humazah',
         'Al-Fil', 'Quraish', 'Al-Maun', 'Al-Kauthar', 'Al-Kafirun', 'An-Nasr', 'Al-Masadd', 'Al-Ikhlas',
         'Al-Falaq', 'An-Nas']
total = ['7', '286', '200', '176', '120', '165', '206', '75', '129', '109', '123', '111', '43', '52',
         '99', '128', '111', '110', '98', '135', '112', '78', '118', '64', '77', '227', '93', '88', '69',
         '60', '34', '30', '73', '54', '45', '83', '182', '88', '75', '85', '54', '53', '89', '59', '37',
         '35', '38', '29', '18', '45', '60', '49', '62', '55', '78', '96', '29', '22', '24', '13', '14',
         '11', '11', '18', '12', '12', '30', '52', '44', '28', '28', '20', '56', '40', '31', '50', '40',
          '46', '42', '29', '19', '36', '25', '22', '17', '19', '26', '30', '20', '15', '21', '11', '8',
          '8', '19', '5', '8', '8', '11', '11', '8', '3', '9', '5', '4', '7', '3', '6', '3', '5', '4', '5', '6']
surah.each_with_index do |s, i|
  su = Surah.find_or_initialize_by(name: s)
  su.total = total[i]
  su.save
end
puts 'Finish'