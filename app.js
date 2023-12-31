import express from 'express';
import path from 'path';
import colors from 'colors';
import dotenv from 'dotenv';
import session from 'express-session';
import { fileURLToPath } from 'url';
import { router as frontPageRouter } from './routes/index.js';
import { router as loginPageRouter } from './routes/login.js';
import { router as registerPageRouter } from './routes/register.js';
import { router as aboutPageRouter } from './routes/about.js';
import { router as createPageRouter } from './routes/create_comic.js';
import { router as deleteCartRouter } from './routes/delete_from_cart.js';
import { router as comicRouter } from './routes/comic.js';
import { router as cartRouter } from './routes/cart.js';

const app = express();
dotenv.config();

// for body parser
app.use(express.urlencoded({ extended: false }));

// views and static paths
const viewsPath = path.join(fileURLToPath(new URL('.', import.meta.url)), 'views' );
const staticPath = path.join(fileURLToPath(new URL('.', import.meta.url)), 'public' );

// serve static files
app.use(express.static(staticPath));

// template engine
app.set('views', viewsPath);
app.set('view engine', 'ejs');

// session
app.use(session({
	secret: process.env.SESSION_SECRET,
	resave: true,
	saveUninitialized: true,
}));

// routers
app.use('/', frontPageRouter);
app.use('/login', loginPageRouter);
app.use('/register', registerPageRouter);
app.use('/about', aboutPageRouter);
app.use('/create_comic', createPageRouter); 
app.use('/delete_from_cart', deleteCartRouter);
app.use('/comic', comicRouter);
app.use('/cart', cartRouter )


// errors: page not found
app.use((req, res, next) => {
	const err = new Error('Page not found');
	err.status = 404;
	next(err);
});

// error handling middleware
app.use((err, req, res, next) => {
	res.status(err.status || 500);
	res.render('error', {
		message: err.message || 'Something went wrong',
		error: app.get('env') === 'development' ? err : {},
	});
});

// start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
	console.log(`Server is running on port ${PORT}...`.green.bold);
});

export default app;
