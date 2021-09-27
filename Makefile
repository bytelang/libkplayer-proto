build-cpp:
	protoc -I=. --cpp_out=. *.proto
	cd prompt && protoc -I=. --cpp_out=. *.proto
	cd msg && protoc -I=. --cpp_out=. *.proto

build-go:
	protoc -I=. -I=./prompt -I=./msg --go_out=. *.proto prompt/*.proto msg/*.proto
	cp -rf github.com/bytelang/kplayer/proto/* ./
	rm -rf github.com

clear:
	rm -rf *.pb.cc *.h *.go
	rm -rf prompt/*.pb.cc prompt/*.h prompt/*.go
	rm -rf msg/*.pb.cc msg/*.h msg/*.go

