@echo on
set PATH=%JAVA_HOME%/bin;%PATH


for /r "features" %%i in  (*.jar) do (
@echo message %%i
 jarsigner -sigalg SHA1withDSA -digestalg SHA1 -keystore cacerts -storepass "password" -verbose -keypass "password" "%%i" "thalesgroup"
)
for /r "plugins" %%i in  (*.jar) do (
@echo message %%i
 jarsigner  -sigalg SHA1withDSA  -digestalg SHA1 -keystore cacerts -storepass "password" -verbose -keypass "password" "%%i" "thalesgroup"
)

