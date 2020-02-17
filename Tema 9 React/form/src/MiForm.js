import React from 'react';

function MiForm() {
	return (
		<form className='my-form text-left border col-6 m-auto m-2'>
      <div className='form-group'>
        <label for='name'>Nombre:</label>
        <input className="form-control" type='text' placeholder='Introduce tu nombre' id='name' />
        <small className='form-text text-muted'>Recuerda que tu nombre será público.</small>
      </div>
      <div className='form-group'>
        <label for='name'>Email:</label>
        <input className="form-control" type='email' placeholder='ejemplo@gmail.com' id='name' />
        <small className='form-text text-muted'>No se enviarán correos comerciales.</small>
      </div>
      <button className='btn btn-lg btn-primary'>Enviar</button>
		</form>
	);
}

export default MiForm;
