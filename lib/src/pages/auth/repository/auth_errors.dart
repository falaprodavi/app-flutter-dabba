String authErrorsString(String? code) {
  switch (code) {
    case 'INVALID_CREDENTIALS':
      return 'E-mail e/ou senha inválidos';

    case 'INVALID_FULLNAME':
      return 'Nome inválido';

    case 'INVALID_PHONE':
      return 'Telefone inválido';

    case 'INVALID_CPF':
      return 'CPF inválido';

    case 'Invalid session token':
      return 'Token inválido';

    default:
      return 'Um erro indefinido ocorreu';
  }
}
