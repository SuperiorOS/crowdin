          mkdir superior
          cd superior
          repo init -u https://github.com/SuperiorOS/manifest -b fourteen -m crowdin.xml --depth=1
          repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
          wait
          cd crowdin
          export CROWDIN_BASE_PATH=/home/runner/work/crowdin/crowdin/superior
          CROWDIN_API_KEY=$CROWDIN_API_KEY
          ./crowdin_sync.py --username Darkstar085 --branch fourteen --upload-sources --upload-translations
