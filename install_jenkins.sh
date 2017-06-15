echo "╔═══════════════════════════════════════════════════╗" && \
echo "║                                                   ║" && \
echo "║           _ _____ _   _ _  _____ _   _ ____       ║" && \
echo "║          | | ____| \ | | |/ /_ _| \ | / ___|      ║" && \
echo "║       _  | |  _| |  \| | ' / | ||  \| \___ \      ║" && \
echo "║      | |_| | |___| |\  | . \ | || |\  |___) |     ║" && \
echo "║       \___/|_____|_| \_|_|\_\___|_| \_|____/      ║" && \
echo "║                                                   ║" && \
echo "║                                                   ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
echo "║   Adding Jenkins APT repository                   ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - > /dev/null && \
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list' && \
echo "║   Updating APT repositories                       ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
sudo apt-get update > /dev/null && \
echo "║   Installing Java                                 ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
sudo apt-get -y install openjdk-7-jdk > /dev/null && \
echo "║   Installing Maven                                ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
sudo apt-get -y install maven > /dev/null && \
echo "║   Installing 32bit libraries                      ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
sudo apt-get -y install libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 > /dev/null && \
echo "║   Installing Jenkins                              ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
sudo apt-get -y install jenkins > /dev/null && \
echo "║   Downloading Android SDK                         ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
sudo wget -q http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -P /opt && \
echo "║   Extracting Android SDK                          ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
sudo tar xzvf /opt/android-sdk_r24.4.1-linux.tgz -C /opt > /dev/null && \
sudo rm /opt/android-sdk_r24.4.1-linux.tgz && \
echo "║   Setting permissions                             ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
sudo chmod -R +x /opt/android-sdk-linux && \
echo "║   Setting environment variables                   ║" && \
echo "╠═══════════════════════════════════════════════════╣" && \
echo 'export ANDROID_HOME="/opt/android-sdk-linux" export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"' | sudo tee /etc/profile.d/android.sh > /dev/null && \
source /etc/profile && \
echo "║                                                   ║" && \
echo "║ Everything is installed, but you have to install  ║" && \
echo "║ Android SDK platforms manually.                   ║" && \
echo "║                                                   ║" && \
echo "║ Use the                                           ║" && \
echo "║                                                   ║" && \
echo "║     sudo /opt/android-sdk-linux/tools/android     ║" && \
echo "║                                                   ║" && \
echo "║ command to start the SDK manager!                 ║" && \
echo "║                                                   ║" && \
echo "╚═══════════════════════════════════════════════════╝" 
