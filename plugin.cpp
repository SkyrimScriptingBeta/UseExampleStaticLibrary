#include <ExampleStaticLibrary.h>
#include <RE/Skyrim.h>
#include <SKSE/SKSE.h>

extern "C" __declspec(dllexport) bool SKSEPlugin_Load(const SKSE::LoadInterface* a_skse) {
    SKSE::Init(a_skse);

    SKSE::GetMessagingInterface()->RegisterListener(
        "SKSE",
        [](SKSE::MessagingInterface::Message* a_msg) {
            if (a_msg->type == SKSE::MessagingInterface::kDataLoaded) {
                ExampleStaticLibrary::ExampleClass instance;
                instance.PrintToConsole("I AM USING THE EXAMPLE STATIC LIBRARY");
            }
        }
    );

    return true;
}
