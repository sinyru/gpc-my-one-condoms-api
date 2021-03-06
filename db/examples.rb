# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

InputDate.create({start_date: '2017-12-23'})

dates = ['2017-08-05','2017-08-12','2017-08-19','2017-08-26','2017-09-02',
         '2017-09-09','2017-09-16','2017-09-23','2017-09-30','2017-10-07',
         '2017-10-14','2017-10-21','2017-10-28','2017-11-04','2017-11-11',
         '2017-11-18','2017-11-25','2017-12-02','2017-12-09','2017-12-16']
revenues = [4262.33,1869.33,2013.70,1893.79,2099.26,1816.83,2669.54,7174.90,
            5871.42,5677.52,7255.50,11372.37,8215.84,8195.75,8334.87,6897.08,
            5696.93,8471.02,5938.30,5697.38]
repeats = [22,45,68,55,73,65,71,125,160,212,160,230,278,301,274,275,225,348,232,225]
visits = [3160,1629,2825,1773,1646,1426,23927,72463,27548,24276,39025,54717,19704,21344,40350,9071,10416,9798,9089,8754]
orders = [522,237,306,223,241,204,510,1564,959,869,1249,1909,1048,1120,1334,778,610,907,648,610]
averages = [8.26,8.17,6.71,8.58,8.97,8.94,5.30,4.61,6.15,6.67,5.83,6.01,7.90,7.43,6.32,9.01,9.46,9.48,9.24,9.50]
conversions = [0.1560,0.1308,0.0981,0.1156,0.1349,0.1275,0.0203,0.0212,0.0333,0.0323,0.0306,0.0334,0.0491,0.0482,0.0309,0.0763,0.0514,0.0765,0.0633,0.0621]
newcs = [500,192,238,168,168,139,439,1439,799,657,1089,1679,770,819,1060,503,385,559,416,385]
samples = [744,144,202,143,145,116,409,1326,733,635,953,1467,693,763,995,443,327,490,413,341]
sixs = [208,78,44,41,31,49,40,111,81,92,122,205,127,129,134,122,107,134,74,83]
twelves = [106,15,31,21,23,22,30,72,57,63,90,139,112,92,85,118,78,129,90,88]
twenties = [153,36,41,43,55,38,44,90,112,125,124,171,175,189,163,145,138,214,154,132]
mobiles = [1914,829,1747,938,888,759,21550,66055,22923,21334,29225,31820,13542,16702,31715,6232,6423,6269,5995,6017]
desktops = [1146,740,1005,750,715,625,2032,5497,4260,2597,7971,12148,5173,3948,7762,2480,3243,3080,2669,2348]
tablets = [100,55,100,79,45,44,344,906,364,345,1826,2368,987,642,862,356,748,442,419,401]
nps = [0,0,68,71,72,70,60,52,56,53,54,62,57,58,56,59,59,61,60,62]

20.times do |i|
  Report.create({
      revenue: revenues[i],
      dates: dates[i],
      repeat_customers: repeats[i],
      total_visits: visits[i],
      total_orders: orders[i],
      average_order_value: averages[i],
      conversion_rate: conversions[i],
      new_customers: newcs[i],
      samples: samples[i],
      six_packs: sixs[i],
      twelve_packs: twelves[i],
      twenty_four_packs: twenties[i],
      mobiles: mobiles[i],
      desktops: desktops[i],
      tablets: tablets[i],
      nps: nps[i]
    })
end
