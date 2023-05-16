# ❌⭕ TikiTaka

TikiTaka is a multiplayer TicTacToe game which users play in realtime, it works on Android, iOS and Web.

## Features
 - Users can create/join room
 - Users play in realtime
 - Users points will be displayed
 - Responsive UI

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
