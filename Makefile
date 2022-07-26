all: compile link

compile:
	g++ -c main.cpp -I"C:/Users/user/cpp_libraries/SFML-2.5.1/include" -DSFML_STATIC

link:
	g++ main.o -o main -L"C:/Users/user/cpp_libraries/SFML-2.5.1/lib" -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lwinmm -lgdi32 -lsfml-main

clean:
	powershell "Remove-Item *.o, *.exe -Force"
