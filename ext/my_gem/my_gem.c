#include <ruby.h>

static VALUE my_gem_hello(VALUE self) {
    return rb_str_new_cstr("Hello from C!");
}

static VALUE my_gem_add(VALUE self, VALUE a, VALUE b) {
    int result = NUM2INT(a) + NUM2INT(b);
    return INT2NUM(result);
}

void Init_my_gem(void) {
    VALUE mMyGem = rb_define_module("MyGem");
    rb_define_singleton_method(mMyGem, "hello", my_gem_hello, 0);
    rb_define_singleton_method(mMyGem, "add", my_gem_add, 2);
}
