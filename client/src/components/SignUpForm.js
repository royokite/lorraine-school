import React, {useState} from "react";

function SignUpForm() {
    const[username, setUsername] = useState("")
    const[email, setEmail] = useState("")
    const[password, setPassword] = useState("")
    const[confirmPassword, setConfirmPassword] = useState("")
    
    return (
        <form className="bg-gradient-to-l hover:bg-gradient-to-r">
            <hr />
            <article>
                <label htmlFor="username">Username</label>
                <input 
                    id="username"
                    type="text" 
                    value={username}
                    onChange={(e) => setUsername(e.target.value)}
                />
            </article>
            <article>
                <label htmlFor="email">Email</label>
                <input 
                    id="email" 
                    type="email"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                />
            </article>
            <article>
                <label htmlFor="password">Password</label>
                <input 
                    id="password" 
                    type="password"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                />
            </article>
            <article>
                <label htmlFor="confirm_password">Confirm Password</label>
                <input 
                    id="confirm_password" 
                    type="confirm_password"
                    value={confirmPassword}
                    onChange={(e) => setConfirmPassword(e.target.value)}
                />
            </article>
            <article>
                <button>Sign Up</button>
            </article>
            <hr />
            <article>
                <p>Already have an account? &nbsp;<button>Login</button></p>                
            </article>
        </form>
    );

}

export default SignUpForm;