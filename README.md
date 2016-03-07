WEB Applicatin taht manage Lawns and Mowers and calls manual mowing system.

GitHub
	https://github.com/romalopes/api_lawn_mowing
Heroku
	https://api-lawn-mowing.herokuapp.com


Simply set the DATABASE_URL config var for several apps to the same value. First, get the DATABASE_URL for your existing app:

$ heroku config | grep DATABASE_URL  --app sushi DATABASE_URL => postgres://lswlmfdsfos:5FSLVUSLLT123@ec2-123-456-78-90.compute1.amazonaws.com/ldfoiusfsf



Then, set the DATABASE_URL for new apps to this value:
$ heroku config:add DATABASE_URL=postgres://lswlmfdsfos:5FSLVUSLLT123@ec2-123-456-78-90.compute-1.amazonaws.com/ldfoiusfsf --app sushi-analytics
Adding config vars: DATABASE_URL => postgres://lswlm...m/ldfoiusfsf 

Restarting app... done, v74. That's it




heroku config | grep DATABASE_URL  --app sushi DATABASE_URL => postgres://avfauqjcthbykh:-a8K4LJ45aE9M9MokeiS90VIGm@ec2-54-235-152-114.compute-1.amazonaws.com:5432/d1gadvni3diqb2

heroku config:add DATABASE_URL=postgres://avfauqjcthbykh:-a8K4LJ45aE9M9MokeiS90VIGm@ec2-54-235-152-114.compute-1.amazonaws.com:5432/d1gadvni3diqb2 --app sushi-analytics

DATABASE_URL => postgres://avfauqjcthbykh:-a8K4LJ45aE9M9MokeiS90VIGm@ec2-54-235-152-114.compute-1.amazonaws.com:5432/d1gadvni3diqb2