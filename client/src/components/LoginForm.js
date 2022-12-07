import React, {useState} from "react";

function LoginForm({ onSelectForm, onLogin }) {
    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")
    const [errors, setErrors] = useState([]);
    const [isLoading, setIsLoading] = useState(false);

    function handleSubmit(e) {
        e.preventDefault();
        setIsLoading(true);
        fetch("/login", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({ username, password })
        })
        .then((response) => {
            setIsLoading(false);
            if(response.ok) {
                response.json().then((user) => onLogin(user))
            } else {
                response.json().then((error) => setErrors(error.error))
            }
        });
    } 

    return (
        <section className="grid justify-center">
            <form onSubmit={handleSubmit} className="w-auto p-6">
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
                    <button type="submit">{isLoading ? "Loading..." : "Login"}</button>
                </article>
                <article>
                    {errors}
                </article>
                <hr />
                <p className="mt-3">Don't have an account? <button onClick={() => onSelectForm(false)} className="float-right">Sign Up</button></p>   
            </form>
        </section>
    );

}

export default LoginForm;