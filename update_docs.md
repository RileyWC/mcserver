# Run the Following commands to update the minecraft server:

## Make backups of the old world and files
`cp -r banned-ips.json banned-players.json mcstart.sh ops.json server.properties usercache.json whitelist.json world ../minecraft_backups/x.x.x_backup`


## Remove the old directory
`rm -r * `    ###DO THIS IN THE MCSERVER DIRECTORY ONLY###

## Download the server.jar
`sudo curl https://piston-data.mojang.com/v1/objects/e6ec2f64e6080b9b5d9b471b291c33cc7f509733/server.jar -o server.jar`

## Run the new server.jar
`java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui`


## Find the process of the old server

`lsof -i tcp:25565`


## Kill the old server

`sudo kill -9 <PID>`

## Run the new server in the background
`./mcstart.sh &`

## Exit the ssh session



