          wget https://raw.githubusercontent.com/akhilnarang/scripts/master/setup/android_build_env.sh
            chmod +x android_build_env.sh
            ./android_build_env.sh
            wait
          wget https://artifacts.crowdin.com/repo/deb/crowdin3.deb -O crowdin.deb
          sudo dpkg -i crowdin.deb
          sudo apt-get install python3-git python3-yaml python3-lxml
          wait
          git clone https://github.com/SuperiorOS/crowdin.git crowdin
          cd crowdin
          pip install -r requirements.txt
          wait
          cd ~
