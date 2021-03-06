# Web PDF Generator

A responsive Flutter web app that fetches data from a server and generates pdf files containing the data. It then downloads them.

## Visuals
<a href="#" target="_blank"><img src="preview.gif" height="500"></a>

## Installation
A Flutter installation is required to run this project.
To install Flutter, visit the official installation [documentation](https://docs.flutter.dev/get-started/install).
Set up an editor of choice as specified [here](https://docs.flutter.dev/get-started/editor).

Download the project.

```bash
git clone https://github.com/root458/Web-PDF-Generator.git
```
Enable Flutter Web to be able to run the project on a Web Browser (You will then need to restart your Editor or IDE).
```bash
flutter config --enable-web
```

Install necessary packages
```bash
flutter pub get
```

Generate a release build
```bash
flutter build web
```

Navigate to build/web/index.html and edit the line:
```html
<base href="/">
```
to:
```html
<base href="/web/">
```

After setting up Xampp, copy the web folder and paste in the directory C:\xampp\htdocs\ for <a>Windows</a> or <a>/opt/lampp/htdocs</a> on <a>Linux</a> (This may require elevated privileges)

Also, paste the <a>databasefiles</a> folder in the same directory.

## Set up Xampp
To set up Xampp, follow the guide [here](https://www.apachefriends.org/download.html).

Set up the database, from where the data will be fetched.

Use the <a href="#">customers.sql</a> file provided.

## Important!
Check the [databasefiles/db.php]() file and ensure that database set up conforms with the details in the file.

## Usage

On your favourite web broswer, enter the link [http://localhost/web/]() to view the web application.

You can add your own data to the database table and see the output on pressing the <a>GENERATE PDFs</a> button.
Have fun!

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT]()

## Project status
The required functions have been implemented. Other functionalities e.g appending data are welcome.
