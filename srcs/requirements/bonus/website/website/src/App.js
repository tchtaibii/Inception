import { BrowserRouter as Router, Routes, Route} from "react-router-dom";
import './App.css';
import Header from './components/header/header.js'
import Home from './components/home/home.js'
import About from './components/about/about.js'
import Git from './components/git/git.js'


function App() {
	return (
		<Router>
			<div className="App">
				<div className='container'>
					<Header />
					<Routes>
						<Route path='/' exact element={<Home/>} />
						<Route path='/about' element={<About/>} />
						<Route path='/get_in_touch' element={<Git/>} /> 
					</Routes>
				</div>
			</div>
		</Router>
	);
}

export default App;
