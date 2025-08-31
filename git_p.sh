curr_time=$(date "+%Y-%m-%d %H:%M:%S")
echo "Task started at: $curr_time"
echo "Writing at: $curr_time" > Hello.txt
git add Hello.txt
echo "Adding commit message..."
git commit -m "auto update at: $curr_time"
echo "Pushing..."
git push origin main
echo "Task Ended at: $curr_time"