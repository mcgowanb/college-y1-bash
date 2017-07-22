number=$(ps -A | wc -l)
echo "There are $number running processes on this system" 

ps -A -f

users=$(who | wc -l)
echo "there are $users users logged in"

who

echo $(date)