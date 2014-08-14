#!/usr/bin/ruby
# Create 3 Users
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/users -d '{"user": {"email":"test3@foo.com", "name":"Test User 3", "password":"foo3"}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/users -d '{"user": {"email":"test4@foo.com", "name":"Test User 4", "password":"foo4"}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/users -d '{"user": {"email":"test5@foo.com", "name":"Test User 5", "password":"foo5"}}'

# Create 5 splatts for each user
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Hi Everybody", "user_id":4}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Hi", "user_id":5}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Hello", "user_id":6}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"how are you today?", "user_id":4}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Hi Everybody", "user_id":5}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"me too", "user_id":6}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"thats good, will see you later", "user_id":4}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"im great", "user_id":5}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"ok", "user_id":6}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"enjoy your day", "user_id":4}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"ok", "user_id":5}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"thanks", "user_id":6}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"cya, "user_id":4}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"thanks", "user_id":5}}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/splatts -d '{"splatt": {"body":"cya", "user_id":6}}'

# The first user follows the other 2
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/users/follows -d '{"id":4, "follows_id":5}'
curl -i -H "Content-type: application/json" -X POST http://hayes.sqrawler.com:3000/users/follows -d '{"id":4, "follows_id":6}'

# Gets the first user's splatts
curl -i -H "Content-type: application/json" -X GET http://hayes.sqrawler.com:3000/users/splatts/4

# Gets the users followed by the first user
curl -i -H "Content-type: application/json" -X GET http://hayes.sqrawler.com:3000/users/follows/4

# Gets the first user's newsfeed
curl -i -H "Content-type: application/json" -X GET http://hayes.sqrawler.com:3000/users/splatts-feed/4

# First user unfollows the third user
curl -i -H "Content-type: application/json" -X DELETE http://hayes.sqrawler.com:3000/users/follows/4/6


# Gets the first user's newsfeed after unfollowing the third
curl -i -H "Content-type: application/json" -X GET http://hayes.sqrawler.com:3000/users/splatts-feed/4
