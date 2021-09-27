build:
	protoc -I=. --cpp_out=. *.proto
	cd prompt && protoc -I=. --cpp_out=. *.proto
	cd msg && protoc -I=. --cpp_out=. *.proto

clear:
	rm -rf *.pb.cc *.h
	rm -rf prompt/*.pb.cc prompt/*.h
	rm -rf msg/*.pb.cc msg/*.h

