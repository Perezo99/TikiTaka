# ❌⭕ TikiTaka

TikiTaka is a multiplayer TicTacToe game which users play in realtime, it works on Android, iOS and Web. It is built with flutter on the client side and nodejs on the server side.

## Features
 - Users can create/join room
 - Users play in realtime
 - Users points will be displayed
 - Responsive UI

## 📸 ScreenShots
   ![Screenshot_20230516-133840](https://github.com/Perezo99/TikiTaka/assets/49396765/a2a832f5-bcd3-4db2-b8df-7735dd877af4)
   ![Screenshot_20230516-134025](https://github.com/Perezo99/TikiTaka/assets/49396765/09065478-3a5e-47f3-bc36-254f38a50322)

   ![Screenshot_20230516-134112](https://github.com/Perezo99/TikiTaka/assets/49396765/4c4584ab-ff15-440a-aae8-b484c86cca94)
   ![Screenshot_20230516-134051](https://github.com/Perezo99/TikiTaka/assets/49396765/4918b535-de5a-4596-8220-062ef63b3bce)

   ![Screenshot_20230516-134012](https://github.com/Perezo99/TikiTaka/assets/49396765/8be7310f-ae4c-4a97-a61b-fa35c11dd699)
   ![Screenshot_20230516-133808](https://github.com/Perezo99/TikiTaka/assets/49396765/f30b0ad8-f96e-4e61-992e-aa749ba4ccc6)


## 🚀 Installation
   After Cloning the repository, migrate to the app folder.
   
   Install Client side dependencies
   - Run Flutter pub get
   - Put your IP address in the socket client
   
   Install Server side dependencies:
   - cd server && npm install
   - input your mongodb username and password
   - run, npm run dev

   To configure for MacOS: Head to macos/Runner and make sure the following keys are present in    DebugProfile.entitlements and Release.entitlements
   <key>com.apple.security.network.server</key>
   <true/>
   <key>com.apple.security.network.client</key>
   <true/>
   
 ## ⚙️ Tech Used
 Client: Flutter framework, Provider.
 Server: Node.js, Express, Socket.io, Mongoose, MongoDB
 
 ## 💡 Requirements
 - An Operating System (ie. MacOS X, Linux, Windows)
 - An IDE with Flutter SDK installed (ie. IntelliJ, Android Studio, VSCode etc)
 - A little knowledge of Dart and Flutter.
   
 Please Star⭐ the repo if you like what you see😉.
