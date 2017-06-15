wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - && \
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list' && \
sudo apt-get update && \
sudo apt-get -y install openjdk-7-jdk maven libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 jenkins && \
sudo wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -P /opt && \
sudo tar xzvf /opt/android-sdk_r24.4.1-linux.tgz -C /opt && \
sudo rm /opt/android-sdk_r24.4.1-linux.tgz && \
sudo chmod -R +x /opt/android-sdk-linux && \
echo 'export ANDROID_HOME="/opt/android-sdk-linux" export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"' | sudo tee /etc/profile.d/android.sh > /dev/null && \
source /etc/profile && \
echo "" && \
echo "Everything is installed, but you have to install Android SDK platforms manually." && \
echo "Use the sudo /opt/android-sdk-linux/tools/android command to start the SDK manager!"
