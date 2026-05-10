void kernel_main() {
    volatile char* vga = (volatile char*)0xB8000;

    const char* text = "Welcome to SnakeOS";

    for(int i = 0; text[i] != '\0'; i++) {
        vga[i * 2] = text[i];
        vga[i * 2 + 1] = 0x0A;
    }

    while(1);
}