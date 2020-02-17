import React from 'react';
import './App.css';
import MiForm from './MiForm.js';
import { Form } from 'reactstrap';

class App extends React.Component {
	render() {
		return (
			<div className='App'>
				<h1>Registro</h1>
				<MiForm />
			</div>
		);
	}
}

export default App;
