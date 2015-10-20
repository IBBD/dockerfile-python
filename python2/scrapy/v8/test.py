import PyV8

ctxt = PyV8.JSContext()
ctxt.enter()
func = ctxt.eval("""
    (function(){
        function hello(){
            return "Hello world.";
        }
        return hello();
    })
""")
print func()
