#include <string>

// This shim is needed to fix problems related to the ANX Camera [some missing methods referenced by libcameraservice.so]

const std::string mOpPackageName = "";

// New constructor prototype of MediaPlayer::MediaPlayer(const std::string opPackageName)
extern "C" void _ZN7android11MediaPlayerC1ENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(const std::string opPackageName);
