module deimos.surfi.pixbuf;

extern(C) {
    struct Pixbuf {}

    int surfi_pixbuf_get_n_channels(Pixbuf *pixbuf);
    bool surfi_pixbuf_get_has_alpha(Pixbuf *pixbuf);
    int surfi_pixbuf_get_bits_per_sample(Pixbuf *pixbuf);
    ubyte* surfi_pixbuf_get_pixels(Pixbuf *pixbuf);
    ubyte* surfi_pixbuf_get_pixels_with_length(Pixbuf *pixbuf, uint *length);
    int surfi_pixbuf_get_width(Pixbuf *pixbuf);
    int surfi_pixbuf_get_height(Pixbuf *pixbuf);
    int surfi_pixbuf_get_rowstride(Pixbuf *pixbuf);
    uint surfi_pixbuf_get_byte_length(Pixbuf *pixbuf);
    const(char)* surfi_pixbuf_get_option(Pixbuf *pixbuf, const(char)* key);
    bool surfi_pixbuf_save(Pixbuf *pixbuf, const(char)* filename, const(char)* type);
}