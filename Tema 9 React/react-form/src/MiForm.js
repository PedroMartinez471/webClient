import React from 'react';

class MiForm extends React.Component {
	constructor(props) {
		super(props);
	}

	render() {
		return (
			<div className='MiForm'>
				<Form>
					<Form.Group controlId='formName'>
						<Form.Control type='text' placeholder='Introduce tu nombre' />
						<Form.Text className='text-muted'>
							Recuerda que tu nombre será público.
						</Form.Text>
					</Form.Group>
				</Form>
			</div>
		);
	}
}

export default MiForm;
