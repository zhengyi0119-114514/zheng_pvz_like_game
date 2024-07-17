#include <minwindef.h>
#include <windows.h>

BOOL WINAPI DllMain(HINSTANCE hinstDLL, DWORD fdwReason, PVOID lpvReserved)

{
    // Perform actions based on the reason for calling.
    switch (fdwReason)
    {
    case DLL_PROCESS_ATTACH:
        //在程序开始时运行
        // Initialize once for each new process.
        // Return FALSE to fail DLL load.
        break;

    case DLL_THREAD_ATTACH:
        //在线程开始时运行
        // Do thread-specific initialization.
        break;

    case DLL_THREAD_DETACH:
        //在线程结束时运行
        // Do thread-specific cleanup.
        break;

    case DLL_PROCESS_DETACH:
        //在程序结束时运行
        if (lpvReserved != nullptr)
        {
            break; // do not do cleanup if process termination scenario
        }

        // Perform any necessary cleanup.
        break;
    }
    return FALSE;
}