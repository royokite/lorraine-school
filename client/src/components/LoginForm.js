import React, {useState} from "react";

function LoginForm() {
    const[username, setUsername] = useState("")
    const[password, setPassword] = useState("")

    return (
        <form>
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
                <label htmlFor="password">Password</label>
                <input 
                    id="password"
                    type="password"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                />
            </article>
            <article>
                <button>Login</button>
            </article>
            <hr />
            <p>Don't have an account? &nbsp;<button>Sign Up</button></p>
        </form>
    );

}

export default LoginForm;