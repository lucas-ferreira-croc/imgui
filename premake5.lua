project "ImGui"
    kind "staticLib"

    language "C++"

        targetdir ("bin/" .. outputdir .. "/%{prj.name}")
        objdir("bin-int/" .. outputdir .. "/%{prj.name}")

        files
        {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
        }

        filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"


        filter { "sytem:windows", "configurations:Release"}
            buildoptions "/MT"
