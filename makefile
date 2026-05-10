build:
	./build.sh

run:
	qemu-system-i386 -drive format=raw,file=build/snakeos.img

clean:
	rm -rf build