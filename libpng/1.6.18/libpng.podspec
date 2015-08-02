Pod::Spec.new do |s|

  s.name              = "libpng"
  s.version           = "1.6.18"
  s.summary           = "The free reference library for reading and writing PNGs"

  s.homepage          = "http://www.libpng.org/"
  s.license           = { :type => "zlib/libpng", :file => "LICENSE" }
  s.author            = { "Alexey Komnin" => "interfere.work@gmail.com" }

  s.source            = { :git => "https://github.com/glennrp/libpng.git", :tag => "v#{s.version}" }
  s.requires_arc      = false

  s.platform          = :ios
  s.prepare_command   = "cp -v scripts/pnglibconf.h.prebuilt ./pnglibconf.h"
  s.source_files      = "*.{h,c}"
  s.exclude_files     = "example.c", "pngpread.c", "pngtest.c"
  s.compiler_flags    = "-DPNG_NO_CONFIG_H","-DHAVE_DLFCN_H=1","-DHAVE_INTTYPES_H=1","-DHAVE_LIBZ=1","-DHAVE_MEMORY_H=1",
                        "-DHAVE_MEMSET=1","-DHAVE_POW=1","-DHAVE_STDINT_H=1","-DHAVE_STDLIB_H=1","-DHAVE_STRINGS_H=1",
                        "-DHAVE_STRING_H=1","-DHAVE_SYS_STAT_H=1","-DHAVE_SYS_TYPES_H=1","-DHAVE_UNISTD_H=1","-DSTDC_HEADERS=1",
                        "-Drestrict=__restrict"
  s.library           = "z"

end
