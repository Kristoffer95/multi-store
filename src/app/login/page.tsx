import { loginAction, signupAction } from '@/actions/auth';

export default function LoginPage() {
  return (
    <form className='flex flex-col max-w-[300px] mx-auto space-y-5'>
      <label htmlFor='email'>Email:</label>
      <input
        id='email'
        name='email'
        type='email'
        required
        defaultValue={'test@test.com'}
      />
      <label htmlFor='password'>Password:</label>
      <input
        id='password'
        name='password'
        type='password'
        required
        defaultValue={'Password!23'}
      />
      <div className='flex justify-between'>
        <button formAction={loginAction}>Log in</button>
        <button formAction={signupAction}>Sign up</button>
      </div>
    </form>
  );
}
