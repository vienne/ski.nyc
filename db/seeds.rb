# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.delete_all
# Trip.delete_all
# SkiLocation.delete_all



admin = User.create({
	email: 'admin@nyski.club',
	password: 'trippingdonkeys',
	admin: true
	})

funny = User.create({
	email: 'jon@cray.edu',
	password: 'what',
	admin: false
	})

ski_location = SkiLocation.create({
	name: 'Mountain of Awesomeness',
	address: 'Your Mom',
	url: 'www.awesome.com',
	category: 'mountain'
	})

trip = Trip.create({
	start_date: '2/2/1985',
	end_date: '2/4/1985',
	status: 0,
	creator_id: admin.id,
	name: 'Fantastic Trip',
	description: 'Totally awesome!',
	ski_location_id: ski_location.id
	})

locations = SkiLocation.create([
		{
			name: 			'Shawnee Mountain Ski Area',
			address: 		'401 Hollow Rd East Stroudsburg, PA 18301',
			url: 				'http://www.shawneemt.com/index.html',
			category: 	'mountain'
		},
		{
			name: 			'Eagle Rock Resort',
			address: 		'1 Country Club Drive 18202',
			url: 				'http://www.eaglerockresort.com/leisure-activities/ski/',
			category: 	'mountain',
		}
	])

#
