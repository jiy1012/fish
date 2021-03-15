
fmt:
	gofmt -l -w -s ./

build: fmt
	go build -o accout_server account/main/main.go account/main/config.go account/main/init.go
	go build -o hall_server hall/main/main.go hall/main/init.go hall/main/config.go
	go build -o fish_server game/main/main.go game/main/init.go game/main/config.go

run:
	./accout_server >> ./run-accout_server.log 2>&1 &
	./hall_server >> ./run-hall_server.log 2>&1 &
	./fish_server >> ./run-fish_server.log 2>&1 &

stop:
	killall -9 "accout_server"
	killall -9 "hall_server"
	killall -9 "fish_server"

