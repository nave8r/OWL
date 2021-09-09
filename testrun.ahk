Run, https://www.youtube.com/channel/UC4R8DWoMoI7CAwX8_LjQHig
sleep 10000
ImageSearch, Fx, Fy, 0, 0, A_ScreenWidth, A_ScreenHeight, searchforlive.png
if ErrorLevel = 2
{
    msgbox, problem with code or with one of the files. please print screen and crop to match the image.
    Run, searchforlive.png
}
if ErrorLevel = 1
{
    image not found.
}
if ErrorLevel = 0
{
    msgbox, image found ! test run completed successfully :)
}