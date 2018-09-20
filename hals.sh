# Use the script to clone msm8996 hals 

# Remove existing HALS

echo Removing existing
rm -rf hardware/qcom/display-caf hardware/qcom/media-caf hardware/qcom/audio-caf

# Clone
echo Cloning

git clone https://github.com/ArrowOS/android_hardware_qcom_media.git -b arrow-9.x  hardware/qcom/media-caf && git clone https://github.com/ArrowOS/android_hardware_qcom_display.git -b arrow-9.x hardware/qcom/display-caf/msm8996 && git clone https://github.com/ArrowOS/android_hardware_qcom_audio.git -b arrow-9.x hardware/qcom/audio-caf/msm8996

echo Completed

# End
