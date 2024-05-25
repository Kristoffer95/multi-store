'use client';

import { Button } from '../ui/button';

function LogoutButton({ signOut }: { signOut: () => void }) {
  return (
    <Button variant='ghost' onClick={() => signOut()}>
      Logout
    </Button>
  );
}

export default LogoutButton;
