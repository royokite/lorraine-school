import React, {useState} from "react";

function LoginForm() {
    const[username, setUsername] = useState("")
    const[password, setPassword] = useState("")

    function handleSubmit(e) {
        e.preventDefault();
        fetch("/login", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({ username, password })
        })
        .then((response) => {
            if(response.ok) {
                response.json().then((user) => console.log(user))
            } else {
                response.json().then((error) => console.log(error))
            }
        });
    } 

    return (
        <section className="grid justify-center">
            <form onSubmit={handleSubmit} className="w-auto">
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
                    <button type="submit">Login</button>
                </article>
            </form>
        </section>
    );

}

export default LoginForm;