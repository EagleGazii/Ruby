
		<h2>How to install CleanEx app from GitHub</h2>
<ol>
	<li>Download or clone repository.</li>
<li>Run the following command: <code>composer install</code></li>
<li>Run the following command:</li>
<ol type= "a">
	<li>Linux and Mac : <code>cp .env.example .env</code></li>
	<li>Windows : <code>copy  .env.example .env</code></li>

</ol>
<li>Create the application key using this command: <code>php artisan key:generate</code></li>
<li>Install the npm modules: <code>npm install</code></li>
<li>Run npm: <code>npm run dev</code></li>
<li>Start the Laravel server: <code>php artisan serve</code></li>

</ol>
<p>Optional: You can run: <code>npm run watch </code> instead of the 6th step to keep building after every change.</p>









CleanEx

1.	Download or clone repository.
2.	Run the following command:
composer install
3.	Run the following command:
a.	Linux and Mac
cp .env.example .env
b.	Windows
copy  .env.example .env
4.	Create the application key using this command:
php artisan key:generate
5.	Install the npm modules:
npm install
6.	Run npm:
npm run dev
7.	Start the Laravel server:
php artisan serve

Optional: You can run: npm run watch instead of the 6th step to keep building after every change.
This project is with Turkish pdf. explainer but I will upload the English explainer in future.
